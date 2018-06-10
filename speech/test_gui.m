function [output] = test_gui(input)

trainedWords = {'aþaðý';
                'saða';
                'sola';
                'yukarý';
                'týkla';    
                'kapat'
                    };

wav_file_name = ['C:/Users/Fatih Furkan/Documents/MATLAB/speech/test/' input '.wav'];
disp(wav_file_name);
[y, fs] = audioread(wav_file_name);
observationVector = melcepst(y, fs, '', 22, floor(3*log(fs)), 128, 32);

N = 48; 
A = sparse(0.85*diag(ones(1,N))+0.15*diag(ones(1,N-1),1));
A(N,N) = 1;

x = '';
for w=1:N

    if w > 6
        x = '1';
    end
     if w > 12
        x = '2';
     end
     if w > 18
        x = '3';
     end
          
     if w > 24
        x = '4';
     end
     
      if w > 30
        x = '5';
      end
      if w > 36
        x = '6';
      end
      if w > 42
        x = '7';
     end
     
  tw = mod(w,6);
 if tw == 0
        tw = 6;
 end

    fileName = trainedWords{tw};

    modelFileName = ['C:/Users/Fatih Furkan/Documents/MATLAB/speech/hmm_model_files/' fileName x '.mat'];
    load(modelFileName);

    Sigma = ones(N,1) * my_sigma;
    score(w) = hmm_vit(observationVector, A, [1 zeros(1,N-1)], my_mu, Sigma, 1);
end 

result = find(score >= max(score));

disp([result]);
result = mod(result,6);
 if result == 0
        result = 6;
 end


disp(['Recognized word is ' trainedWords{result}]);


output = trainedWords{result};

end

