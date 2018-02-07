function varargout = InpGUI(varargin)
% INPGUI MATLAB code for InpGUI.fig
%      INPGUI, by itself, creates a new INPGUI or raises the existing
%      singleton*.
%
%      H = INPGUI returns the handle to a new INPGUI or the handle to
%      the existing singleton*.
%
%      INPGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INPGUI.M with the given input arguments.
%
%      INPGUI('Property','Value',...) creates a new INPGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before InpGUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to InpGUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help InpGUI

% Last Modified by GUIDE v2.5 07-Feb-2018 19:24:27

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @InpGUI_OpeningFcn, ...
                   'gui_OutputFcn',  @InpGUI_OutputFcn, ...
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


% --- Executes just before InpGUI is made visible.
function InpGUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to InpGUI (see VARARGIN)

% Choose default command line output for InpGUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes InpGUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = InpGUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


%%%%%%%%%%% BOTÕES DE MALHA %%%%%%%%%%%


% --- Executes during object creation, after setting all properties.
function maBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.mesh) ; %write value in userdata to field
guidata(hObject, handles); %update view


function maBtn_Callback(hObject, eventdata, handles)
% hObject    handle to maBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of maBtn

ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.mesh = 1 ; 
set(gcbf,'UserData', ud);

% --- Executes on button press in mfBtn.
function mfBtn_Callback(hObject, eventdata, handles)
% hObject    handle to mfBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of mfBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.mesh = 2 ; 
set(gcbf,'UserData', ud);


% --- Executes during object creation, after setting all properties.
function mfBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mfBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.mesh) ; %write value in userdata to field
guidata(hObject, handles); %update view




%%%%%%%%%%% BOTÕES DE ENTRADA %%%%%%%%%%%


%%% BOTÃO 0 %%%
% --- Executes during object creation, after setting all properties.
function ent_0Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_0Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_0Btn.
function ent_0Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_0Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_0Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 0; 
set(gcbf,'UserData', ud);

%%% BOTÃO 1 %%%
% --- Executes during object creation, after setting all properties.
function ent_1Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_1Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_1Btn.
function ent_1Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_1Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_1Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 1; 
set(gcbf,'UserData', ud);


%%% BOTÃO 2 %%%
% --- Executes during object creation, after setting all properties.
function ent_2Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_2Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_2Btn.
function ent_2Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_2Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_2Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 2; 
set(gcbf,'UserData', ud);


%%% BOTÃO 3 %%%
% --- Executes during object creation, after setting all properties.
function ent_3Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_3Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_3Btn.
function ent_3Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_3Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_3Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 3; 
set(gcbf,'UserData', ud);


%%% BOTÃO 4 %%%
% --- Executes during object creation, after setting all properties.
function ent_4Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_4Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_4Btn.
function ent_4Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_4Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_4Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 4; 
set(gcbf,'UserData', ud);


%%% BOTÃO 5 %%%
% --- Executes during object creation, after setting all properties.
function ent_5Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_5Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_5Btn.
function ent_5Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_5Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_5Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 5; 
set(gcbf,'UserData', ud);


%%% BOTÃO 6 %%%
% --- Executes during object creation, after setting all properties.
function ent_6Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_6Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_6Btn.
function ent_6Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_6Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_6Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 6; 
set(gcbf,'UserData', ud);


%%% BOTÃO 7 %%%
% --- Executes during object creation, after setting all properties.
function ent_7Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ent_7Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.input) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in ent_7Btn.
function ent_7Btn_Callback(hObject, eventdata, handles)
% hObject    handle to ent_7Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of ent_7Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.input = 7; 
set(gcbf,'UserData', ud);



%%%%%%%%%%% BOTÕES DE SAÍDA %%%%%%%%%%%


%%% BOTÃO 0 %%%
% --- Executes during object creation, after setting all properties.
function sai_0Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_0Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_0Btn.
function sai_0Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_0Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_0Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 0; 
set(gcbf,'UserData', ud);

%%% BOTÃO 1 %%%
% --- Executes during object creation, after setting all properties.
function sai_1Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_1Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_1Btn.
function sai_1Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_1Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_1Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 1; 
set(gcbf,'UserData', ud);

%%% BOTÃO 2 %%%
% --- Executes during object creation, after setting all properties.
function sai_2Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_2Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_2Btn.
function sai_2Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_2Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_2Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 2; 
set(gcbf,'UserData', ud);

