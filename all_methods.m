function varargout = all_methods(varargin)
% ALL_METHODS MATLAB code for all_methods.fig
%      ALL_METHODS, by itself, creates a new ALL_METHODS or raises the existing
%      singleton*.
%
%      H = ALL_METHODS returns the handle to a new ALL_METHODS or the handle to
%      the existing singleton*.
%
%      ALL_METHODS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ALL_METHODS.M with the given input arguments.
%
%      ALL_METHODS('Property','Value',...) creates a new ALL_METHODS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before all_methods_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to all_methods_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help all_methods

% Last Modified by GUIDE v2.5 04-May-2019 02:33:38

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @all_methods_OpeningFcn, ...
                   'gui_OutputFcn',  @all_methods_OutputFcn, ...
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


% --- Executes just before all_methods is made visible.
function all_methods_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to all_methods (see VARARGIN)

% Choose default command line output for all_methods
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes all_methods wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = all_methods_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function eqn1_Callback(hObject, eventdata, handles)
% hObject    handle to eqn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn1 as text
%        str2double(get(hObject,'String')) returns contents of eqn1 as a double


% --- Executes during object creation, after setting all properties.
function eqn1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter1_Callback(hObject, eventdata, handles)
% hObject    handle to iter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter1 as text
%        str2double(get(hObject,'String')) returns contents of iter1 as a double


% --- Executes during object creation, after setting all properties.
function iter1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error1_Callback(hObject, eventdata, handles)
% hObject    handle to error1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error1 as text
%        str2double(get(hObject,'String')) returns contents of error1 as a double


% --- Executes during object creation, after setting all properties.
function error1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit1_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit1 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit1 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess2_edit1_Callback(hObject, eventdata, handles)
% hObject    handle to guess2_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess2_edit1 as text
%        str2double(get(hObject,'String')) returns contents of guess2_edit1 as a double


% --- Executes during object creation, after setting all properties.
function guess2_edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess2_edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.text40,'Visible','on');
set(handles.text41,'Visible','on');
set(handles.text42,'Visible','on');
set(handles.text43,'Visible','on');
set(handles.text44,'Visible','on');
set(handles.text45,'Visible','on');
set(handles.text46,'Visible','on');

% RESET AXES
axes(handles.axes1);
cla reset

% MAKES THE AXES ZOOM IN AND OUT
zoom on

% TO DRAW MORE THAN ONE PLOT OR MORE THAN ONE CURVE
hold on

axes1 = gca;
axes1.XAxisLocation = 'origin';
axes1.YAxisLocation = 'origin';
% % plotting x-axis & y-axis

% g1=ezplot( inline('0'));
% set(g1,'color','black','LineWidth',0.5);
% g2=plot(zeros(2001),[-1000:1000]);
% set(g2,'color','black','LineWidth',0.5);
set(gca, 'XTick',0:100)
% set(gca, 'YTick',0:100)
xlabel('Number of Iterations')
ylabel('Root')
grid on
grid minor

%BISECTION METHOD
set(handles.none1,'String','None');
set(handles.iternumex,'String','');
eqn = get(handles.eqn1,'String');
guess1 = str2double(get(handles.guess1_edit1,'String'));
guess2 = str2double(get(handles.guess2_edit1,'String'));
presicion = str2double(get(handles.error1,'String'));
itmax = str2double(get(handles.iter1,'String'));
[maxiter, approx_root, presecion, t,convergence,rconv, expectedIter,~,~] = bisectionMethod(eqn, itmax,presicion,guess1, guess2);
    set(handles.time1,'String',t);
    set(handles.iternumex,'String',expectedIter);
    set(handles.none1,'String',convergence);
    set(handles.bis_rate,'String',rconv);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable1,'Visible','on');
    set(handles.uitable1, 'ColumnWidth', {100,100,100},'Data',out);
    p1 = presecion;
    conv1 = 0;
    if strcmp(convergence,'converges') == 1
        conv1 = 1;
    %     plot the iter & root
        it1 = 1:1:maxiter;
        plot(it1, approx_root,'DisplayName','Bisection');
    end
    
% WRITING IN FILE 'results.txt'
part1WriteAll(1, approx_root, presecion, t, expectedIter, convergence, rconv);
    
