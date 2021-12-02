function varargout = DSPprograma1(varargin)
% DSPPROGRAMA1 MATLAB code for DSPprograma1.fig
%      DSPPROGRAMA1, by itself, creates a new DSPPROGRAMA1 or raises the existing
%      singleton*.
%
%      H = DSPPROGRAMA1 returns the handle to a new DSPPROGRAMA1 or the handle to
%      the existing singleton*.
%
%      DSPPROGRAMA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DSPPROGRAMA1.M with the given input arguments.
%
%      DSPPROGRAMA1('Property','Value',...) creates a new DSPPROGRAMA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before DSPprograma1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to DSPprograma1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help DSPprograma1

% Last Modified by GUIDE v2.5 02-Mar-2015 07:22:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @DSPprograma1_OpeningFcn, ...
                   'gui_OutputFcn',  @DSPprograma1_OutputFcn, ...
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
% --- Executes just before gui_mouse is made visible.
function DSPprograma1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui_mouse (see VARARGIN)

% Choose default command line output for gui_mouse
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui_mouse wait for user response (see UIRESUME)
% uiwait(handles.fig_mouse);
disp(1)
global bounds bounds2 bounds3 gri Fs1 Fs2 senal1 senal2 senal3 m co Canalc cont Canala
disp(123)
set(handles.remplazar,'enable','off')
set(handles.insertar,'enable','off')
set(handles.filtrar,'enable','off')
set(handles.Mezclar,'enable','off')
set(handles.cortar,'enable','off')
set(handles.Guardar,'enable','off')
set(handles.frecuencia,'enable','off')
set(handles.tiempo,'enable','off')
bounds=get(handles.axes1,'position');
bounds2=get(handles.axes2,'position');
bounds3=get(handles.axes4,'position');
Canala=0;
cont=0;
Canalc=0;
co=0;
m=0;
senal1=0;
senal2=0;
senal3=0;
Fs1=8000;
Fs2=8000;
gri=0;
axes(handles.axes1)
graficar(senal1,Fs1)
axes(handles.axes2)
graficar(senal1,Fs2)
axes(handles.axes4)
graficar(senal3,Fs1)
[a,map]=imread('rec.jpg');
[r,c,d]=size(a);
x=ceil(r/30);
y=ceil(r/30);
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.rec1,'CData',g)

[a,map]=imread('rec.jpg');
[r,c,d]=size(a);
x=ceil(r/30);
y=ceil(r/30);
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.rec2,'CData',g)

[a,map]=imread('play.jpg');
[r,c,d]=size(a);
x=ceil(r/30);
y=ceil(r/30);
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.play1,'CData',g)

[a,map]=imread('play.jpg');
[r,c,d]=size(a);
x=ceil(r/30);
y=ceil(r/30);
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.play2,'CData',g)

[a,map]=imread('play.jpg');
[r,c,d]=size(a);
x=ceil(r/30);
y=ceil(r/30);
g=a(1:x:end,1:y:end,:);
g(g==255)=5.5*255;
set(handles.play3,'CData',g)




% UIWAIT makes DSPprograma1 wait for user response (see UIRESUME)
% uiwait(handles.figura);


