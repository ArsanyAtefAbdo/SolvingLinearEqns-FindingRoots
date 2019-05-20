function varargout = Roots_Equation(varargin)

% ROOTS_EQUATION MATLAB code for Roots_Equation.fig
%      ROOTS_EQUATION, by itself, creates a new ROOTS_EQUATION or raises the existing
%      singleton*.
%
%      H = ROOTS_EQUATION returns the handle to a new ROOTS_EQUATION or the handle to
%      the existing sing6leton*.
%
%      ROOTS_EQUATION('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ROOTS_EQUATION.M with the given input arguments.
%
%      ROOTS_EQUATION('Property','Value',...) creates a new ROOTS_EQUATION or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Roots_Equation_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Roots_Equation_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Roots_Equation

% Last Modified by GUIDE v2.5 09-May-2019 13:05:30

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Roots_Equation_OpeningFcn, ...
                   'gui_OutputFcn',  @Roots_Equation_OutputFcn, ...
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


% --- Executes just before Roots_Equation is made visible.
function Roots_Equation_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Roots_Equation (see VARARGIN)

% Choose default command line output for Roots_Equation
handles.output = hObject;

% % create an axes that spans the whole gui
% ah = axes('unit', 'normalized', 'position', [0 0 1 1]);
% % import the background image and show it on the axes
% bg = imread('4.jpg'); imagesc(bg);
% % prevent plotting over the background and turn the axis off
% set(ah,'handlevisibility','off','visible','off')
% % making sure the background is behind all the other uicontrols
% uistack(ah, 'bottom');

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Roots_Equation wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Roots_Equation_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eqn_edit_Callback(hObject, eventdata, handles)
% hObject    handle to eqn_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn_edit as text
%        str2double(get(hObject,'String')) returns contents of eqn_edit as a double


% --- Executes during object creation, after setting all properties.
function eqn_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter_edit_Callback(hObject, eventdata, handles)
% hObject    handle to iter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter_edit as text
%        str2double(get(hObject,'String')) returns contents of iter_edit as a double


% --- Executes during object creation, after setting all properties.
function iter_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error_edit_Callback(hObject, eventdata, handles)
% hObject    handle to error_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error_edit as text
%        str2double(get(hObject,'String')) returns contents of error_edit as a double


% --- Executes during object creation, after setting all properties.
function error_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess2_edit_Callback(hObject, eventdata, handles)
% hObject    handle to guess2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess2_edit as text
%        str2double(get(hObject,'String')) returns contents of guess2_edit as a double


% --- Executes during object creation, after setting all properties.
function guess2_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess2_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
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



function file_edit_Callback(hObject, eventdata, handles)
% hObject    handle to file_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of file_edit as text
%        str2double(get(hObject,'String')) returns contents of file_edit as a double


% --- Executes during object creation, after setting all properties.
function file_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to file_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in read_pushbutton.
function read_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to read_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

filename = get(handles.file_edit,'String');
[eqn, type, guess1, guess2, itmax, presicion] = part1Read(filename);

% SET THE EQN TEXT BOX WITH THE EQUATION FROM FILE
set(handles.eqn_edit,'String',eqn);

% SET THE POPUPMENU WITH THE TYPE FROM FILE
switch (type);    
    % Bisection
    case 'bisection'
    set(handles.popupmenu1,'Value',1);

   % False-position
    case 'false position'
    set(handles.popupmenu1,'Value',2);

    % Fixed point    
    case 'fixed point'
    set(handles.popupmenu1,'Value',3);
    
    % Newton-Raphson    
    case 'newton raphson'  
    set(handles.popupmenu1,'Value',4);
        
    % Secant    
    case 'secant'
    set(handles.popupmenu1,'Value',5);
        
    % Bierge-Vieta    
    case 'bierge vieta'
    set(handles.popupmenu1,'Value',6);   
        
    % General Algorithm(Steffensen)    
    case 'General Algorithm(Steffensen)'
         set(handles.popupmenu1,'Value',7);
end

% SET THE GUESS1 &GUESS2 BOXES FROM GUESSES FROM FILE
set(handles.guess1_edit,'String', guess1);
set(handles.guess2_edit,'String', guess2);

% SET THE MAX ITER OR PRESICION FROM FILE

set(handles.error_edit,'String', presicion);
set(handles.iter_edit,'String',itmax);


% --- Executes on button press in solve_pushbutton.
function solve_pushbutton_Callback(hObject, eventdata, handles)
format long
% hObject    handle to solve_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% RESET AXES
axes(handles.axes1);
cla reset

% MAKES THE AXES ZOOM IN AND OUT
zoom on

% RESET TABLE
set(handles.uitable3,'Data',[])

set(handles.file_edit,'String','');
set(handles.co,'String','1');
set(handles.none,'String','None');
set(handles.iternumex,'String','');
eqn = get(handles.eqn_edit,'String');
guess1 = str2double(get(handles.guess1_edit,'String'));
guess2 = str2double(get(handles.guess2_edit,'String'));
presicion = str2double(get(handles.error_edit,'String'));
itmax = str2double(get(handles.iter_edit,'String'));
val = get(handles.popupmenu1,'Value');
switch val
    
    % Bisection
    case 1
    [~, approx_root, presecion, t,convergence,rconv, expectedIter,~,~] = bisectionMethod(eqn, itmax,presicion,guess1, guess2);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);
    set(handles.iternumex,'String',expectedIter);
    set(handles.rate_static,'Visible','on');
    set(handles.rateANS,'Visible','on');
    set(handles.rateANS,'String',rconv);
    
   % False-position
    case 2
    [~, approx_root, presecion,convergence,rconv,~,~, t] = falsePositionMethod(eqn, itmax,presicion,guess1, guess2);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);
    set(handles.rate_static,'Visible','on');
    set(handles.rateANS,'Visible','on');
    set(handles.rateANS,'String',rconv);
        
    % Fixed point
    case 3
    [~, approx_root, convergence, rconv, presecion, t] = fixedPoinMethod(eqn, itmax,presicion,guess1);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);
    set(handles.rate_static,'Visible','on');
    set(handles.rateANS,'Visible','on');
    set(handles.rateANS,'String',rconv);
    
    % Newton-Raphson
    case 4
    set(handles.rate_static,'Visible','off');
    set(handles.rateANS,'Visible','off');
    [~, approx_root, convergence, presecion, t] = newtonRaphasonMethod(eqn , itmax, presicion, guess1);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);
