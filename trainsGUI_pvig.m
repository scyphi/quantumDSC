function varargout = trainsGUI_pvig(varargin)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
%  ENGR 13200 Spring 2015
%  Programmer(s) and Purdue Email Address(es): 
%  1. Ben Staniewicz bstaniew@purdue.edu
%  2. Pradyuman Vig pvig@purdue.edu
%
%  Other Contributor(s) and Purdue Email Address(es):
%  1. Michael Keller keller77@purdue.edu
%  2. Devashish Chopra chopra5@purdue.edu
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
%  Program Description: This set of GUIs can be accessed by typing in the 
%  file name. This will open up a main menu (this GUI). This GUI has links
%  to access the 4 sub GUIs, a help page, and a references page. Each of
%  the sub GUIs is a different application of solar panels. The 4
%  applications are as follows: use on the roof of a train, solar panels in
%  roadways, around lightpoles, and ones that rotate and face towards the
%  sun.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%TRAINSGUI_PVIG M-file for trainsGUI_pvig.fig
%      TRAINSGUI_PVIG, by itself, creates a new TRAINSGUI_PVIG or raises the existing
%      singleton*.
%
%      H = TRAINSGUI_PVIG returns the handle to a new TRAINSGUI_PVIG or the handle to
%      the existing singleton*.
%
%      TRAINSGUI_PVIG('Property','Value',...) creates a new TRAINSGUI_PVIG using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to trainsGUI_pvig_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      TRAINSGUI_PVIG('CALLBACK') and TRAINSGUI_PVIG('CALLBACK',hObject,...) call the
%      local function named CALLBACK in TRAINSGUI_PVIG.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trainsGUI_pvig

% Last Modified by GUIDE v2.5 14-Apr-2015 03:41:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trainsGUI_pvig_OpeningFcn, ...
                   'gui_OutputFcn',  @trainsGUI_pvig_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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
 

% --- Executes just before trainsGUI_pvig is made visible.
function trainsGUI_pvig_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for trainsGUI_pvig
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trainsGUI_pvig wait for user response (see UIRESUME)
% uiwait(handles.figure1);

if(~isempty(varargin))
    data = varargin{1};
    if(data(1) >= 0)
        set(handles.enterStartZip_et, 'String', num2str(data(1)));
    end
    set(handles.day_pm, 'Value', data(2));
    set(handles.month_pm, 'Value', data(3));
end

% --- Outputs from this function are returned to the command line.
function varargout = trainsGUI_pvig_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in moreInfo_pb.
function moreInfo_pb_Callback(hObject, eventdata, handles)
% hObject    handle to moreInfo_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('This GUI takes a number of inputs regarding a trains journey and outputs a graph of energy generation throught the trip and year.')

% --- Executes on button press in mainMenu_pb.
function mainMenu_pb_Callback(hObject, eventdata, handles)
% hObject    handle to mainMenu_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if str2num(get(handles.enterEndZip_et,'String'))
    zipcode = str2num(get(handles.enterEndZip_et,'String'));
else
    zipcode = str2num(get(handles.enterStartZip_et,'String'));
end

if(isempty(zipcode))
    zipcode = -1;
end
day = get(handles.day_pm, 'Value');
month = get(handles.month_pm, 'Value');
nanohubGUI_sec13_team18([zipcode day month]);
close trainsGUI_pvig


% --- Executes on button press in closeGUI_pb.
function closeGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to closeGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close trainsGUI_pvig

% --- Executes on selection change in day_pm.
function day_pm_Callback(hObject, eventdata, handles)
% hObject    handle to day_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns day_pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from day_pm


% --- Executes during object creation, after setting all properties.
function day_pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to day_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in month_pm.
function month_pm_Callback(hObject, eventdata, handles)
% hObject    handle to month_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns month_pm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from month_pm


% --- Executes during object creation, after setting all properties.
function month_pm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to month_pm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function enterStartZip_et_Callback(hObject, eventdata, handles)
% hObject    handle to enterStartZip_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterStartZip_et as text
%        str2double(get(hObject,'String')) returns contents of enterStartZip_et as a double


% --- Executes during object creation, after setting all properties.
function enterStartZip_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterStartZip_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in dateHelp_pb.
function dateHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to dateHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('Enter the current date through the drop down menus. e.g (12) and (January)')

% --- Executes on button press in startZipHelp_pb.
function startZipHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to startZipHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('Enter the 5 digit zip code that your train started at. e.g (47906)')

% --- Executes on button press in compute_pb.
function compute_pb_Callback(hObject, eventdata, handles)
% hObject    handle to compute_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end_zip = str2double(get(handles.enterEndZip_et,'String'));
start_zip = str2double(get(handles.enterStartZip_et,'String'));
data = csvread('zipcode.csv');


if length(strfind(get(handles.startTime_et,'String'), ':')) == 1
    num1 = str2double(strsplit(get(handles.startTime_et,'String'), ':'));
    start_time =  num1(1) + num1(2)/60;
else
    start_time = str2num(get(handles.startTime_et,'String'));
end
if length(strfind(get(handles.endTime_et,'String'), ':')) == 1
    num2 = str2double(strsplit(get(handles.endTime_et,'String'), ':'));
    end_time =  num2(1) + num2(2)/60;