% --- Outputs from this function are returned to the command line.
function varargout = DSPprograma1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Archivo_Callback(hObject, eventdata, handles)
% hObject    handle to Archivo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function herramientas_Callback(hObject, eventdata, handles)
% hObject    handle to herramientas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function graficas_Callback(hObject, eventdata, handles)
% hObject    handle to graficas (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function frecuencia_Callback(hObject, eventdata, handles)
% hObject    handle to frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global senal1 senal2 senal3 Fs1
axes(handles.axes1)
fou(senal1,Fs1)
axes(handles.axes2)
fou(senal2,Fs1)
axes(handles.axes4)
fou(senal3,Fs1)


% --------------------------------------------------------------------
function tiempo_Callback(hObject, eventdata, handles)
% hObject    handle to tiempo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global senal1 senal2 senal3 Fs1 
axes(handles.axes1)
graficar(senal1,Fs1)
axes(handles.axes2)
graficar(senal2,Fs1)
axes(handles.axes4)
graficar(senal3,Fs1)


% --------------------------------------------------------------------
function cortar_Callback(hObject, eventdata, handles)
% hObject    handle to cortar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cx cy  Canalc Fs1 Fs2 senal1 senal2 co  pos bounds bounds2 cont 
axes(handles.axes1)
graficar(senal1,Fs1)
axes(handles.axes2)
graficar(senal2,Fs2)
set(handles.remplazar,'enable','off')
set(handles.insertar,'enable','off')
set(handles.filtrar,'enable','off')
set(handles.Mezclar,'enable','off')
c=0;
while c<1
    [ccx(1),ccy(1)]=ginput(1);
    pos=get(gcf,'currentpoint');
    Canala=canal;
    if Canala==0
        Canalb=0;
    else
        [ccx(2),ccy(2)]=ginput(1);
        pos=get(gcf,'currentpoint');
        Canalb=canal;
    end
     if Canala == 1 && Canalb == 1 && ccx(1) ~= ccx(2)
        if ccx(1)>ccx(2)
            cx(1)=ccx(2);
            cx(2)=ccx(1);
        else
            cx(1)=ccx(1);
            cx(2)=ccx(2);
        end
        cx=cx*Fs1;
        cx=round(cx);
        if cx(1)>length(senal1) || cx(2)>length(senal1)
            senal1(length(senal1)+1:cx(2))=0;
        end
        set(handles.remplazar,'enable','on')
        set(handles.insertar,'enable','on')
        set(handles.Mezclar,'enable','on')
        Canalc=Canalb;
        c=1;
    elseif Canala == 2 && Canalb == 2 && ccx(1) ~= ccx(2)
        if ccx(1)>ccx(2)
            cx(1)=ccx(2);
            cx(2)=ccx(1);
        else
            cx(1)=ccx(1);
            cx(2)=ccx(2);
        end
        cx=cx*Fs2;
        cx=round(cx);
        if cx(1)>length(senal2) || cx(2)>length(senal2)
            senal2(length(senal2)+1:cx(2))=0;
        end
        set(handles.remplazar,'enable','on')
        set(handles.insertar,'enable','on')
        set(handles.Mezclar,'enable','on')
        Canalc=Canalb;
        c=1;
     else
        ed=errordlg('Selección erronea');
        waitfor(ed);
     end
end

% --------------------------------------------------------------------
function insertar_Callback(hObject, eventdata, handles)
% hObject    handle to insertar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cx cy ix iy senal3 senal1 Fs1 Canalc Fs2 senal2 pos m
axes(handles.axes4)
graficar(senal3,Fs1)
c=0;
while c<1
    [ix,iy]=ginput(1);
    pos=get(gcf,'currentpoint');
    ins=canal;
    if ins==3
        if Canalc == 1
            ix=ix*Fs1;
            ix=round(ix);
            cx(1)
            cx(2)
            senal3((cx(2)-cx(1))+ix+1:(length(senal3)-ix)+(cx(2)-cx(1))+ix+1)=senal3(ix:length(senal3));
            senal3(ix:(cx(2)-cx(1))+ix)=senal1(cx(1):cx(2));
            axes(handles.axes4)
            graficar(senal3,Fs1);
            c=1;
            m=1;
            set(handles.filtrar,'enable','on')
            set(handles.Guardar,'enable','on')
        end
        if Canalc == 2
            ix=ix*Fs2;
            ix=round(ix);
            senal3((cx(2)-cx(1))+ix+1:(length(senal3)-ix)+(cx(2)-cx(1))+ix+1)=senal3(ix:length(senal3));
            senal3(ix:(cx(2)-cx(1))+ix)=senal2(cx(1):cx(2));
            axes(handles.axes4)
            graficar(senal3,Fs1);
            c=1;
            m=1;
            set(handles.filtrar,'enable','on')
            set(handles.Guardar,'enable','on')
        end
    else
            ed=errordlg('Selección erronea');
            waitfor(ed)
    end
end
    

% --------------------------------------------------------------------
function filtrar_Callback(hObject, eventdata, handles)
% hObject    handle to filtrar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Filtros

% --------------------------------------------------------------------
function remplazar_Callback(hObject, eventdata, handles)
% hObject    handle to remplazar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cx cy rx ry senal3 senal1 Fs1 Canalc Fs2 senal2 pos m
    axes(handles.axes4)
    graficar(senal3,Fs1)
    c=0;
while c<1
    [rx,ry]=ginput(1);
    pos=get(gcf,'currentpoint');
    res=canal;
    if res==3
        if Canalc == 1
            c=1;
            rx=rx*Fs1;
            rx=round(rx);
            senal3(rx:(cx(2)-cx(1))+rx)=senal1(cx(1):cx(2));
            m=1;
            set(handles.filtrar,'enable','on')
            set(handles.Guardar,'enable','on')
            axes(handles.axes4)
            graficar(senal3,Fs1);
        end
        if Canalc == 2
            c=1;
            rx=rx*Fs2;
            rx=round(rx);
            senal3(rx:(cx(2)-cx(1))+rx)=senal2(cx(1):cx(2));
            m=1;
            set(handles.filtrar,'enable','on')
            set(handles.Guardar,'enable','on')
            axes(handles.axes4)
            graficar(senal3,Fs2);
        end
    else
            ed=errordlg('Selección erronea');
            waitfor(ed)
    end
end


% --------------------------------------------------------------------
function Abrir_Callback(hObject, eventdata, handles)
% hObject    handle to Abrir (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  a1 a2 senal1 Fs1 senal2 Fs2 tiempo1 tiempo2 pos bounds bounds2
axes(handles.axes1)
graficar(senal1,Fs1)
axes(handles.axes2)
graficar(senal2,Fs2)
c=0;
while c<1
    [a] = uigetfile('*.wav','Archivo Wav Mono');
    [aax,aay]=ginput(1);
    pos=get(gcf,'currentpoint');
    Canala=canal;
    if Canala==1
        c=1;
        [a1,fsa]=wavread(a);
        aax=aax*fsa;
        aax=round(aax);
        senal1=a1;
        senal1=senal1/(max(abs(senal1)));
        Fs1=fsa;
        tiempo1=length(a1)/Fs1;
        res(Fs1,Fs2);
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes1)
        graficar(senal1,Fs1);
    elseif Canala==2
        c=1;
        [a2,fsa2]=wavread(a);
        aax=aax*fsa2;
        aax=round(aax);
        senal2=a2;
        senal2=senal2/(max(abs(senal2)));
        tiempo2=length(a2)/Fs2;
        Fs2=fsa2;
        res(Fs1,Fs2);
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes2)
        graficar(senal2,Fs2);
    else
        ed=errordlg('Selección erronea');
        waitfor(ed)
    end