%     set(handles.rateANS,'String',rconv);
        
    % Secant
    case 5
    set(handles.rate_static,'Visible','off');
    set(handles.rateANS,'Visible','off');
    [~, approx_root, convergence, presecion, t] = secantMethod(eqn, itmax, presicion, guess1, guess2);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);
        
    % Bierge-Vieta    
    case 6
    set(handles.rate_static,'Visible','off');
    set(handles.rateANS,'Visible','off');
    [~, approx_root, convergence, presecion, t] = birgeVietaMethod(eqn, itmax,presicion,guess1);
    set(handles.time_static2,'String',t);
    set(handles.none,'String',convergence);    
        
    % General Algorithm(Steffensen)    
    case 7
         set(handles.rate_static,'Visible','off');
         set(handles.rateANS,'Visible','off');
         [~, approx_root, presecion, convergence, t] = steffensen_method(eqn, guess1, presicion, itmax);
         set(handles.time_static2,'String',t);
         set(handles.none,'String',convergence);
end
out = [approx_root(:), presecion(:)];
set(handles.uitable3, 'ColumnWidth', {250,250,250},'Data',out);

% WRITING IN FILE 'results.txt'
if val == 1
part1Write(val, approx_root, presecion, t, expectedIter, convergence, rconv);
elseif val == 2 || val == 3
part1Write(val, approx_root, presecion, t, 0, convergence, rconv);
elseif val == 4 || val == 5 || val == 6 || val == 7
part1Write(val, approx_root, presecion, t, 0, convergence, 0);
end