%%% BOTÃO 3 %%%
% --- Executes during object creation, after setting all properties.
function sai_3Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_3Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_3Btn.
function sai_3Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_3Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_3Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 3; 
set(gcbf,'UserData', ud);

%%% BOTÃO 4 %%%
% --- Executes during object creation, after setting all properties.
function sai_4Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_4Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_4Btn.
function sai_4Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_4Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_4Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 4; 
set(gcbf,'UserData', ud);

%%% BOTÃO 5 %%%
% --- Executes during object creation, after setting all properties.
function sai_5Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_5Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_5Btn.
function sai_5Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_5Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_5Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 5; 
set(gcbf,'UserData', ud);

%%% BOTÃO 6 %%%
% --- Executes during object creation, after setting all properties.
function sai_6Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_6Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in sai_6Btn.
function sai_6Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_6Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_6Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 6; 
set(gcbf,'UserData', ud);

%%% BOTÃO 7 %%%
% --- Executes on button press in sai_7Btn.
function sai_7Btn_Callback(hObject, eventdata, handles)
% hObject    handle to sai_7Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of sai_7Btn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.output = 7; 
set(gcbf,'UserData', ud);

% --- Executes during object creation, after setting all properties.
function sai_7Btn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sai_7Btn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.output) ; %write value in userdata to field
guidata(hObject, handles); %update view

%%%%%%%%%%% CAMPOS DE TEXTO %%%%%%%%%%%



%%% TENSÃO %%%


% --- Executes during object creation, after setting all properties.
function tensaoField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tensaoField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.tension)) ; %write value in userdata to field
guidata(hObject, handles); %update view


function tensaoField_Callback(hObject, eventdata, handles)
% hObject    handle to tensaoField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of tensaoField as text
%        str2double(get(hObject,'String')) returns contents of tensaoField as a double
tensionValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(tensionValue) %if number is stored in edit field
    ud.tension = str2double(tensionValue);
else % if its not number
    ud.tension = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata




%%% PERÍODO MÁXIMO OU TOTAL %%%

% --- Executes during object creation, after setting all properties.
function permaxField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to permaxField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.permax)) ; %write value in userdata to field
guidata(hObject, handles); %update view

function permaxField_Callback(hObject, eventdata, handles)
% hObject    handle to permaxField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of permaxField as text
%        str2double(get(hObject,'String')) returns contents of permaxField as a double
permaxValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(permaxValue) %if number is stored in edit field
    ud.permax = str2double(permaxValue);
else % if its not number
    ud.permax = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata




%%% PERÍODO MÍNIMO %%%

% --- Executes during object creation, after setting all properties.
function perminField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perminField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.permin)) ; %write value in userdata to field
guidata(hObject, handles); %update view

function perminField_Callback(hObject, eventdata, handles)
% hObject    handle to perminField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of perminField as text
%        str2double(get(hObject,'String')) returns contents of perminField as a double
perminValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(perminValue) %if number is stored in edit field
    ud.permin = str2double(perminValue);
else % if its not number
    ud.permin = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata


%%% AMPLITUDE MÁXIMA OU TOTAL %%%


% --- Executes during object creation, after setting all properties.
function ampmaxField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampmaxField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.ampmax)) ; %write value in userdata to field
guidata(hObject, handles); %update view


function ampmaxField_Callback(hObject, eventdata, handles)
% hObject    handle to ampmaxField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ampmaxField as text
%        str2double(get(hObject,'String')) returns contents of ampmaxField as a double
ampmaxValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(ampmaxValue) %if number is stored in edit field
    ud.ampmax = str2double(ampmaxValue);
else % if its not number
    ud.ampmax = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata



%%% AMPLITUDE MÍNIMA %%%


% --- Executes during object creation, after setting all properties.
function ampminField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ampminField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.ampmin)) ; %write value in userdata to field
guidata(hObject, handles); %update view


function ampminField_Callback(hObject, eventdata, handles)
% hObject    handle to ampminField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of ampminField as text
%        str2double(get(hObject,'String')) returns contents of ampminField as a double
ampminValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(ampminValue) %if number is stored in edit field
    ud.ampmin = str2double(ampminValue);
else % if its not number
    ud.ampmin = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata

%%% OFFSET %%%


