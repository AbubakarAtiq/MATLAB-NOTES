% to allow flow control in a program, certain relational and logical
% operators are necessary. They are shown below:
% Operator            Remarks
% <                       less than
% <=                      less than or equal
% >                       greater than
% >=                       greater than or equal
% ==                        equal
%~=                         not equal
% &                         and
% |                         or
% ~                         not
% Perhaps the most commonly used flow control statements are for and if.
% the for statement is used to create a loop or a repetitive procedure and has the general form
% for x=array
%        [command]
% end
% The if statement is used when certain conditions need to be met before an expression is executed.
% It  has the general form
% if expression
%     [commands if expression is True]
% else
%        [commands if expression is False]
% end
% for example, suppose we have an array y(x) and we want to determine the minimum value of y and its corresponding
% index x. This can be done by creating an M-file as shown here.
% This program finds the minimum y value and its corresponding x index
x=[1 2 3 4 5 6 7 8 9 10]; %the nth term in y
y=[3 9 12 44 66 33 6 7 ];
min1=y(1); for k = 1:10
    min2=y(k);
    if(min2<min1)
        min1=min2;
        xo=x(k);
    else
        min1=min1;
    end
end
diary
min1; xo;
diary off
