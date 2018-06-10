function  ardunio

%{
delete(instrfindall) 

disp(['Recording .....']);
pause(0.1);

s=serial('COM4','BaudRate', 9600, 'DataBits', 8);

fclose(s);
fopen(s);   

                    
disp(['Recording .....']);

arduniogui();
%}
%fprintf(s, 'a');

%HC-05 channel default is 1
b = Bluetooth('HC-05',1);
disp(['Recording .....']);
fopen(b);
disp(['Recording .....']);
%write and read function
fprintf(b, 'c');
Bluetooth_Read=fgets(b);
%close and clear
disp(['Recording .....']);
fclose(b);
clear b; 

end