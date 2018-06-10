function train_word( wordName, numStates )
disp(['Training word: ' wordName]);
% read wav file and generate cepstrum
wav_file_name = ['training_words/' wordName '.wav'];
[y, fs] = audioread(wav_file_name);
observationVector = melcepst(y, fs, '', 22, floor(3*log(fs)), 128, 32);
%mfccs=melcepst ( y , 11025 , 'M' , 12, 24 , 256 , 192 )

% Training parameters
DIAG_COV = 1;   % Force use diagonal covariance matrices
QUIET = 1;      % Make training routines silent
N = numStates;  % Number of states per word model
% Transition matrix is more or less arbitrary and will not be estimated (too
% few utterances are available)
A = sparse(0.85*diag(ones(1,N))+0.15*diag(ones(1,N-1),1));
A(N,N) = 1;
NIT = 10;       % Number of EM iterations
p = size(observationVector, 2);
X = [];
st = [];
st = [st; size(X,1)+1];
X = [X; observationVector];
T = size(X,1);
% Training. Because there is very few available training data, the covariance
% matrices are diagonal and shared by all states of the word model (ie. all
% states have the same covariance matrix given by Sigma)
[my_mu,Sigma] = hmm_mint(X, st, N, DIAG_COV,QUIET);
Sigma = ones(N,1)*mean(Sigma);                       % Shares covariance
logl = zeros(1, NIT);
for n = 1:NIT
% Expectation step of the EM algorithm
[tmp, logl(n), gamma] = hmm_mest(X, st, A, my_mu, Sigma, QUIET);
% Unconstrained Maximization step of the EM algorithm
[my_mu, Sigma] = mix_par(X, gamma, DIAG_COV, QUIET);
% Modification of the EM Maximization due to the constraint that all
% covariance matrices are identical
Sigma = ones(N,1)*(sum((sum(gamma)'*ones(1,p)).*Sigma)/T);
end
my_sigma = Sigma(1,:);
% Write a separate mat file for each words model in subdirectory data
eval(['save hmm_model_files/' wordName ' my_mu my_sigma']);
end