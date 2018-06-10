function mouseaction
clear all;
close all;
clc;

import java.awt.Robot;
import java.awt.event.*;
import java.awt.MouseInfo;

robot = Robot();
robot.mouseMove(1800, 1000); 


while(true)
 mouseX = MouseInfo.getPointerInfo().getLocation().getX(); %sola
 mouseY = MouseInfo.getPointerInfo().getLocation().getY();
 robot.mouseMove(mouseX - 3, mouseY); 
  pause(0.1);
 
 mouseX = MouseInfo.getPointerInfo().getLocation().getX(); %sola
 mouseY = MouseInfo.getPointerInfo().getLocation().getY();
  robot.mouseMove(mouseX + 3,  mouseY);  
 

end

  
end

