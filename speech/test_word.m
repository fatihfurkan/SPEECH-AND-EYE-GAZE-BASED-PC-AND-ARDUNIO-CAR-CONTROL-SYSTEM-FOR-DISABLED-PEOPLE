function [word] = test_word

% List of words we have already trained and have
% HMM model files in hmm_model_files directory.
trainedWords = {'aþaðý';
                'saða';
                'sola';
                'yukarý';
                'týkla';    
                'kapat';
                'klavyeyi_aç'
                    };

% read testing wav file and generate cepstrum
% wav_file_name = ['testing_words/' wordName '.wav'];
wav_file_name = ['C:/Users/Fatih Furkan/Documents/MATLAB/speech/result.wav'];
[y, fs] = audioread(wav_file_name);
observationVector = melcepst(y, fs, '', 22, floor(3*log(fs)), 128, 32);

%sound(y,fs);

% HMM Viterbi search
N = 56; %%% NUMBER OF TRAINING DATA
A = sparse(0.85*diag(ones(1,N))+0.15*diag(ones(1,N-1),1));
A(N,N) = 1;



x = '';
for w=1:N

    if w > 7
        x = '1';
    end
     if w > 14
        x = '2';
     end
     if w > 21
        x = '3';
     end
          
     if w > 28
        x = '4';
     end
     
      if w > 35
        x = '5';
      end
      if w > 42
        x = '6';
      end
      if w > 49
        x = '7';
     end
     
  tw = mod(w,7);
 if tw == 0
        tw = 7;
 end

    fileName = trainedWords{tw};

    modelFileName = ['C:/Users/Fatih Furkan/Documents/MATLAB/speech/hmm_model_files/' fileName x '.mat'];
    load(modelFileName);

    Sigma = ones(N,1) * my_sigma;

    % make viterbi search and obtain a similarity score
    score(w) = hmm_vit(observationVector, A, [1 zeros(1,N-1)], my_mu, Sigma, 1);
end  % for w=3:num...


% Word with max score is the best recognized word.
result = find(score >= max(score));

disp([result]);
result = mod(result,7);
 if result == 0
        result = 7;
 end


disp(['Recognized word is ' trainedWords{result}]);


word = trainedWords{result};
%Control(word);
end