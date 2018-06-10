function varargout = arduniogui(varargin)

 disp(['...']);   

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @arduniogui_OpeningFcn, ...
                   'gui_OutputFcn',  @arduniogui_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
    
   deneme('ee');
end
% End initialization code - DO NOT EDIT


% --- Executes just before arduniogui is made visible.
function arduniogui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to arduniogui (see VARARGIN)

% Choose default command line output for arduniogui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes arduniogui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = arduniogui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;




%{

% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
x = get(handles.text3,'String');
 if strcmpi('Static Text',x)
    disp(['...']);   
    a = 4;
 end
 

 
pos = get(hObject, 'currentpoint'); % get mouse location on figure
x = pos(1); y = pos(2); % assign locations to x and y
set(handles.text3, 'string', ['x loc:' num2str(x)]); % update text for x loc
set(handles.text4, 'string', ['y loc:' num2str(y)]); % update text for y loc

%}
function deneme(hObject, eventdata, handles)
  disp('dd');

    
  import java.awt.Robot;
import java.awt.event.*;
import java.awt.MouseInfo;
      
  b = Bluetooth('HC-05',1);
 disp(['Recording .....']);
  fopen(b);
   
   
%write and read function
 while(true)   
     
     pause(1.5);
    mouseX = MouseInfo.getPointerInfo().getLocation().getX(); %sola
    mouseY = MouseInfo.getPointerInfo().getLocation().getY();
   
    disp(mouseX);
    
       disp(mouseY);
 
    if mouseX <335 %sol
        fprintf(b, 'd');
    end
    
    if mouseX >1568%sað
        fprintf(b, 'b');
    end
    
    if mouseX <1568 && mouseX >335 && mouseY<416 %ileri
        fprintf(b, 'a');
    end
    
    if mouseX <1568 && mouseX >335 && mouseY>416 && mouseY<764 %geri
        fprintf(b, 'e');
    end
    
    if mouseX <960 && mouseX >335 && mouseY>764%dur
        fprintf(b, 'c');
    end
    
 %    if mouseX <1568 && mouseX >960 && mouseY>764%kapat
  %      fprintf(b, 'c');
   %    fclose(b);
    %   clear b; 
    %end
    
 end

%Bluetooth_Read=fgets(b);
%close and clear

    

    

 
