function  Record
clear all;
close all;
clc;
recObj = audiorecorder(8000,8,1);
%get(recObj)
%recObj = audiorecorder;

disp(['Recording .....']);
recordblocking(recObj,3); % 3 second
disp(['Finished.']);
myrecord = getaudiodata(recObj);

Fs = 8000;
filename = 'C:/Users/Fatih Furkan/Documents/MATLAB/speech/test1.wav';

audiowrite(filename,myrecord,Fs);   
[y, Fs] = audioread(filename);


cutoff = 442/(Fs/2); % Set the frequency at which the attenuation begins.

result = filter(designfilt('lowpassfir','CutoffFrequency',cutoff,'FilterOrder',10),y); % result is the filtered version of y
%soundsc(result)
audiowrite(filename,result,Fs);


result = result(1:end,1)/max(result(1:end,1));

% do framing
f_d = 0.025;
f_size = round(f_d * Fs);
n = length(result);
n_f = floor(n/f_size);  %no. of frames
temp = 0;
for i = 1 : n_f
    
   frames(i,:) = result(temp + 1 : temp + f_size);
   temp = temp + f_size;
end

% silence removal based on max amplitude
m_amp = abs(max(frames,[],2)); % find maximum of each frame
id = find(m_amp > 0.03); % finding ID of frames with max amp > 0.03
fr_ws = frames(id,:); % frames without silence

% reconstruct signal


data_r = reshape(fr_ws',1,[]);
subplot(313)
plot(data_r); title('speech without silence');
hold on;
subplot(312)
plot(result,'r'); title('After noise Removal');

subplot(311)
plot(myrecord); title('Original Signal');
sound(data_r);

filename = 'C:/Users/Fatih Furkan/Documents/MATLAB/speech/result.wav';
audiowrite(filename,data_r,Fs);

%sound(result);
%subplot(211)
%plot(myrecord,'b-');
%subplot(212)
%plot(result);


disp([min(2*data_r)]);

%test_word();

end



