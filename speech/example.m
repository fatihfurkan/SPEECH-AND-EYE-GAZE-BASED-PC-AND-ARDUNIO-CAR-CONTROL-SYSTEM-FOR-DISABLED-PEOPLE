function example

clear all;
close all;
clc;

 import java.awt.Robot;
import java.awt.event.*;
import java.awt.MouseInfo;

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
    count =0;
   robot.mouseRelease(InputEvent.BUTTON1_MASK);

end
if strcmpi('invalid',char(latest_gaze_data.LeftEye.GazePoint.Validity))
    disp('saððð'); 
        
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



end

