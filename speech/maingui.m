function varargout = maingui(varargin)

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @maingui_OpeningFcn, ...
                   'gui_OutputFcn',  @maingui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...   
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before maingui is made visible.
function maingui_OpeningFcn(hObject, eventdata, handles, varargin)

handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = maingui_OutputFcn(hObject, eventdata, handles) 

varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

recObj = audiorecorder(8000,8,1);
%get(recObj)
%recObj = audiorecorder;
set(handles.text3,'String','Recording .....');
recordblocking(recObj,3); % 3 second

set(handles.text3,'String','Finished.');

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
%subplot(313)
axes(handles.axes1);
plot(data_r); title('speech without silence');
%hold on;
%subplot(312)
axes(handles.axes2);
plot(result,'r'); title('After noise Removal');

%subplot(311)
axes(handles.axes3);
plot(myrecord); title('Original Signal');
sound(data_r);

filename = 'C:/Users/Fatih Furkan/Documents/MATLAB/speech/result.wav';
audiowrite(filename,data_r,Fs);

r = randi([1 6],1,1)

if(r==1)
    set(handles.text4,'String','Happiness');
end
if(r==2)
    set(handles.text4,'String','Suprise');
end
if(r==3)
    set(handles.text4,'String','Anger');
end
if(r==4)
    set(handles.text4,'String','Fear');
end
if(r==5)
    set(handles.text4,'String','Disgust');
end
if(r==6)
    set(handles.text4,'String','Sadness');
end

word = test_word();
Control(word);
disp([word]);
set(handles.text3,'String',word);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)


 import java.awt.Robot;
import java.awt.event.*;
import java.awt.MouseInfo;

set(handles.text3,'String','Started');
robot = Robot();
addpath(genpath('C:\Users\Fatih Furkan\Documents\MATLAB\eyetracker'))
tobii = EyeTrackingOperations();

found_eyetrackers = tobii.find_all_eyetrackers()

my_eyetracker = found_eyetrackers(1)
count =0;

while(true)
my_eyetracker.get_gaze_data();
pause(0.3);
 gaze_data = my_eyetracker.get_gaze_data();
latest_gaze_data = gaze_data(end);


        
if strcmpi('valid',char(latest_gaze_data.LeftEye.GazePoint.Validity))
    disp('Ladsasdsade');
     if count==1
         robot.mouseRelease(InputEvent.BUTTON1_MASK);
     end
    count =0;
   

end
if strcmpi('invalid',char(latest_gaze_data.LeftEye.GazePoint.Validity))
    disp('soll'); 
        
    if count==0
    robot.mousePress(InputEvent.BUTTON1_MASK);
     robot.mouseRelease(InputEvent.BUTTON1_MASK);
     pause(0.1);
       robot.mousePress(InputEvent.BUTTON1_MASK);
     robot.mouseRelease(InputEvent.BUTTON1_MASK);
     pause(0.1);
     robot.mousePress(InputEvent.BUTTON1_MASK);
    end       
    count=1;
end

if strcmpi('invalid',char(latest_gaze_data.RightEye.GazePoint.Validity))
    
    disp('saðð týkla');
   robot.mousePress(InputEvent.BUTTON3_MASK);  %LEFT DOUBLE CLICK
     robot.mouseRelease(InputEvent.BUTTON3_MASK);
 
end



my_eyetracker.stop_gaze_data()

end



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
speechcontrolcar



% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
arduniogui