%FALSE-POSITION METHOD
set(handles.none2,'String','None');
eqn = get(handles.eqn2,'String');
guess1 = str2double(get(handles.guess1_edit2,'String'));
guess2 = str2double(get(handles.guess2_edit2,'String'));
presicion = str2double(get(handles.error2,'String'));
itmax = str2double(get(handles.iter2,'String'));
[iter, approx_root, presecion,convergence,rconv,~,~, t] = falsePositionMethod(eqn, itmax,presicion,guess1, guess2);
    set(handles.time2,'String',t);
    set(handles.none2,'String',convergence);
    set(handles.fals_rate,'String',rconv);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable2,'Visible','on');
    set(handles.uitable2, 'ColumnWidth', {100,100,100},'Data',out);
    p2 = presecion;
    conv2 = 0;
    
    if strcmp(convergence,'converges') == 1
        conv2 = 1;
        %     plot the iter & root
        it2 = 1:1:iter;
        plot(it2, approx_root,'DisplayName','False-position');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(2, approx_root, presecion, t, 0, convergence, rconv);


%FIXED-POINT METHOD
set(handles.none3,'String','None');
eqn = get(handles.eqn3,'String');
guess1 = str2double(get(handles.guess1_edit3,'String'));
presicion = str2double(get(handles.error3,'String'));
itmax = str2double(get(handles.iter3,'String'));
[iter, approx_root, convergence, rconv, presecion, t] = fixedPoinMethod(eqn, itmax, presicion, guess1);
    set(handles.time3,'String',t);
    set(handles.none3,'String',convergence);
    set(handles.fixedrate,'String',rconv);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable3,'Visible','on');
    set(handles.uitable3, 'ColumnWidth', {100,100,100},'Data',out);
    p3 = presecion;
    conv3 = 0;
    
    if strfind(convergence, 'converge') == 1
        conv3 = 1;
    %     plot the iter & root
        it3 = 1:1:iter;
        plot(it3, approx_root,'DisplayName','Fixed-Point');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(3, approx_root, presecion, t, 0, convergence, rconv);

%NEWTON-RAPHASON METHOD
set(handles.none4,'String','None');
eqn = get(handles.eqn4,'String');
guess1 = str2double(get(handles.guess1_edit4,'String'));
presicion = str2double(get(handles.error4,'String'));
itmax = str2double(get(handles.iter1,'String'));
[maxiter, approx_root, convergence, presecion, t] = newtonRaphasonMethod(eqn , itmax, presicion, guess1);
    set(handles.time4,'String',t);
    set(handles.none4,'String',convergence);
%     set(handles.newtonrate,'String',rconv);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable4,'Visible','on');
    set(handles.uitable4, 'ColumnWidth', {100,100,100},'Data',out);
    p4 = presecion;
    conv4 = 0;
    
    if strcmp(convergence,'converges') == 1
        conv4 = 1;
    %     plot the iter & root
        it4 = 1:1:maxiter+1;
        plot(it4, approx_root,'DisplayName','Newton');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(4, approx_root, presecion, t, 0, convergence, 0);

%SECANT METHOD
set(handles.none5,'String','None');
eqn = get(handles.eqn5,'String');
guess1 = str2double(get(handles.guess1_edit5,'String'));
guess2 = str2double(get(handles.guess2_edit5,'String'));
presicion = str2double(get(handles.error5,'String'));
itmax = str2double(get(handles.iter5,'String'));
[iter, approx_root, convergence, presecion, t] = secantMethod(eqn, itmax, presicion, guess1, guess2);
    set(handles.time5,'String',t);
    set(handles.none5,'String',convergence);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable5,'Visible','on');
    set(handles.uitable5, 'ColumnWidth', {100,100,100},'Data',out);
    p5 = presecion;
    conv5 = 0;
    
    if strcmp(convergence,'converges') == 1
        conv5 = 1;
    %     plot the iter & root
        it5 = 1:1:iter;
        plot(it5, approx_root,'DisplayName','Secant');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(5, approx_root, presecion, t, 0, convergence, 0);

%BIERGE-VIETA METHOD
set(handles.none6,'String','None');
eqn = get(handles.eqn6,'String');
guess1 = str2double(get(handles.guess1_edit6,'String'));
presicion = str2double(get(handles.error6,'String'));
itmax = str2double(get(handles.iter6,'String'));
[itmax, approx_root, convergence, presecion, t] = birgeVietaMethod(eqn, itmax,presicion,guess1);
    set(handles.time6,'String',t);
    set(handles.none6,'String',convergence);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable6,'Visible','on');
    set(handles.uitable6, 'ColumnWidth', {100,100,100},'Data',out);
    p6 = presecion;
    conv6 = 0;
    
    if strcmp(convergence,'converges') == 1
        conv6 = 1;
    %     plot the iter & root
        it6 = 1:1:itmax+1;
        plot(it6, approx_root,'DisplayName','Bierge-Vieta');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(6, approx_root, presecion, t, 0, convergence, 0);

