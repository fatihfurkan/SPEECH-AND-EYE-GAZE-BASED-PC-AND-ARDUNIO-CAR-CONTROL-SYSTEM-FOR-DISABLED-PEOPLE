function Control(word)


import java.awt.Robot;
import java.awt.event.*;
import java.awt.MouseInfo;

robot = Robot();



    mouseX = MouseInfo.getPointerInfo().getLocation().getX(); %sola
    mouseY = MouseInfo.getPointerInfo().getLocation().getY();
    
 if strcmpi('sola',word)
    robot.mouseMove(mouseX - 50, mouseY); 
    return;
 end
 
 if strcmpi('saða',word)
     robot.mouseMove(mouseX + 50,  mouseY);    
    return;
  end
  
   if strcmpi('yukarý',word)
      robot.mouseMove( mouseX,  mouseY - 50);   
      return;
   end
 
    if strcmpi('aþaðý',word)
       robot.mouseMove( mouseX,  mouseY + 50);
       return;
    end
    
    if strcmpi('týkla',word)
     robot.mousePress(InputEvent.BUTTON1_MASK);  %LEFT DOUBLE CLICK
     robot.mouseRelease(InputEvent.BUTTON1_MASK);
     pause(0.1);
     robot.mousePress(InputEvent.BUTTON1_MASK);
     robot.mouseRelease(InputEvent.BUTTON1_MASK);
     return;
    end

 if strcmpi('klavyeyi_aç',word)
      java.lang.Runtime.getRuntime().exec('cmd /c osk');
      return;
 end
 
  if strcmpi('kapat',word)
      robot.keyPress(KeyEvent.VK_ALT);  % ALT + F4
      robot.keyPress(KeyEvent.VK_F4);
      robot.keyRelease(KeyEvent.VK_ALT);
      robot.keyRelease(KeyEvent.VK_F4);
      return;
  end
 
  



 %{
   if strcmpi('wordpadi_aç',word)
      java.lang.Runtime.getRuntime().exec('cmd /c write');
      return;
    end
robot.mousePress(InputEvent.BUTTON3_DOWN_MASK);  %RIGHT CLICK
robot.mouseRelease( InputEvent.BUTTON3_DOWN_MASK );

	
robot.keyPress(KeyEvent.VK_ALT);  % ALT + F4
robot.keyPress(KeyEvent.VK_F4);
robot.keyRelease(KeyEvent.VK_ALT);
robot.keyRelease(KeyEvent.VK_F4);
        
        
robot.keyPress(KeyEvent.VK_WINDOWS); % WINDOWS + TAB
robot.keyPress(KeyEvent.VK_TAB);
robot.keyRelease(KeyEvent.VK_WINDOWS);
robot.keyRelease(KeyEvent.VK_TAB);
%}
end

