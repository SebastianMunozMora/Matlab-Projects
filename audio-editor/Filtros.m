function varargout = Filtros(varargin)
% FILTROS MATLAB code for Filtros.fig
%      FILTROS, by itself, creates a new FILTROS or raises the existing
%      singleton*.
%
%      H = FILTROS returns the handle to a new FILTROS or the handle to
%      the existing singleton*.
%
%      FILTROS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FILTROS.M with the given input arguments.
%
%      FILTROS('Property','Value',...) creates a new FILTROS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Filtros_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Filtros_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Filtros

% Last Modified by GUIDE v2.5 26-Feb-2015 10:19:25

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Filtros_OpeningFcn, ...
                   'gui_OutputFcn',  @Filtros_OutputFcn, ...
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


% --- Executes just before Filtros is made visible.
function Filtros_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Filtros (see VARARGIN)

% Choose default command line output for Filtros


handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Filtros wait for user response (see UIRESUME)
% uiwait(handles.figure1);
global fs1 fs2 fp1 fp2
fs1=0;
fs2=0;
fp1=0;
fp2=0;

% --- Outputs from this function are returned to the command line.
function varargout = Filtros_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
fil=get(handles.popupmenu1,'value')
switch fil
    case 2
        set(handles.fp,'visible','on')
        set(handles.fs,'visible','on')
        set(handles.texfp,'visible','on')
        set(handles.texfs,'visible','on')
        set(handles.textfp,'visible','on')
        set(handles.textfs,'visible','on')
        set(handles.Aplicar,'visible','on')
         set(handles.fpalt,'visible','off')
        set(handles.fsalt,'visible','off')
        set(handles.texfpalt,'visible','off')
        set(handles.texfsalt,'visible','off')
        set(handles.textfpalt,'visible','off')
        set(handles.textfsalt,'visible','off')
        set(handles.fp1no,'visible','off')
        set(handles.fs1no,'visible','off')
        set(handles.fp2no,'visible','off')
        set(handles.fs2no,'visible','off')
        set(handles.texfp1no,'visible','off')
        set(handles.texfs1no,'visible','off')
        set(handles.textfp1no,'visible','off')
        set(handles.textfs1no,'visible','off')
        set(handles.texfp2no,'visible','off')
        set(handles.texfs2no,'visible','off')
        set(handles.textfp2no,'visible','off')
        set(handles.textfs2no,'visible','off')
          set(handles.fp1,'visible','off')
        set(handles.fs1,'visible','off')
        set(handles.fp2,'visible','off')
        set(handles.fs2,'visible','off')
        set(handles.texfp1,'visible','off')
        set(handles.texfs1,'visible','off')
        set(handles.textfp1,'visible','off')
        set(handles.textfs1,'visible','off')
        set(handles.texfp2,'visible','off')
        set(handles.texfs2,'visible','off')
        set(handles.textfp2,'visible','off')
        set(handles.textfs2,'visible','off')
       
    case 3
        set(handles.fpalt,'visible','on')
        set(handles.fsalt,'visible','on')
        set(handles.texfpalt,'visible','on')
        set(handles.texfsalt,'visible','on')
        set(handles.textfpalt,'visible','on')
        set(handles.textfsalt,'visible','on')
        set(handles.Aplicar,'visible','on')
        set(handles.fp,'visible','off')
        set(handles.fs,'visible','off')
        set(handles.texfp,'visible','off')
        set(handles.texfs,'visible','off')
        set(handles.textfp,'visible','off')
        set(handles.textfs,'visible','off')
        set(handles.fp1no,'visible','off')
        set(handles.fs1no,'visible','off')
        set(handles.fp2no,'visible','off')
        set(handles.fs2no,'visible','off')
        set(handles.texfp1no,'visible','off')
        set(handles.texfs1no,'visible','off')
        set(handles.textfp1no,'visible','off')
        set(handles.textfs1no,'visible','off')
        set(handles.texfp2no,'visible','off')
        set(handles.texfs2no,'visible','off')
        set(handles.textfp2no,'visible','off')
        set(handles.textfs2no,'visible','off')
          set(handles.fp1,'visible','off')
        set(handles.fs1,'visible','off')
        set(handles.fp2,'visible','off')
        set(handles.fs2,'visible','off')
        set(handles.texfp1,'visible','off')
        set(handles.texfs1,'visible','off')
        set(handles.textfp1,'visible','off')
        set(handles.textfs1,'visible','off')
        set(handles.texfp2,'visible','off')
        set(handles.texfs2,'visible','off')
        set(handles.textfp2,'visible','off')
        set(handles.textfs2,'visible','off')
    case 4
        set(handles.fp1no,'visible','on')
        set(handles.fs1no,'visible','on')
        set(handles.fp2no,'visible','on')
        set(handles.fs2no,'visible','on')
        set(handles.texfp1no,'visible','on')
        set(handles.texfs1no,'visible','on')
        set(handles.textfp1no,'visible','on')
        set(handles.textfs1no,'visible','on')
        set(handles.texfp2no,'visible','on')
        set(handles.texfs2no,'visible','on')
        set(handles.textfp2no,'visible','on')
        set(handles.textfs2no,'visible','on')
        set(handles.Aplicar,'visible','on')
        set(handles.fp,'visible','off')
        set(handles.fs,'visible','off')
        set(handles.texfp,'visible','off')
        set(handles.texfs,'visible','off')
        set(handles.textfp,'visible','off')
        set(handles.textfs,'visible','off')
        set(handles.fpalt,'visible','off')
        set(handles.fsalt,'visible','off')
        set(handles.texfpalt,'visible','off')
        set(handles.texfsalt,'visible','off')
        set(handles.textfpalt,'visible','off')
        set(handles.textfsalt,'visible','off')
         set(handles.fp1,'visible','off')
        set(handles.fs1,'visible','off')
        set(handles.fp2,'visible','off')
        set(handles.fs2,'visible','off')
        set(handles.texfp1,'visible','off')
        set(handles.texfs1,'visible','off')
        set(handles.textfp1,'visible','off')
        set(handles.textfs1,'visible','off')
        set(handles.texfp2,'visible','off')
        set(handles.texfs2,'visible','off')
        set(handles.textfp2,'visible','off')
        set(handles.textfs2,'visible','off')
    case 5
        set(handles.fp1,'visible','on')
        set(handles.fs1,'visible','on')
        set(handles.fp2,'visible','on')
        set(handles.fs2,'visible','on')
        set(handles.texfp1,'visible','on')
        set(handles.texfs1,'visible','on')
        set(handles.textfp1,'visible','on')
        set(handles.textfs1,'visible','on')
        set(handles.texfp2,'visible','on')
        set(handles.texfs2,'visible','on')
        set(handles.textfp2,'visible','on')
        set(handles.textfs2,'visible','on')
        set(handles.Aplicar,'visible','on')
        set(handles.fp,'visible','off')
        set(handles.fs,'visible','off')
        set(handles.texfp,'visible','off')
        set(handles.texfs,'visible','off')
        set(handles.textfp,'visible','off')
        set(handles.textfs,'visible','off')
        set(handles.fpalt,'visible','off')
        set(handles.fsalt,'visible','off')
        set(handles.texfpalt,'visible','off')
        set(handles.texfsalt,'visible','off')
        set(handles.textfpalt,'visible','off')
        set(handles.textfsalt,'visible','off')
        set(handles.fp1no,'visible','off')
        set(handles.fs1no,'visible','off')
        set(handles.fp2no,'visible','off')
        set(handles.fs2no,'visible','off')
        set(handles.texfp1no,'visible','off')
        set(handles.texfs1no,'visible','off')
        set(handles.textfp1no,'visible','off')
        set(handles.textfs1no,'visible','off')
        set(handles.texfp2no,'visible','off')
        set(handles.texfs2no,'visible','off')
        set(handles.textfp2no,'visible','off')
        set(handles.textfs2no,'visible','off')
  