%STEFFENSEN METHOD
set(handles.none7,'String','None');
eqn = get(handles.eqn7,'String');
guess1 = str2double(get(handles.guess1_edit7,'String'));
presicion = str2double(get(handles.error7,'String'));
itmax = str2double(get(handles.iter7,'String'));
[iter, approx_root, presecion, convergence, t] = steffensen_method(eqn, guess1, presicion, itmax);
         set(handles.time7,'String',t);
         set(handles.none7,'String',convergence);
    out = [approx_root(:), presecion(:)];
    set(handles.uitable7,'Visible','on');
    set(handles.uitable7, 'ColumnWidth', {100,100,100},'Data',out);
    p7 = presecion;
    conv7 = 0;
    
    if strcmp(convergence,'converges') == 1
        conv7 = 1;
    %     plot the iter & root
        it7 = 1:1:iter;
        plot(it7, approx_root,'DisplayName','Steffensen');
    end
    
    % WRITING IN FILE 'results.txt'
    part1WriteAll(7, approx_root, presecion, t, 0, convergence, 0);
    legend(gca,'show')
% legend(axes1,{'Bisection','False-Position','Fixed-Point','Newton','Secant','Bierge-Vieta','Steffensen'})
    hold off
    
%     PLOTTING THE ITER AND PRESICION
figure1 = figure;
 axes('Parent',figure1,...
     'Position',[0.1300 0.1100 0.7750 0.8150]); 
set(gca, 'XTick',0:100)
% set(gca, 'YTick',0:100)
xlabel('Number of Iterations')
ylabel('Error')
grid on
grid minor
hold on
if conv1 == 1
plot(it1, p1,'DisplayName','Bisection');
end
if conv2 == 1
plot(it2, p2,'DisplayName','False-Position');
end
if conv3 == 1
plot(it3, p3,'DisplayName','Fixed-Point');
end
if conv4 == 1
plot(it4, p4,'DisplayName','Newton');
end
if conv5 == 1
plot(it5, p5,'DisplayName','Secant');
end
if conv6 == 1
plot(it6, p6,'DisplayName','Bierge-Vieta');
end
if conv7 == 1
plot(it7, p7,'DisplayName','Steffensen');
end
legend(gca,'show')
% legend({'Bisection','False-Position','Fixed-Point','Newton','Secant','Bierge-Vieta','Steffensen'})
hold off

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%BISECTION METHOD
str1 = get(handles.eqn1,'String');
plotting(str1)

%FALSE-POSITION METHOD
str2 = get(handles.eqn2,'String');
plotting(str2)

%FIXED-POINT METHOD
str3 = get(handles.eqn3,'String');
str3 = strcat(str3, '+x');
plotting(str3)

%NEWTON-RAPHASON METHOD
str4 = get(handles.eqn4,'String');
plotting(str4)

%SECANT METHOD
str5 = get(handles.eqn5,'String');
plotting(str5)

%BIERGE-VIETA METHOD
str6 = get(handles.eqn6,'String');
plotting(str6)

%STEFFENSEN METHOD
str7 = get(handles.eqn7,'String');
str7 = strcat(str7, '+x');
plotting(str7)



function eqn2_Callback(hObject, eventdata, handles)
% hObject    handle to eqn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn2 as text
%        str2double(get(hObject,'String')) returns contents of eqn2 as a double


% --- Executes during object creation, after setting all properties.
function eqn2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqn6_Callback(hObject, eventdata, handles)
% hObject    handle to eqn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn6 as text
%        str2double(get(hObject,'String')) returns contents of eqn6 as a double


% --- Executes during object creation, after setting all properties.
function eqn6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqn4_Callback(hObject, eventdata, handles)
% hObject    handle to eqn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn4 as text
%        str2double(get(hObject,'String')) returns contents of eqn4 as a double


% --- Executes during object creation, after setting all properties.
function eqn4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqn3_Callback(hObject, eventdata, handles)
% hObject    handle to eqn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn3 as text
%        str2double(get(hObject,'String')) returns contents of eqn3 as a double


