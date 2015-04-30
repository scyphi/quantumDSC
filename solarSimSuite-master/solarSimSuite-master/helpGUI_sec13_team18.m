function varargout = helpGUI_sec13_team18(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es): 
%  1. Ben Staniewicz bstaniew@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Michael Keller keller77@purdue.edu
%  2. Devashish Chopra chopra5@purdue.edu
%  3. Pradyuman Vig pvig@purdue.edu
%
%  Section #: 13     Team #: 18
%
%  Assignment: nanoHUB Simulation Suite
%
%  Academic Integrity Statement:
%       I/We have not used source code obtained from
%       any other unauthorized source, either modified
%       or unmodified.  Neither have I/we provided access
%       to my/our code to another. The project I/we am/are 
%       submitting is my/our own original work.
%
%  Program Description: This GUI displays particular messages to the user
%  when the user clicks the help button for different components on the GUI. This is
%  to guide the user and help them use our program and GUIs correctly and to full
%  potential and functionality. From this they can better understand how
%  each GUI and input functions. The message displayed changed based on the
%  string that is the input argument. 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%HELPGUI_SEC13_TEAM18 M-file for helpGUI_sec13_team18.fig
%      HELPGUI_SEC13_TEAM18, by itself, creates a new HELPGUI_SEC13_TEAM18 or raises the existing
%      singleton*.
%
%      H = HELPGUI_SEC13_TEAM18 returns the handle to a new HELPGUI_SEC13_TEAM18 or the handle to
%      the existing singleton*.
%
%      HELPGUI_SEC13_TEAM18('Property','Value',...) creates a new HELPGUI_SEC13_TEAM18 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to helpGUI_sec13_team18_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      HELPGUI_SEC13_TEAM18('CALLBACK') and HELPGUI_SEC13_TEAM18('CALLBACK',hObject,...) call the
%      local function named CALLBACK in HELPGUI_SEC13_TEAM18.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help helpGUI_sec13_team18

% Last Modified by GUIDE v2.5 14-Apr-2015 02:11:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @helpGUI_sec13_team18_OpeningFcn, ...
                   'gui_OutputFcn',  @helpGUI_sec13_team18_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
   warning('off','MATLAB:str2func:invalidFunctionName');
   gui_State.gui_Callback = str2func(varargin{1});
   warning('on','MATLAB:str2func:invalidFunctionName');
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before helpGUI_sec13_team18 is made visible.
function helpGUI_sec13_team18_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for helpGUI_sec13_team18
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% Set static text
if ~isempty(varargin)
    message = varargin{1};
    set(handles.help_st, 'String', message);
end

% UIWAIT makes helpGUI_sec13_team18 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = helpGUI_sec13_team18_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



% --- Executes on button press in close_pb.
function close_pb_Callback(hObject, eventdata, handles)
% hObject    handle to close_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close helpGUI_sec13_team18 %Close GUI