% PLOTTING ON AXES
% ================
hold on
% plotting the x = y line in case of FIXED POINT ITERATION AND STEFFENSEN
if get(handles.popupmenu1,'Value') == 3 || get(handles.popupmenu1,'Value') == 7
x = [0:5:10];
y = x;
p1 = plot(x, y,'color','magenta');
text(approx_root(end)+1.5,approx_root(end)+1.5,'\leftarrow x = y')
y=-1000:0.001:1000; %How much is long
xi = line([approx_root(1) approx_root(1)],[y(1) y(end)],'color','red','LineWidth',0.5);

% plotting the derivative of the function in case of (Bierge-Vieta)
elseif get(handles.popupmenu1,'Value') == 6
    e = sym(eqn);
    de = diff(e);
    g3 = ezplot(de);
    set(g3,'color','red','LineWidth',0.5);
% plotting the boundries and tangent of (Newton-Raphson,Secant)
elseif get(handles.popupmenu1,'Value') == 4 || get(handles.popupmenu1,'Value') == 5
    e = str2sym(eqn);
    de = diff(e);
    g3 = ezplot(de);
    set(g3,'color','yellow','LineWidth',0.5);
    q = inline(eqn);
    if strcmp(convergence,'converges') == 1
        e1 = q(approx_root(1));
        e2 = q(approx_root(2));
        x1=approx_root(1);
        x2=approx_root(2);
        y=-1000:0.001:1000; %How much is long
        xlow = line([x1 x1],[y(1) y(end)],'color','magenta','LineWidth',0.5);
        xup = line([x2 x2],[y(1) y(end)],'color','red','LineWidth',0.5);

    %     slope and function of the line
        m = (e2-e1)/(x2-x1);
        c = e2 - m * x2;
        x3 = approx_root(1)+2;
        e3 = m*x3+c;
        x4 = approx_root(1)-2;
        e4 = m*x4+c;
        tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',0.5,'LineStyle','--');
    end

%   plotting the bounderies of bisection method    
elseif get(handles.popupmenu1,'Value') == 1
    x1=guess1;
    x2=guess2;
    y=-1000:0.001:1000; %How much is long
    xlow = line([x1 x1],[y(1) y(end)],'color','magenta','LineWidth',0.5);
    xup = line([x2 x2],[y(1) y(end)],'color','red','LineWidth',0.5);

%   plotting the bounderies and the tangent of false position method
elseif get(handles.popupmenu1,'Value') == 2
    q = inline(eqn);
    x1=guess1;
    x2=guess2;
    e1 = q(x1);
    e2 = q(x2);
    y=-1000:0.001:1000; %How much is long
    xlow = line([x1 x1],[y(1) y(end)],'color','magenta','LineWidth',0.5);
    xup = line([x2 x2],[y(1) y(end)],'color','red','LineWidth',0.5);
    
    %     slope and function of the line
    m = (e2-e1)/(x2-x1);
    c = e2 - m * x2;
    x3 = x1-2;
    e3 = m*x3+c;
    x4 = x2+2;
    e4 = m*x4+c;
    tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',0.5,'LineStyle','--');
end


% plotting x-axis & y-axis
% plotting the eqn in the equation text box
g1=ezplot( inline('0'));
set(g1,'color','black','LineWidth',0.5);
g2=plot(zeros(1001),[-500:500]);
set(g2,'color','black','LineWidth',0.5);
g1=ezplot( inline(eqn));
set(g1,'color','green','LineWidth',0.5);

%plotting the limits of the axes
if val == 1 || val == 2
    xlim([x1-0.5 x2+0.5])
else
    xlim([approx_root(end)-2 approx_root(end)+2])
end
ylim([-5 5])

% plotting the line at the root
x=approx_root(end);
y=-1000:0.001:1000; %How much is long
li = line([x x],[y(1) y(end)],'LineWidth',0.5);

