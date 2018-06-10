function varargout = speechcontrolcar(varargin)
% SPEECHCONTROLCAR MATLAB code for speechcontrolcar.fig
%      SPEECHCONTROLCAR, by itself, creates a new SPEECHCONTROLCAR or raises the existing
%      singleton*.
%
%      H = SPEECHCONTROLCAR returns the handle to a new SPEECHCONTROLCAR or the handle to
%      the existing singleton*.
%
%      SPEECHCONTROLCAR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SPEECHCONTROLCAR.M with the given input arguments.
%
%      SPEECHCONTROLCAR('Property','Value',...) creates a new SPEECHCONTROLCAR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before speechcontrolcar_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to speechcontrolcar_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help speechcontrolcar

% Last Modified by GUIDE v2.5 24-Apr-2018 23:05:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @speechcontrolcar_OpeningFcn, ...
                   'gui_OutputFcn',  @speechcontrolcar_OutputFcn, ...
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


% --- Executes just before speechcontrolcar is made visible.
function speechcontrolcar_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to speechcontrolcar (see VARARGIN)

% Choose default command line output for speechcontrolcar
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes speechcontrolcar wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = speechcontrolcar_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
x = get(handles.text2,'String');
 if strcmpi('Click and connect bluetooth',x)  % 1 kez girecek bluetootha baglanacak
 
     
  
  b = Bluetooth('HC-05',1);
   set(handles.text2, 'string', 'Please wait');
   fopen(b);
  
     set(handles.pushbutton1,'String','Push to talk');
 end
 
recObj = audiorecorder(8000,8,1);
%get(recObj)
%recObj = audiorecorder;
set(handles.text2,'String','Recording .....');
recordblocking(recObj,3); % 3 second

set(handles.text2,'String','Finished.');

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

filename = 'C:/Users/Fatih Furkan/Documents/MATLAB/speech/result.wav';
audiowrite(filename,data_r,Fs);

word = test_word();

disp([word]);
set(handles.text2,'String',word);





if strcmpi('yukarý',word)
fprintf(b, 'a');
end
 
if strcmpi('sola',word)
 fprintf(b, 'd');
end
 
  
if strcmpi('saða',word)
 fprintf(b, 'b');
end
 
if strcmpi('aþaðý',word)
 fprintf(b, 'e');
end
 
if strcmpi('kapat',word)
 fprintf(b, 'c');
end
 