else
    end_time = str2num(get(handles.endTime_et,'String'));
end

day = get(handles.day_pm, 'Value') - 1;
month = get(handles.month_pm, 'Value') - 1;
[rowStart, colStart] = find(data(:,1) == start_zip);
[rowEnd, colEnd] = find(data(:,1) == end_zip);

daysOfMonth = [31 28 31 30 31 30 31 31 30 31 30 31];


%%%%%%%%%%%%%%%%INPUT VALIDATION%%%%%%%%%%%%%%%%%%%%%%%%%%
if isempty(start_zip) | isempty(end_zip)
    errorGUI_sec13_team18('Error! All fields must have entries!');
elseif isempty(start_time) | isempty(end_time) | ~day | ~month
    errorGUI_sec13_team18('Error! All fields must have entries!');
elseif ~isscalar(start_zip) | ~isscalar(end_zip)
    errorGUI_sec13_team18('Error! Zipcodes must be scalar!');
elseif isempty(rowStart) | isempty(colStart)
    errorGUI_sec13_team18('Error! Starting zip code is invalid. If zip code is valid, please enter a 5 digit zip code of a nearby major city.');
elseif isempty(rowEnd) | isempty(colEnd) | ~isscalar(rowEnd) | ~isscalar(colEnd)
    errorGUI_sec13_team18('Error! Ending zip code is invalid. If zip code is valid, please enter a 5 digit zip code of a nearby major city.');
elseif length(strfind(get(handles.startTime_et,'String'), ':')) > 1
    errorGUI_sec13_team18('Error! Make sure your start time is in the correct format (XX:XX)');
elseif length(strfind(get(handles.endTime_et,'String'), ':')) > 1
    errorGUI_sec13_team18('Error! Make sure your end time is in the correct format (XX:XX)');
elseif start_time > 24 | end_time > 24 | end_time < 0 | start_time < 0
    errorGUI_sec13_team18('Error! Please enter times in 24 hour format (XX:XX)');
elseif start_time == end_time
    errorGUI_sec13_team18('Error! Starting and ending zip codes are the same. Enter in different zipcodes for start and end.');
elseif start_time > end_time
    errorGUI_sec13_team18('Error! Please enter a start time that is smaller than the end time (in 24 hour format).');
elseif daysOfMonth(month) < day
    errorGUI_sec13_team18('Error! The day is not a day of the chosen month!');
else




time = 0:23;
efficiency = .14;
tics = linspace(start_time, end_time, 10);
a = 0;
area = 60 * 10 * 10;
z = 1;
latStart = data(rowStart, 2);
latEnd = data(rowEnd, 2);
latitude = latStart:((latEnd-latStart)/9):latEnd;

for k = 1:10
    energy(k) = area * solarInsolation(latitude(k), 0, tics(k), dayYear(month,day)) * efficiency;
end
plot(handles.dayEnergy_ax, tics, energy);
axis([start_time end_time 0 1.1 * max(energy)]) 
set(handles.dayEnergy_ax,'xtick',0:2:24);
xlabel(handles.dayEnergy_ax,'Hour of the Day')
ylabel(handles.dayEnergy_ax,'Power Generation (kW)')

for j = 0:11
    energy = [];
    for k = 1:10
        energy(k) = area * solarInsolation(latitude(k), 0, k, 30 * j + 15) * efficiency;
    end
    avrgEnergy(j + 1) = mean(energy);
end

time = 1:12;
daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
avrgEnergy = avrgEnergy .* daysInMonth;
plot(handles.yearEnergy_ax, time, avrgEnergy);
axis([1 12 0 1.1 * (max(avrgEnergy))]) ;
set(handles.yearEnergy_ax,'xtick',1:12);
xlabel(handles.yearEnergy_ax,'Month of the Year');
ylabel(handles.yearEnergy_ax,'Total Monthly Energy Generation (kWh)');
end

% --- Executes on button press in reset_pb.
function reset_pb_Callback(hObject, eventdata, handles)
% hObject    handle to reset_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function enterEndZip_et_Callback(hObject, eventdata, handles)
% hObject    handle to enterEndZip_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of enterEndZip_et as text
%        str2double(get(hObject,'String')) returns contents of enterEndZip_et as a double


% --- Executes during object creation, after setting all properties.
function enterEndZip_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enterEndZip_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in endZipHelp_pb.
function endZipHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to endZipHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('Enter the 5 digit postal zip code that the train ends at. E.g(47906)')


function endTime_et_Callback(hObject, eventdata, handles)
% hObject    handle to endTime_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of endTime_et as text
%        str2double(get(hObject,'String')) returns contents of endTime_et as a double


% --- Executes during object creation, after setting all properties.
function endTime_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to endTime_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in endTimeHelp_pb.
function endTimeHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to endTimeHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('Enter the end time( in 24 hour format) of your trip. E.g(18:00)')


function startTime_et_Callback(hObject, eventdata, handles)
% hObject    handle to startTime_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of startTime_et as text
%        str2double(get(hObject,'String')) returns contents of startTime_et as a double


% --- Executes during object creation, after setting all properties.
function startTime_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startTime_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in startTimeHelp_pb.
function startTimeHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to startTimeHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18('Enter the time of day (in 24 hour format). E.g(14:00)')