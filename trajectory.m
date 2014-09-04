function varargout = trajectory(varargin)
% TRAJECTORY MATLAB code for trajectory.fig
%      TRAJECTORY, by itself, creates a new TRAJECTORY or raises the existing
%      singleton*.
%
%      H = TRAJECTORY returns the handle to a new TRAJECTORY or the handle to
%      the existing singleton*.
%
%      TRAJECTORY('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRAJECTORY.M with the given input arguments.
%
%      TRAJECTORY('Property','Value',...) creates a new TRAJECTORY or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trajectory_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trajectory_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trajectory

% Last Modified by GUIDE v2.5 03-Jun-2014 19:05:33

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trajectory_OpeningFcn, ...
                   'gui_OutputFcn',  @trajectory_OutputFcn, ...
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


% --- Executes just before trajectory is made visible.
function trajectory_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trajectory (see VARARGIN)
ax = axes('XLim',[-2 2],'YLim',[-2 10],'ZLim',[-1.5 1.5]);
view(3);
grid on;
axis equal

[xc yc zc] = cylinder([0.1 0.0]); %cone
[x  y  z ] = cylinder([0.2 0.2]);

h(1) = surface( xc,     zc,              -yc,'FaceColor', 'red');
h(2) = surface( z,      y,               0.5*x,'FaceColor', 'blue');
h(3) = surface( -z,     y,               0.5*x,'FaceColor', 'yellow');
h(4) = surface( x,      -1.5*z,          0.5*y,'FaceColor', 'red');
h(5) = surface( xc,     (1.5*yc)-1.3,    z,'FaceColor', 'blue');

%Create group object and parent surfaces
t = hgtransform('Parent', ax);
set(h,'Parent', t);

%Set the renderer to OpenGL and update the display
set(gcf,'Renderer','opengl')


%Rz = makehgtform('xrotate',-0.5*pi);

%Concatenate the transforms and set the transform Matrix property
%set(t,'Matrix',Rz)

drawnow
lon = [0 1 2 3 4 5 6 7 8 9 10];
lat = [0 1 1 1 0 0 0 -1 -1 -1 -1];
bea = [0 -0.5 0 0 0.5 0 0 0.5 0 0 0];

for i = 1:numel(lat)
    
    trans = makehgtform('translate', [lat(i) lon(i) 0]);
    rotz = makehgtform('zrotate', bea(i));
    set(t,'Matrix', trans*rotz);
    drawnow
    
end

pause(1)



% Choose default command line output for trajectory
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trajectory wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trajectory_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
