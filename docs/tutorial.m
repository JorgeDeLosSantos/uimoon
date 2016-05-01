%% UIMOON 0.1.0 Tutorial
%
% <index.html *Index*>
% 
%% Creating a Frame
% 
% A Frame is the main container for a UIMOON application. Create 
% a frame is very simple, it's only necessary call the Frame 
% constructor with title and size parameters:
%
% 
import uimoon.core.*
app = Frame('Demo App',[300,200]);
%
%
%% Creating Layouts (BoxLayout)
%
% Create a BoxLayout object, add UIMOON controls to layout using the Add 
% method, and put this layout in a container using the SetLayout method.