end
% --------------------------------------------------------------------
function Grabar_Callback(hObject, eventdata, handles)
% hObject    handle to Grabar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Fs1=inputdlg('Ingrese frecuencia de muestreo','Sampling')
%Fs1=str2double(Fs1);
global Fs Canal Tiempo Fs1 tiempo1 Fs2 tiempo2 senal1 senal2 pos
prompt = {'Ingrese frecuencia de Sampleo','Elija tiempo en segundos'};
dlg_title = 'Grabar';
num_lines = 1;
def = {'8000','2'};
Gr=inputdlg(prompt,dlg_title,num_lines,def);
Fs=str2double(Gr(1,1));
Tiempo=str2double(Gr(2,1));
c=0;
while c<1
    [ggx,ggy]=ginput(1);
    pos=get(gcf,'currentpoint');
    Canala=canal;
    if Canala==1
        c=1;
        Fs1=Fs;
        ggx=ggx*Fs1;
        ggx=round(ggx);
        tiempo1=Tiempo;
        recobj=audiorecorder(Fs1,16,1);
        recordblocking(recobj,tiempo1);
        senal1=getaudiodata(recobj,'double');
        senal1=senal1/max(abs(senal1));
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes1)
        res(Fs1,Fs2)
        graficar(senal1,Fs1)
    elseif Canala==2
        c=1;
        Fs2=Fs;
        ggx=ggx*Fs2;
        ggx=round(ggx);
        tiempo2=Tiempo;
        recobj=audiorecorder(Fs2,16,1);
        recordblocking(recobj,tiempo2);
        senal2=getaudiodata(recobj,'double');
        senal2=senal2/max(abs(senal2));
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes2)
        res(Fs1,Fs2)
        graficar(senal2,Fs2)
    else
        ed=errordlg('Selección erronea');
        waitfor(ed)
    end