% --- Executes during object creation, after setting all properties.
function offsetField_CreateFcn(hObject, eventdata, handles)
% hObject    handle to offsetField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'String', num2str(ud.offset)) ; %write value in userdata to field
guidata(hObject, handles); %update view

function offsetField_Callback(hObject, eventdata, handles)
% hObject    handle to offsetField (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hints: get(hObject,'String') returns contents of offsetField as text
%        str2double(get(hObject,'String')) returns contents of offsetField as a double
offsetValue = get(hObject,'String'); %get the string in edit field
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
if str2double(offsetValue) %if number is stored in edit field
    ud.offset = str2double(offsetValue);
else % if its not number
    ud.offset = 0; % store 0 
end
set(gcbf,'UserData',ud) ; %update userdata


%%%%%%%%%%% BOTÕES DE FORMA DE ONDA %%%%%%%%%%%



%%% BOTÃO SENO %%%


% --- Executes during object creation, after setting all properties.
function senBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to senBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.waveform) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in senBtn.
function senBtn_Callback(hObject, eventdata, handles)
% hObject    handle to senBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of senBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.waveform = 1 ; 
set(gcbf,'UserData', ud);


%%% BOTÃO DEGRAU %%%


% --- Executes during object creation, after setting all properties.
function degBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to degBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.waveform) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in degBtn.
function degBtn_Callback(hObject, eventdata, handles)
% hObject    handle to degBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of degBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.waveform = 2 ; 
set(gcbf,'UserData', ud);


%%% BOTÃO DENTE DE SERRA %%%


% --- Executes during object creation, after setting all properties.
function dentBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dentBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.waveform) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in dentBtn.
function dentBtn_Callback(hObject, eventdata, handles)
% hObject    handle to dentBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of dentBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.waveform = 3 ; 
set(gcbf,'UserData', ud);


%%% BOTÃO QUADRADO %%%


% --- Executes during object creation, after setting all properties.
function quadBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to quadBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.waveform) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in quadBtn.
function quadBtn_Callback(hObject, eventdata, handles)
% hObject    handle to quadBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of quadBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.waveform = 4; 
set(gcbf,'UserData', ud);

%%% BOTÃO RANDOM %%%

% --- Executes during object creation, after setting all properties.
function randBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to randBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.waveform) ; %write value in userdata to field
guidata(hObject, handles); %update view


% --- Executes on button press in randBtn.
function randBtn_Callback(hObject, eventdata, handles)
% hObject    handle to randBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of randBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.waveform = 5; 
set(gcbf,'UserData', ud);


%%%%%%%%%%% BOTÕES DE START/STOP %%%%%%%%%%%



% --- Executes during object creation, after setting all properties.
function startBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to startBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.start) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in startBtn.
function startBtn_Callback(hObject, eventdata, handles)
% hObject    handle to startBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of startBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.start = 1; 
set(gcbf,'UserData', ud);



% --- Executes during object creation, after setting all properties.
function stopBtn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to stopBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
ud =get(gcbf,'UserData'); % get ud stored in fig userdata field
set(hObject,'Value', ud.start) ; %write value in userdata to field
guidata(hObject, handles); %update view

% --- Executes on button press in stopBtn.
function stopBtn_Callback(hObject, eventdata, handles)
% hObject    handle to stopBtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Hint: get(hObject,'Value') returns toggle state of stopBtn
ud = get(gcbf,'UserData') ; %retrieve user data
%update user data
ud.start = 0; 
set(gcbf,'UserData', ud);


%%%%%%%%%%% CRIAÇÃO DA GUI %%%%%%%%%%%

% Criando todos os campos de valores que serão passados da GUI para o
% Simulink e armazenando seus valores iniciais. 
% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Text Field Values
ud.tension = 0;
ud.permax = 0;
ud.permin = 0;
ud.ampmax = 0;
ud.ampmin = 0;
ud.offset = 0;

% Mesh Value
ud.mesh = 0;

% Waveform Value
ud.waveform = 0;

% Start/Stop Value
ud.start = 0;

% Input Value
ud.input = -1;

% Output Value
ud.output = -1;

set(hObject, 'UserData', ud) ; %store GUI initial values 
%Store figure handle in block userdata - handle can then be used for
%manipulating the figure params
set_param(gcbh,'Userdata',hObject); 
