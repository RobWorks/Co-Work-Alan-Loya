function varargout = BAXTERGUIDE(varargin)
% BAXTERGUIDE MATLAB code for BAXTERGUIDE.fig
%      BAXTERGUIDE, by itself, creates a new BAXTERGUIDE or raises the existing
%      singleton*.
%
%      H = BAXTERGUIDE returns the handle to a new BAXTERGUIDE or the handle to
%      the existing singleton*.
%
%      BAXTERGUIDE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BAXTERGUIDE.M with the given input arguments.
%
%      BAXTERGUIDE('Property','Value',...) creates a new BAXTERGUIDE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BAXTERGUIDE_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BAXTERGUIDE_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BAXTERGUIDE

% Last Modified by GUIDE v2.5 03-Dec-2018 16:32:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BAXTERGUIDE_OpeningFcn, ...
                   'gui_OutputFcn',  @BAXTERGUIDE_OutputFcn, ...
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


% --- Executes just before BAXTERGUIDE is made visible.
function BAXTERGUIDE_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BAXTERGUIDE (see VARARGIN)

% Choose default command line output for BAXTERGUIDE
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BAXTERGUIDE wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BAXTERGUIDE_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2



function xref_Callback(hObject, eventdata, handles)
% hObject    handle to xref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xref as text
%        str2double(get(hObject,'String')) returns contents of xref as a double


% --- Executes during object creation, after setting all properties.
function xref_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yref_Callback(hObject, eventdata, handles)
% hObject    handle to yref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yref as text
%        str2double(get(hObject,'String')) returns contents of yref as a double


% --- Executes during object creation, after setting all properties.
function yref_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zref_Callback(hObject, eventdata, handles)
% hObject    handle to zref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zref as text
%        str2double(get(hObject,'String')) returns contents of zref as a double


% --- Executes during object creation, after setting all properties.
function zref_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zref (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4


% --- Executes on button press in radiobutton5.
function radiobutton5_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton5


% --- Executes on button press in radiobutton6.
function radiobutton6_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton6


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
switch get(handles.popupmenu1,'Value')
    case 1
    S.Option = 0;
    case 2
    S.Option = 1;
    case 3
    S.Option = 2;    
    case 4
    S.Option = 3;
    case 5
    S.Option = 4;
    case 6
    S.Option = 5;
    case 7
    S.Option = 6;
    case 8
    S.Option = 7;
    otherwise
end
set(handles.popupmenu1,'UserData',S);
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pid_Callback(hObject, eventdata, handles)
% hObject    handle to pid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pid as text
%        str2double(get(hObject,'String')) returns contents of pid as a double


% --- Executes during object creation, after setting all properties.
function pid_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function kd_Callback(hObject, eventdata, handles)
% hObject    handle to kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of kd as text
%        str2double(get(hObject,'String')) returns contents of kd as a double


% --- Executes during object creation, after setting all properties.
function kd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ki_Callback(hObject, eventdata, handles)
% hObject    handle to ki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ki as text
%        str2double(get(hObject,'String')) returns contents of ki as a double


% --- Executes during object creation, after setting all properties.
function ki_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ki (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
global simOut 
switch get(handles.popupmenu2,'Value')
    case 1
        Time = simOut.DATA(:,1);
        Dat1 = simOut.DATA(:,2);
        Dat2 = simOut.DATA(:,3);
        Dat3 = simOut.DATA(:,4);
        Dat4 = simOut.DATA(:,5);
        Dat5 = simOut.DATA(:,6);
        Dat6 = simOut.DATA(:,7);
        Dat7 = simOut.DATA(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7);
    case 2
        Time = simOut.DATA1(:,1);
        Dat1 = simOut.DATA1(:,2);
        Dat2 = simOut.DATA1(:,3);
        Dat3 = simOut.DATA1(:,4);
        Dat4 = simOut.DATA1(:,5);
        Dat5 = simOut.DATA1(:,6);
        Dat6 = simOut.DATA1(:,7);
        Dat7 = simOut.DATA1(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7); 
    case 3
        Time = simOut.DATA2(:,1);
        Dat1 = simOut.DATA2(:,2);
        Dat2 = simOut.DATA2(:,3);
        Dat3 = simOut.DATA2(:,4);
        Dat4 = simOut.DATA2(:,5);
        Dat5 = simOut.DATA2(:,6);
        Dat6 = simOut.DATA2(:,7);
        Dat7 = simOut.DATA2(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7);  
    case 3
        %cla reset;
        %Dat = evalin('base','DATA3');
        Time = simOut.DATA3(:,1);
        Dat1 = simOut.DATA3(:,2);
        Dat2 = simOut.DATA3(:,3);
        Dat3 = simOut.DATA3(:,4);
        Dat4 = simOut.DATA3(:,5);
        Dat5 = simOut.DATA3(:,6);
        Dat6 = simOut.DATA3(:,7);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6);     
   case 4
        Time = simOut.DATA3(:,1);
        Dat1 = simOut.DATA3(:,2);
        Dat2 = simOut.DATA3(:,3);
        Dat3 = simOut.DATA3(:,4);
        Dat4 = simOut.DATA3(:,5);
        Dat5 = simOut.DATA3(:,6);
        Dat6 = simOut.DATA3(:,7);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6); 
    case 5

        Time = simOut.DATA4(:,1);
        Dat1 = simOut.DATA4(:,2);
        Dat2 = simOut.DATA4(:,3);
        Dat3 = simOut.DATA4(:,4);
        Dat4 = simOut.DATA4(:,5);
        Dat5 = simOut.DATA4(:,6);
        Dat6 = simOut.DATA4(:,7);
        Dat7 = simOut.DATA4(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7); 
     
    otherwise
end

% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global PID1 PID2 PID3 PID4 PID5 PID6 PID7 
pid=get(handles.pid,'String');
S = get(handles.popupmenu1,'UserData');
switch S.Option
    case 0
        set_param('robot_model/ganancias/Constant','Value',pid);
        set_param('robot_model/ganancias/Constant11','Value',pid);
        set_param('robot_model/ganancias/Constant10','Value',pid);
        set_param('robot_model/ganancias/Constant15','Value',pid);
        set_param('robot_model/ganancias/Constant17','Value',pid);
        set_param('robot_model/ganancias/Constant18','Value',pid);
        set_param('robot_model/ganancias/Constant19','Value',pid);
     %PID=[KP KI KD];
    case 1
        set_param('robot_model/ganancias/Constant','Value',pid);
    case 2
        set_param('robot_model/ganancias/Constant11','Value',pid);
    case 3
        set_param('robot_model/ganancias/Constant10','Value',pid);
    case 4
        set_param('robot_model/ganancias/Constant15','Value',pid);
    case 5
        set_param('robot_model/ganancias/Constant17','Value',pid);
    case 6
        set_param('robot_model/ganancias/Constant18','Value',pid);
    case 7
        set_param('robot_model/ganancias/Constant19','Value',pid);
    otherwise
end

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set_param('robot_model/Constant9','Value','0');
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
x=get(handles.xref,'String');
y=get(handles.yref,'String');
z=get(handles.zref,'String');
%find_system('Name','robot_model');
%open_system('robot_model');
set_param('robot_model/referencias/Constant6','Value',x);
set_param('robot_model/referencias/Constant3','Value',y);
set_param('robot_model/referencias/Constant8','Value',z);
set_param('robot_model/referencias/Constant9','Value','1');
%set_param(gcs,'SimulationCommand','Start');
%set_param(gcs,'SimulationCommand','Update')


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
P = get(handles.popupmenu2,'UserData');
global simOut 
switch P.Option
    case 0
        %cla reset;     
        %Dat = evalin('base','DATA');
        Time = simOut.DATA(:,1);
        Dat1 = simOut.DATA(:,2);
        Dat2 = simOut.DATA(:,3);
        Dat3 = simOut.DATA(:,4);
        Dat4 = simOut.DATA(:,5);
        Dat5 = simOut.DATA(:,6);
        Dat6 = simOut.DATA(:,7);
        Dat7 = simOut.DATA(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7);
        
    case 1
        %cla reset;
        Dat = evalin('base','DATA1');
        Time = simOut.DATA1(:,1);
        Dat1 = simOut.DATA1(:,2);
        Dat2 = simOut.DATA1(:,3);
        Dat3 = simOut.DATA1(:,4);
        Dat4 = simOut.DATA1(:,5);
        Dat5 = simOut.DATA1(:,6);
        Dat6 = simOut.DATA1(:,7);
        Dat7 = simOut.DATA1(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7); 
    case 2
        %cla reset;
        %Dat = evalin('base','DATA2');
        Time = simOut.DATA2(:,1);
        Dat1 = simOut.DATA2(:,2);
        Dat2 = simOut.DATA2(:,3);
        Dat3 = simOut.DATA2(:,4);
        Dat4 = simOut.DATA2(:,5);
        Dat5 = simOut.DATA2(:,6);
        Dat6 = simOut.DATA2(:,7);
        Dat7 = simOut.DATA2(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7);  
    case 3
        %cla reset;
        %Dat = evalin('base','DATA3');
        Time = simOut.DATA3(:,1);
        Dat1 = simOut.DATA3(:,2);
        Dat2 = simOut.DATA3(:,3);
        Dat3 = simOut.DATA3(:,4);
        Dat4 = simOut.DATA3(:,5);
        Dat5 = simOut.DATA3(:,6);
        Dat6 = simOut.DATA3(:,7);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6); 
    case 4
        %cla reset;
        Dat = evalin('base','DATA4');
        Time = simOut.DATA4(:,1);
        Dat1 = simOut.DATA4(:,2);
        Dat2 = simOut.DATA4(:,3);
        Dat3 = simOut.DATA4(:,4);
        Dat4 = simOut.DATA4(:,5);
        Dat5 = simOut.DATA4(:,6);
        Dat6 = simOut.DATA4(:,7);
        Dat7 = simOut.DATA4(:,8);
        plot(Time,Dat1,Time,Dat2,Time,Dat3,Time,Dat4,Time,Dat5,Time,Dat6,Time,Dat7); 
    otherwise
end


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%sim('robot_model');
global simOut 

Time=get(handles.times,'String');
simOut = sim('robot_model','ReturnWorkspaceOutputs','on','StopTime',Time)




% --- Executes on selection change in popupmenu3.
function popupmenu3_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu3 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu3

switch get(handles.popupmenu3,'Value')
    case 1
        set_param('robot_model/referencias/Constant9','Value','0');
        set_param('robot_model/referencias/Constant16','Value','1');
        set_param('robot_model/referencias/Constant13','Value','0');
    case 2
        set_param('robot_model/referencias/Constant9','Value','0');
        set_param('robot_model/referencias/Constant16','Value','0');
        set_param('robot_model/referencias/Constant13','Value','1');
    case 3
        set_param('robot_model/referencias/Constant9','Value','0');
        set_param('robot_model/referencias/Constant16','Value','0');
        set_param('robot_model/referencias/Constant13','Value','0');
    otherwise
end


% --- Executes during object creation, after setting all properties.
function popupmenu3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function times_Callback(hObject, eventdata, handles)
% hObject    handle to times (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of times as text
%        str2double(get(hObject,'String')) returns contents of times as a double


% --- Executes during object creation, after setting all properties.
function times_CreateFcn(hObject, eventdata, handles)
% hObject    handle to times (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