end

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


% --- Executes on slider movement.
function fp_Callback(hObject, eventdata, handles)

    global fp fs b a gri
    fp=round(get(handles.fp,'value'));
    set(handles.textfp,'string',num2str(fp))
    if fp < fs
    fsim=50000;
    Rp=1;
    Rs=20;
    Wp=2*fp/fsim;
    Ws=2*fs/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,(abs(H)))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp debe ser menor que Fp','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fs_Callback(hObject, eventdata, handles)


    global fp fs b a gri
    fs=round(get(handles.fs,'value'));
    set(handles.textfs,'string',num2str(fs))
    if fp < fs
    fsim=50000;
    Rp=1;
    Rs=20;
    Wp=2*fp/fsim;
    Ws=2*fs/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
    
else
    errordlg('Fs debe ser mayor que Fp','ERROR')
end

% --- Executes during object creation, after setting all properties.
function fs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in Graficar.
function Graficar_Callback(hObject, eventdata, handles)
% hObject    handle to Graficar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

        
       
% --- Executes on button press in Aplicar.
function Aplicar_Callback(hObject, eventdata, handles)

global a b senal3 Fs1
senal3=filter(b,a,senal3);
senal3=senal3/(max(abs(senal3)));



% --- Executes on slider movement.
function fs1_Callback(hObject, eventdata, handles)
    global fs1 fs2 fp1 fp2 b a gri
    fs1=round(get(handles.fs1,'value'));
    set(handles.textfs1,'string',num2str(fs1))
    if fs1<fp1  && fs1<fp2 && fs1<fs2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fs1 debe estar en el rango especificado','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fs1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fp1_Callback(hObject, eventdata, handles)
    global fs1 fs2 fp1 fp2 b a gri
    fp1=round(get(handles.fp1,'value'));
    set(handles.textfp1,'string',num2str(fp1))
    if fp1>fs1 && fp1<fp2 && fp1<fs2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp1 debe estar en el rango especificado','ERROR')