end
    


% --------------------------------------------------------------------
function Guardar_Callback(hObject, eventdata, handles)
% hObject    handle to Guardar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global senal3 Fs1
g = uiputfile('*.wav','Guardar audio');
wavwrite(senal3,Fs1,g);

% --- Executes on button press in play1.
function play1_Callback(hObject, eventdata, handles)
% hObject    handle to play1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs1 senal1
sound(senal1,Fs1)

% --- Executes on button press in rec1.
function rec1_Callback(hObject, eventdata, handles)
% hObject    handle to rec1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  Fs1 tiempo1 senal1 Fs2
prompt = {'Ingrese frecuencia de Sampleo','Elija tiempo en segundos'};
dlg_title = 'Grabar';
num_lines = 1;
def = {'8000','2'};
Gr=inputdlg(prompt,dlg_title,num_lines,def);
Fs1=str2double(Gr(1,1));
tiempo1=str2double(Gr(2,1));
recobj=audiorecorder(Fs1,16,1);
recordblocking(recobj,tiempo1);
senal1=getaudiodata(recobj,'double');
senal1=senal1/max(abs(senal1));
res(Fs1,Fs2)
set(handles.cortar,'enable','on')
set(handles.frecuencia,'enable','on')
set(handles.tiempo,'enable','on')
axes(handles.axes1)
graficar(senal1,Fs1)

% --- Executes on button press in play2.
function play2_Callback(hObject, eventdata, handles)
% hObject    handle to play2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs2 senal2
sound(senal2,Fs2)

% --- Executes on button press in play3.
function play3_Callback(hObject, eventdata, handles)
% hObject    handle to play3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global senal3 Fs1 
sound(senal3,Fs1)


% --------------------------------------------------------------------
function grid_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to grid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global gri
if gri==0
    gri=1;
    axes(handles.axes1)
    grid on
    axes(handles.axes2)
    grid on
    axes(handles.axes4)
    grid on
else 
    gri=0;
    axes(handles.axes1)
    grid off
    axes(handles.axes2)
    grid off
    axes(handles.axes4)
    grid off
end


% --------------------------------------------------------------------
function rec_ClickedCallback(hObject, eventdata, handles)
% hObject    handle to rec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global Fs Canal Tiempo Fs1 tiempo1 Fs2 tiempo2 senal1 senal2 pos
prompt = {'Ingrese frecuencia de Sampleo','Elija tiempo en segundos'};
dlg_title = 'Grabar';
num_lines = 1;
def = {'8000','2'};
Gr=inputdlg(prompt,dlg_title,num_lines,def);
Fs=str2double(Gr(1,1));
Tiempo=str2double(Gr(2,1));
c=0;
while c<1
    [ggx,ggy]=ginput(1);
    pos=get(gcf,'currentpoint');
    Canala=canal;
    if Canala==1
        c=1;
        Fs1=Fs;
        ggx=ggx*Fs1;
        ggx=round(ggx);
        tiempo1=Tiempo;
        recobj=audiorecorder(Fs1,16,1);
        recordblocking(recobj,tiempo1);
        senal1=getaudiodata(recobj,'double');
        senal1=senal1/max(abs(senal1));
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes1)
        res(Fs1,Fs2)
        graficar(senal1,Fs1)
    elseif Canala==2
        c=1;
        Fs2=Fs;
        ggx=ggx*Fs2;
        ggx=round(ggx);
        tiempo2=Tiempo;
        recobj=audiorecorder(Fs2,16,1);
        recordblocking(recobj,tiempo2);
        senal2=getaudiodata(recobj,'double');
        senal2=senal2/max(abs(senal2));
        set(handles.cortar,'enable','on')
        set(handles.frecuencia,'enable','on')
        set(handles.tiempo,'enable','on')
        axes(handles.axes2)
        res(Fs1,Fs2)
        graficar(senal2,Fs2)
    else
        ed=errordlg('Selección erronea');
        waitfor(ed)
    end
