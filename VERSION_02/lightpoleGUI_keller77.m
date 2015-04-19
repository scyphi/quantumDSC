function varargout = lightpoleGUI_keller77(varargin)
%LIGHTPOLEGUI_KELLER77 M-file for lightpoleGUI_keller77.fig
%      LIGHTPOLEGUI_KELLER77, by itself, creates a new LIGHTPOLEGUI_KELLER77 or raises the existing
%      singleton*.
%
%      H = LIGHTPOLEGUI_KELLER77 returns the handle to a new LIGHTPOLEGUI_KELLER77 or the handle to
%      the existing singleton*.
%
%      LIGHTPOLEGUI_KELLER77('Property','Value',...) creates a new LIGHTPOLEGUI_KELLER77 using the
%      given property value pairs. Unrecognized properties are passed via
%      varargin to lightpoleGUI_keller77_OpeningFcn.  This calling syntax produces a
%      warning when there is an existing singleton*.
%
%      LIGHTPOLEGUI_KELLER77('CALLBACK') and LIGHTPOLEGUI_KELLER77('CALLBACK',hObject,...) call the
%      local function named CALLBACK in LIGHTPOLEGUI_KELLER77.M with the given input
%      arguments.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help lightpoleGUI_keller77

% Last Modified by GUIDE v2.5 07-Apr-2015 01:46:40

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @lightpoleGUI_keller77_OpeningFcn, ...
                   'gui_OutputFcn',  @lightpoleGUI_keller77_OutputFcn, ...
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


% --- Executes just before lightpoleGUI_keller77 is made visible.
function lightpoleGUI_keller77_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for lightpoleGUI_keller77
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes lightpoleGUI_keller77 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = lightpoleGUI_keller77_OutputFcn(hObject, eventdata, handles)
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
helpGUI_sec13_team18

% --- Executes on button press in mainMenu_pb.
function mainMenu_pb_Callback(hObject, eventdata, handles)
% hObject    handle to mainMenu_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
nanohubGUI_sec13_team18
close lightpoleGUI_keller77

% --- Executes on button press in closeGUI_pb.
function closeGUI_pb_Callback(hObject, eventdata, handles)
% hObject    handle to closeGUI_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close lightpoleGUI_keller77

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



function poleDiameter_et_Callback(hObject, eventdata, handles)
% hObject    handle to poleDiameter_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of poleDiameter_et as text
%        str2double(get(hObject,'String')) returns contents of poleDiameter_et as a double


% --- Executes during object creation, after setting all properties.
function poleDiameter_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to poleDiameter_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function poleHieght_et_Callback(hObject, eventdata, handles)
% hObject    handle to poleHieght_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of poleHieght_et as text
%        str2double(get(hObject,'String')) returns contents of poleHieght_et as a double


% --- Executes during object creation, after setting all properties.
function poleHieght_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to poleHieght_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zipcode_et_Callback(hObject, eventdata, handles)
% hObject    handle to zipcode_et (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zipcode_et as text
%        str2double(get(hObject,'String')) returns contents of zipcode_et as a double


% --- Executes during object creation, after setting all properties.
function zipcode_et_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zipcode_et (see GCBO)
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
helpGUI_sec13_team18

% --- Executes on button press in zipCodeHelp_pb.
function zipCodeHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to zipCodeHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18

% --- Executes on button press in poleDiameterHelp_pb.
function poleDiameterHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to poleDiameterHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18

% --- Executes on button press in poleHieghtHelp_pb.
function poleHieghtHelp_pb_Callback(hObject, eventdata, handles)
% hObject    handle to poleHieghtHelp_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
helpGUI_sec13_team18

% --- Executes on button press in compute_pb.
function compute_pb_Callback(hObject, eventdata, handles)
% hObject    handle to compute_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
zip = str2num(get(handles.zipcode_et, 'String'));
data = csvread('zipcode.csv');
height = str2num(get(handles.poleHieght_et, 'String'));
diameter = str2num(get(handles.poleDiameter_et, 'String'));

area = height * diameter;
day = get(handles.day_pm, 'Value') - 1;
month = get(handles.month_pm, 'Value') - 1;
[row, col] = find(data(:,1) == zip);

latitude = data(row, 2);
time = 0:23;
efficiency = .14;
day = dayYear(month, day);

for k = 0:23
    energy(k + 1) = area * solarInsolation(latitude, 90, k, day) * efficiency;
    if energy(k + 1) < 0
        energy(k + 1) = 0;
    end
end


plot(handles.dayEnergy_ax, time, energy,'g');
axis([0 24 0 1.1 * max(energy)]) 
set(handles.dayEnergy_ax,'xtick',0:2:24);
xlabel(handles.dayEnergy_ax,'Time (hours)')
ylabel(handles.dayEnergy_ax,'Power Generation (kW)')

for k = 0:11
    energy = [];
    for j = 0:23
        energy(j + 1) = efficiency * area * solarInsolation(latitude, 90, j, 30 * k + 15);
        if energy(j + 1) < 0
            energy(j + 1) = 0;
        end
    end
    avrgEnergy(k + 1) = mean(energy);
end

time = 1:12;
daysInMonth = [31 28 31 30 31 30 31 31 30 31 30 31];
avrgEnergy = avrgEnergy .* daysInMonth;
plot(handles.yearEnergy_ax, time, avrgEnergy);
axis([1 12 0 1.1 * (max(avrgEnergy))]) ;
set(handles.yearEnergy_ax,'xtick',1:12);
xlabel(handles.yearEnergy_ax,'Month of the year');
ylabel(handles.yearEnergy_ax,'Total Monthly Energy Generation(kWh)');









% --- Executes on button press in updateLocation_pb.
function updateLocation_pb_Callback(hObject, eventdata, handles)
% hObject    handle to updateLocation_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in reset_pb.
function reset_pb_Callback(hObject, eventdata, handles)
% hObject    handle to reset_pb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)