end

% --- Executes during object creation, after setting all properties.
function fp1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fp2_Callback(hObject, eventdata, handles)
    global fs1 fs2 fp1 fp2 b a gri
    fp2=round(get(handles.fp2,'value'));
    set(handles.textfp2,'string',num2str(fp2))
    if fp2>fs1 && fp2>fp1 && fp2<fs2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp1 debe estar en el rango especificado','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fp2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fs2_Callback(hObject, eventdata, handles)
    global fs1 fs2 fp1 fp2 b a gri
    fs2=round(get(handles.fs2,'value'));
    set(handles.textfs2,'string',num2str(fs2))
    if fs2>fs1 && fs2>fp1 && fs2>fp2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn);
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp1 debe estar en el rango especificado','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fs2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fsalt_Callback(hObject, eventdata, handles)
    global Fs Fp b a gri
    Fs=round(get(handles.fsalt,'value'));
    set(handles.textfsalt,'string',num2str(Fs))
    if Fp > Fs
    fsim=50000;
    Rp=0.5;
    Rs=40;
    Wp=2*Fp/fsim;
    Ws=2*Fs/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'high');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,(abs(H)))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fs debe ser menor que Fp','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fsalt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fsalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fpalt_Callback(hObject, eventdata, handles)
global Fp Fs b a gri
    Fp=round(get(handles.fpalt,'value'));
    set(handles.textfpalt,'string',num2str(Fp))
    if Fp > Fs
    fsim=50000;
    Rp=0.5;
    Rs=40;
    Wp=2*Fp/fsim;
    Ws=2*Fs/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'high');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,(abs(H)))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp debe ser mayor que Fs','ERROR')
end

% --- Executes during object creation, after setting all properties.
function fpalt_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fpalt (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fs1no_Callback(hObject, eventdata, handles)

global fp1 fs1 fs2 fp2 b a gri

    fs1=round(get(handles.fs1no,'value'));
    set(handles.textfs1no,'string',num2str(fs1))
    if fs1>fp1 && fs1<fs2 && fs1<fp2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'stop');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fs1 debe estar en el rango especificado','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fs1no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs1no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fp1no_Callback(hObject, eventdata, handles)

    global fp1 fs1 fs2 fp2 b a gri

    fp1=round(get(handles.fp1no,'value'));
    set(handles.textfp1no,'string',num2str(fp1))
if fp1<fs1 && fp1<fs2 && fp1<fp2 
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'stop');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp debe ser el menor de las frecuencias','ERROR')
end


% --- Executes during object creation, after setting all properties.
function fp1no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp1no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fp2no_Callback(hObject, eventdata, handles)
    global fp1 fs1 fs2 fp2 b a gri

    fp2=round(get(handles.fp2no,'value'));
    set(handles.textfp2no,'string',num2str(fp2))
if fp2>fp1 && fp2>fs1 && fp2>fs2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fp2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'stop');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fp2 debe estar en el rango especificado','ERROR')
end

% --- Executes during object creation, after setting all properties.
function fp2no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fp2no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function fs2no_Callback(hObject, eventdata, handles)
    global fp1 fs1 fs2 fp2 b a gri

    fs2=round(get(handles.fs2no,'value'));
    set(handles.textfs2no,'string',num2str(fs2))
    if fs2>fp1 && fs2>fs1 && fs2<fp2
    fsim=60000;
    Rp=1;
    Rs=50;
    Wp=[2*fp1,2*fs2]/fsim;
    Ws=[2*fs1,2*fs2]/fsim;
    [N,Wn]=buttord(Wp,Ws,Rp,Rs);
    [b,a]=butter(N,Wn,'stop');
    f=0:1:17900;
    H=freqz(b,a,f,fsim);
    plot(f,abs(H))
    title('Respuesta en frecuencia')
    xlabel('Frequency (Hz)')
    ylabel('|Y(f)|')
    if gri==1
        grid on
    end
else
    errordlg('Fs2 debe estar en el rango especificado','ERROR')
end

% --- Executes during object creation, after setting all properties.
function fs2no_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fs2no (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