end


% --------------------------------------------------------------------
function Mezclar_Callback(hObject, eventdata, handles)
% hObject    handle to Mezclar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global cx Canalc senal1 senal2 senal3 Fs1 Fs2 m pos
c=0;
while c<1
    [mx,my]=ginput(1);
    pos=get(gcf,'currentpoint');
    mes=canal;
    if mes==3
        if Canalc == 1
            c=1;
            if m == 0
                mx=mx*Fs1;
                mx=round(mx);
                senal3(mx:(cx(2)-cx(1))+mx)=senal1(cx(1):cx(2));
                axes(handles.axes4)
                graficar(senal3,Fs1);
                m=m+1;
                set(handles.filtrar,'enable','on')
                set(handles.Guardar,'enable','on')
            else
                mx=mx*Fs1;
                mx=round(mx);
                if length(senal3)-mx < cx(2)-cx(1) && length(senal3)-mx>=0
                    senal3(length(senal3)+1:cx(2)-cx(1)+length(senal3)+1)=0;
                    disp(321)
                elseif length(senal3)-mx<0
                    senal3(mx:mx+cx(2)-cx(1))=0;
                end
                M=senal1(cx(1):cx(2))'+senal3(mx:cx(2)-cx(1)+mx);
                senal3(mx:cx(2)-cx(1)+mx)=M;
                axes(handles.axes4)
                graficar(senal3,Fs1)
            end
        end
        if Canalc == 2
            c=1;
            if m == 0
                mx=mx*Fs2;
                mx=round(mx);
                senal3(mx:(cx(2)-cx(1))+mx)=senal2(cx(1):cx(2));
                axes(handles.axes4)
                graficar(senal3,Fs2);
                m=m+1;
                set(handles.filtrar,'enable','on')
                set(handles.Guardar,'enable','on')
            else
                mx=mx*Fs2;
                mx=round(mx);
                if length(senal3)-mx < cx(2)-cx(1) && length(senal3)-mx>=0
                    senal3(length(senal3)+1:cx(2)-cx(1)+length(senal3)+1)=0;
                    disp(321)
                elseif length(senal3)-mx<0
                    senal3(mx:mx+cx(2)-cx(1))=0;
                end
                M=senal2(cx(1):cx(2))'+senal3(mx:cx(2)-cx(1)+mx);
                senal3(mx:cx(2)-cx(1)+mx)=M;
                axes(handles.axes4)
                graficar(senal3,Fs1)
             end
        end
    else
            ed=errordlg('Selección erronea');
            waitfor(ed)
    end
end



% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figura_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to figura (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in rec2.
function rec2_Callback(hObject, eventdata, handles)
% hObject    handle to rec2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  Fs2  tiempo2 senal2 Fs1
prompt = {'Ingrese frecuencia de Sampleo','Elija tiempo en segundos'};
dlg_title = 'Grabar';
num_lines = 1;
def = {'8000','2'};
Gr=inputdlg(prompt,dlg_title,num_lines,def);
Fs2=str2double(Gr(1,1));
tiempo2=str2double(Gr(2,1));
recobj=audiorecorder(Fs2,16,1);
recordblocking(recobj,tiempo2);
senal2=getaudiodata(recobj,'double');
senal2=senal2/max(abs(senal2));
res(Fs1,Fs2)
set(handles.cortar,'enable','on')
set(handles.frecuencia,'enable','on')
set(handles.tiempo,'enable','on')
axes(handles.axes2)
graficar(senal2,Fs2)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)}
global senal3 
axes(handles.axes4)
cla()
senal3=0;
set(handles.filtrar,'enable','off')