% FILL THE LEGEND WITH ITS INFORMAYION DEPENDING ON POPUPMENU
if get(handles.popupmenu1,'Value') == 3 || get(handles.popupmenu1,'Value') == 7
legend([g1 p1 li xi],'function', 'y = x','Root','xi')
elseif get(handles.popupmenu1,'Value') == 6
    legend([g1 g3 li] ,'function','derivative','Root');
elseif get(handles.popupmenu1,'Value') == 4 || get(handles.popupmenu1,'Value') == 5
    if strcmp(convergence,'converges') == 1
        legend([g1 g3 xlow xup tang li] ,'function','derivative','xl','xu','tangent','Root');
    else
        legend([g1 li] ,'function','Root');
    end
elseif get(handles.popupmenu1,'Value') == 1
    legend([g1 xlow xup li] ,'function','xl','xu','Root');
elseif get(handles.popupmenu1,'Value') == 2
    legend([g1 xlow xup li tang] ,'function','xl','xu','Root','line interpolate');
end

hold off


% --- Executes on button press in next.
function next_Callback(hObject, eventdata, handles)
% hObject    handle to next (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

co = str2num(get(handles.co,'String'));
co = co + 1;
% RESET AXES
axes(handles.axes1);

% MAKES THE AXES ZOOM IN AND OUT
zoom on
eqn = get(handles.eqn_edit,'String');
guess1 = str2double(get(handles.guess1_edit,'String'));
guess2 = str2double(get(handles.guess2_edit,'String'));
presicion = str2double(get(handles.error_edit,'String'));
itmax = str2double(get(handles.iter_edit,'String'));

if get(handles.popupmenu1,'Value') == 1
[maxiter, approx_root, ~, ~,~, ~,~,vecXu,vecXl] = bisectionMethod(eqn, itmax,presicion,guess1, guess2);
elseif get(handles.popupmenu1,'Value') == 2
[maxiter, approx_root, ~, ~,~,vecXu,vecXl, ~] = falsePositionMethod(eqn, itmax,presicion,guess1, guess2);
elseif get(handles.popupmenu1,'Value') == 3
[maxiter, approx_root, ~, ~, ~, ~] = fixedPoinMethod(eqn, itmax,presicion,guess1);
elseif get(handles.popupmenu1,'Value') == 7
[maxiter, approx_root, ~, ~, ~] = steffensen_method(eqn, guess1, presicion, itmax);
elseif get(handles.popupmenu1,'Value') == 4
[maxiter, approx_root, convergence, ~, ~] = newtonRaphasonMethod(eqn , itmax, presicion, guess1);
elseif get(handles.popupmenu1,'Value') == 5
[maxiter, approx_root, convergence, ~, ~] = secantMethod(eqn, itmax, presicion, guess1, guess2);
end

% THE BISECTION AND THE FALSE POSITION AND NEWTON RAPHSON
% =======================================================
if get(handles.popupmenu1,'Value') == 1 || get(handles.popupmenu1,'Value') == 2 || get(handles.popupmenu1,'Value') == 4
    if co > maxiter
      return
    end
    cla reset
elseif get(handles.popupmenu1,'Value') == 5
    if co > maxiter - 1
      return
    end
    cla reset
elseif get(handles.popupmenu1,'Value') == 7 || get(handles.popupmenu1,'Value') == 3
    if co > maxiter + 1
      return
    end
    cla reset
end
hold on

% THE BISECTION AND THE FALSE POSITION 
% ====================================
if get(handles.popupmenu1,'Value') == 1 || get(handles.popupmenu1,'Value') == 2
    vecXu(co)
    vecXl(co)
    y=-1000:0.001:1000; %How much is long
    xlow = line([vecXl(co) vecXl(co)],[y(1) y(end)],'color','magenta','LineWidth',0.5);
    xup = line([vecXu(co) vecXu(co)],[y(1) y(end)],'color','red','LineWidth',0.5);
    set(handles.co,'String',co);
    
    % plotting x-axis & y-axis
    % plotting the eqn in the equation text box
    g1=ezplot( inline('0'));
    set(g1,'color','black','LineWidth',0.5);
    g2=plot(zeros(1001),[-500:500]);
    set(g2,'color','black','LineWidth',0.5);
    g1=ezplot( inline(eqn));
    set(g1,'color','green','LineWidth',0.5);

    % plotting the line at the root
    x=approx_root(end);
    y=-1000:0.001:1000; %How much is long
    li = line([x x],[y(1) y(end)],'LineWidth',0.5);

if get(handles.popupmenu1,'Value') == 2
    %plotting the limits of the axes
    xlim([vecXl(co)-1 vecXu(co)+1])
    ylim([-5 5])

    q = inline(eqn);
    x1=vecXl(co);
    x2=vecXu(co);
    e1 = q(x1);
    e2 = q(x2);
    
    %     slope and function of the line
    m = (e2-e1)/(x2-x1);
    c = e2 - m * x2;
    x3 = x1-2;
    e3 = m*x3+c;
    x4 = x2+2;
    e4 = m*x4+c;
    tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',0.5,'LineStyle','--');
    legend([g1 xlow xup li tang] ,'function','xl','xu','Root','line interpolate');
else
    %plotting the limits of the axes
    xlim([vecXl(co)-0.1 vecXu(co)+0.1])
    ylim([-5 5])
    legend([g1 xlow xup li] ,'function','xl','xu','Root');
end
hold off

% THE FIXED POINT ITERATION AND STEFFENSEN
% ========================================
elseif get(handles.popupmenu1,'Value') == 3 || get(handles.popupmenu1,'Value') == 7
x = [0:5:10];
y = x;
p1 = plot(x, y,'color','magenta');
text(approx_root(co)+0.5,approx_root(co)+0.5,'\leftarrow x = y')
x1=approx_root(co);
y=-1000:0.001:1000; %How much is long
xi = line([x1 x1],[y(1) y(end)],'color','red','LineWidth',0.5);
set(handles.co,'String',co);
    % plotting x-axis & y-axis
    % plotting the eqn in the equation text box
    g1=ezplot( inline('0'));
    set(g1,'color','black','LineWidth',0.5);
    g2=plot(zeros(1001),[-500:500]);
    set(g2,'color','black','LineWidth',0.5);
    g1=ezplot( inline(eqn));
    set(g1,'color','green','LineWidth',0.5);
    
    %plotting the limits of the axes
    xlim([x1-1 x1+1])
    ylim([-5 5])

    % plotting the line at the root
    x=approx_root(end);
    y=-1000:0.001:1000; %How much is long
    li = line([x x],[y(1) y(end)],'LineWidth',0.5);
legend([g1 p1 li xi],'function', 'y = x','Root','xi')
hold off

% THE NEWTON RAPHSON METHOD AND SECANT
% ====================================
elseif get(handles.popupmenu1,'Value') == 4 || get(handles.popupmenu1,'Value') == 5
        if strcmp(convergence,'converges') == 1
        e = str2sym(eqn);
        de = diff(e);
        g3 = ezplot(de);
        set(g3,'color','yellow','LineWidth',0.5);
        q = inline(eqn);
        e1 = q(approx_root(co));
        e2 = q(approx_root(co + 1));
        x1=approx_root(co);
        x2=approx_root(co + 1);
        y=-1000:0.001:1000; %How much is long
        xlow = line([x1 x1],[y(1) y(end)],'color','magenta','LineWidth',0.5);
        xup = line([x2 x2],[y(1) y(end)],'color','red','LineWidth',0.5);

        %     slope and function of the line
        m = (e2-e1)/(x2-x1);
        c = e2 - m * x2;
        x3 = approx_root(co)+2;
        e3 = m*x3+c;
        x4 = approx_root(co)-2;
        e4 = m*x4+c;
        tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',2,'LineStyle','--');    
        set(handles.co,'String',co);

        % plotting x-axis & y-axis
        % plotting the eqn in the equation text box
        g1=ezplot( inline('0'));
        set(g1,'color','black','LineWidth',0.5);
        g2=plot(zeros(1001),[-500:500]);
        set(g2,'color','black','LineWidth',0.5);
        g1=ezplot( inline(eqn));
        set(g1,'color','green','LineWidth',0.5);

        %plotting the limits of the axes
        xlim([x1-0.1 x2+0.1])
        ylim([-5 5])

        % plotting the line at the root
        x=approx_root(end);
        y=-1000:0.001:1000; %How much is long
        li = line([x x],[y(1) y(end)],'LineWidth',0.5);
    hold off
    legend([g1 g3 xlow xup tang li] ,'function','derivative','xl','xu','tangent','Root');
        end

end


% --- Executes on button press in all_methods.
function all_methods_Callback(hObject, eventdata, handles)
% hObject    handle to all_methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
all_methods


function co_Callback(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co as text
%        str2double(get(hObject,'String')) returns contents of co as a double


% --- Executes during object creation, after setting all properties.
function co_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in prev.
function prev_Callback(hObject, eventdata, handles)
% hObject    handle to prev (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
co = str2num(get(handles.co,'String'));
co = co - 1;
% RESET AXES
axes(handles.axes1);

% MAKES THE AXES ZOOM IN AND OUT
zoom on
eqn = get(handles.eqn_edit,'String');
guess1 = str2double(get(handles.guess1_edit,'String'));
guess2 = str2double(get(handles.guess2_edit,'String'));
presicion = str2double(get(handles.error_edit,'String'));
itmax = str2double(get(handles.iter_edit,'String'));

if get(handles.popupmenu1,'Value') == 1
[~, approx_root, ~, ~,~,~,~,vecXu,vecXl] = bisectionMethod(eqn, itmax,presicion,guess1, guess2);
elseif get(handles.popupmenu1,'Value') == 2
[~, approx_root, ~, ~,~,vecXu,vecXl, ~] = falsePositionMethod(eqn, itmax,presicion,guess1, guess2);
elseif get(handles.popupmenu1,'Value') == 3
[~, approx_root, ~, ~, ~, ~] = fixedPoinMethod(eqn, itmax,presicion,guess1);
elseif get(handles.popupmenu1,'Value') == 7
[~, approx_root, ~, ~, ~] = steffensen_method(eqn, guess1, presicion, itmax);
elseif get(handles.popupmenu1,'Value') == 4 
[~, approx_root, convergence, ~, ~] = newtonRaphasonMethod(eqn , itmax, presicion, guess1);
elseif get(handles.popupmenu1,'Value') == 5
[~, approx_root, convergence, ~, ~] = secantMethod(eqn, itmax, presicion, guess1, guess2);
end

% THE ALL METHODS
% ===============
    if co < 1
      return
    end
    cla reset

hold on
% THE BISECTION AND THE FALSE POSITION 
% ====================================
if get(handles.popupmenu1,'Value') == 1 || get(handles.popupmenu1,'Value') == 2
    vecXu(co)
    vecXl(co)
    y=-1000:0.001:1000; %How much is long
    xlow = line([vecXl(co) vecXl(co)],[y(1) y(end)],'color','magenta','LineWidth',0.5);
    xup = line([vecXu(co) vecXu(co)],[y(1) y(end)],'color','red','LineWidth',0.5);
    set(handles.co,'String',co);
    
    % plotting x-axis & y-axis
    % plotting the eqn in the equation text box
    g1=ezplot( inline('0'));
    set(g1,'color','black','LineWidth',0.5);
    g2=plot(zeros(1001),[-500:500]);
    set(g2,'color','black','LineWidth',0.5);
    g1=ezplot( inline(eqn));
    set(g1,'color','green','LineWidth',0.5);

    % plotting the line at the root
    x=approx_root(end);
    y=-1000:0.001:1000; %How much is long
    li = line([x x],[y(1) y(end)],'LineWidth',0.5);
   
if get(handles.popupmenu1,'Value') == 2
    %plotting the limits of the axes
    xlim([vecXl(co)-2 vecXu(co)+1])
    ylim([-5 5])

    q = inline(eqn);
    x1=vecXl(co);
    x2=vecXu(co);
    e1 = q(x1);
    e2 = q(x2);
    
    %     slope and function of the line
    m = (e2-e1)/(x2-x1);
    c = e2 - m * x2;
    x3 = x1-2;
    e3 = m*x3+c;
    x4 = x2+2;
    e4 = m*x4+c;
    tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',0.5,'LineStyle','--');
    legend([g1 xlow xup li tang] ,'function','xl','xu','Root','line interpolate');
else
    %plotting the limits of the axes
    xlim([vecXl(co)-0.1 vecXu(co)+0.1])
    ylim([-5 5])
    legend([g1 xlow xup li] ,'function','xl','xu','Root');
end

% THE FIXED POINT ITERATION
% =========================
elseif get(handles.popupmenu1,'Value') == 3 || get(handles.popupmenu1,'Value') == 7
x = [0:5:10];
y = x;
p1 = plot(x, y,'color','magenta');
text(approx_root(co)+0.5,approx_root(co)+0.5,'\leftarrow x = y')
x1=approx_root(co);
y=-1000:0.001:1000; %How much is long
xi = line([x1 x1],[y(1) y(end)],'color','red','LineWidth',0.5);
set(handles.co,'String',co);
    % plotting x-axis & y-axis
    % plotting the eqn in the equation text box
    g1=ezplot( inline('0'));
    set(g1,'color','black','LineWidth',0.5);
    g2=plot(zeros(1001),[-500:500]);
    set(g2,'color','black','LineWidth',0.5);
    g1=ezplot( inline(eqn));
    set(g1,'color','green','LineWidth',0.5);
    
    %plotting the limits of the axes
    xlim([x1-1 x1+1])
    ylim([-5 5])

    % plotting the line at the root
    x=approx_root(end);
    y=-1000:0.001:1000; %How much is long
    li = line([x x],[y(1) y(end)],'LineWidth',0.5);
legend([g1 p1 li xi],'function', 'y = x','Root','xi')
hold off


% THE NEWTON RAPHSON METHOD AND SECANT
% ====================================
elseif get(handles.popupmenu1,'Value') == 4 || get(handles.popupmenu1,'Value') == 5
    if strcmp(convergence,'converges') == 1
        e = str2sym(eqn);
        de = diff(e);
        g3 = ezplot(de);
        set(g3,'color','yellow','LineWidth',0.5);
        q = inline(eqn);
        e1 = q(approx_root(co));
        e2 = q(approx_root(co + 1));
        x1=approx_root(co);
        x2=approx_root(co + 1);
        y=-1000:0.001:1000; %How much is long
        xlow = line([x1 x1],[y(1) y(end)],'color','magenta','LineWidth',0.5);
        xup = line([x2 x2],[y(1) y(end)],'color','red','LineWidth',0.5);

        %     slope and function of the line
        m = (e2-e1)/(x2-x1);
        c = e2 - m * x2;
        x3 = approx_root(co)+2;
        e3 = m*x3+c;
        x4 = approx_root(co)-2;
        e4 = m*x4+c;
        tang = line([x3 x4],[e3 e4],'color','cyan','LineWidth',2,'LineStyle','--');    
        set(handles.co,'String',co);

        % plotting x-axis & y-axis
        % plotting the eqn in the equation text box
        g1=ezplot( inline('0'));
        set(g1,'color','black','LineWidth',0.5);
        g2=plot(zeros(1001),[-500:500]);
        set(g2,'color','black','LineWidth',0.5);
        g1=ezplot( inline(eqn));
        set(g1,'color','green','LineWidth',0.5);

        %plotting the limits of the axes
        xlim([x1-0.1 x2+0.1])
        ylim([-5 5])

        % plotting the line at the root
        x=approx_root(end);
        y=-1000:0.001:1000; %How much is long
        li = line([x x],[y(1) y(end)],'LineWidth',0.5);
    hold off
    legend([g1 g3 xlow xup tang li] ,'function','derivative','xl','xu','tangent','Root');
    end

end