% --- Executes during object creation, after setting all properties.
function eqn3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqn5_Callback(hObject, eventdata, handles)
% hObject    handle to eqn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn5 as text
%        str2double(get(hObject,'String')) returns contents of eqn5 as a double


% --- Executes during object creation, after setting all properties.
function eqn5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function eqn7_Callback(hObject, eventdata, handles)
% hObject    handle to eqn7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of eqn7 as text
%        str2double(get(hObject,'String')) returns contents of eqn7 as a double


% --- Executes during object creation, after setting all properties.
function eqn7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to eqn7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit2_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit2 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit2 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit4_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit4 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit4 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit3_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit3 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit3 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit6_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit6 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit6 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit5_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit5 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit5 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess1_edit7_Callback(hObject, eventdata, handles)
% hObject    handle to guess1_edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess1_edit7 as text
%        str2double(get(hObject,'String')) returns contents of guess1_edit7 as a double


% --- Executes during object creation, after setting all properties.
function guess1_edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess1_edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error2_Callback(hObject, eventdata, handles)
% hObject    handle to error2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error2 as text
%        str2double(get(hObject,'String')) returns contents of error2 as a double


% --- Executes during object creation, after setting all properties.
function error2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error4_Callback(hObject, eventdata, handles)
% hObject    handle to error4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error4 as text
%        str2double(get(hObject,'String')) returns contents of error4 as a double


% --- Executes during object creation, after setting all properties.
function error4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error3_Callback(hObject, eventdata, handles)
% hObject    handle to error3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error3 as text
%        str2double(get(hObject,'String')) returns contents of error3 as a double


% --- Executes during object creation, after setting all properties.
function error3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error5_Callback(hObject, eventdata, handles)
% hObject    handle to error5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error5 as text
%        str2double(get(hObject,'String')) returns contents of error5 as a double


% --- Executes during object creation, after setting all properties.
function error5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error6_Callback(hObject, eventdata, handles)
% hObject    handle to error6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error6 as text
%        str2double(get(hObject,'String')) returns contents of error6 as a double


% --- Executes during object creation, after setting all properties.
function error6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function error7_Callback(hObject, eventdata, handles)
% hObject    handle to error7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of error7 as text
%        str2double(get(hObject,'String')) returns contents of error7 as a double


% --- Executes during object creation, after setting all properties.
function error7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to error7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter2_Callback(hObject, eventdata, handles)
% hObject    handle to iter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter2 as text
%        str2double(get(hObject,'String')) returns contents of iter2 as a double


% --- Executes during object creation, after setting all properties.
function iter2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter3_Callback(hObject, eventdata, handles)
% hObject    handle to iter3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter3 as text
%        str2double(get(hObject,'String')) returns contents of iter3 as a double


% --- Executes during object creation, after setting all properties.
function iter3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter4_Callback(hObject, eventdata, handles)
% hObject    handle to iter4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter4 as text
%        str2double(get(hObject,'String')) returns contents of iter4 as a double


% --- Executes during object creation, after setting all properties.
function iter4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter5_Callback(hObject, eventdata, handles)
% hObject    handle to iter5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter5 as text
%        str2double(get(hObject,'String')) returns contents of iter5 as a double


% --- Executes during object creation, after setting all properties.
function iter5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter6_Callback(hObject, eventdata, handles)
% hObject    handle to iter6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter6 as text
%        str2double(get(hObject,'String')) returns contents of iter6 as a double


% --- Executes during object creation, after setting all properties.
function iter6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iter7_Callback(hObject, eventdata, handles)
% hObject    handle to iter7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iter7 as text
%        str2double(get(hObject,'String')) returns contents of iter7 as a double


% --- Executes during object creation, after setting all properties.
function iter7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess2_edit2_Callback(hObject, eventdata, handles)
% hObject    handle to guess2_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess2_edit2 as text
%        str2double(get(hObject,'String')) returns contents of guess2_edit2 as a double


% --- Executes during object creation, after setting all properties.
function guess2_edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess2_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function guess2_edit5_Callback(hObject, eventdata, handles)
% hObject    handle to guess2_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guess2_edit5 as text
%        str2double(get(hObject,'String')) returns contents of guess2_edit5 as a double


% --- Executes during object creation, after setting all properties.
function guess2_edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guess2_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
