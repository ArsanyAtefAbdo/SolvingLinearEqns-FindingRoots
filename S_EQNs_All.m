function varargout = S_EQNs_All(varargin)
% S_EQNS_ALL MATLAB code for S_EQNs_All.fig
%      S_EQNS_ALL, by itself, creates a new S_EQNS_ALL or raises the existing
%      singleton*.
%
%      H = S_EQNS_ALL returns the handle to a new S_EQNS_ALL or the handle to
%      the existing singleton*.
%
%      S_EQNS_ALL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in S_EQNS_ALL.M with the given input arguments.
%
%      S_EQNS_ALL('Property','Value',...) creates a new S_EQNS_ALL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before S_EQNs_All_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to S_EQNs_All_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help S_EQNs_All

% Last Modified by GUIDE v2.5 08-May-2019 15:09:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @S_EQNs_All_OpeningFcn, ...
                   'gui_OutputFcn',  @S_EQNs_All_OutputFcn, ...
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


% --- Executes just before S_EQNs_All is made visible.
function S_EQNs_All_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to S_EQNs_All (see VARARGIN)

% Choose default command line output for S_EQNs_All
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes S_EQNs_All wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = S_EQNs_All_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function maxiter_Callback(hObject, eventdata, handles)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxiter as text
%        str2double(get(hObject,'String')) returns contents of maxiter as a double


% --- Executes during object creation, after setting all properties.
function maxiter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsilon_Callback(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, eventdata, handles)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function GE_Callback(hObject, eventdata, handles)
% hObject    handle to GE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GE as text
%        str2double(get(hObject,'String')) returns contents of GE as a double


% --- Executes during object creation, after setting all properties.
function GE_CreateFcn(hObject, ~, handles)
% hObject    handle to GE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in solveAll.
function solveAll_Callback(~, ~, handles)

global out;
out = "";
fileID = fopen('results.txt','w');
% Gauss Elimination
eqns = get(handles.GE, "String");
[n,~] = size(eqns);
if n > 1
    [sol,symbols,time] = gaussElimination(eqns);
    out(1) = "Gauss Elimination :";
    for i=1:n
        s = [char(symbols(i)) ' = ' num2str(sol(i))];
        out(end+1) = convertCharsToStrings(s);
    end
    s = [num2str(time) ' sec'];
    out(end+1) = convertCharsToStrings(s);
    out(end+1) = "-------------------------";
end

% Gauss Jordan
eqns = get(handles.GJ, "String");
[n,~] = size(eqns);
if n > 1
    [sol,symbols,time] = gaussJordan(eqns);
    out(end+1) = "Gauss Jordan :";
    for i=1:n
        s = [char(symbols(i)) ' = ' num2str(sol(i))];
        out(end+1) = convertCharsToStrings(s);
    end
    s = [num2str(time) ' sec'];
    out(end+1) = convertCharsToStrings(s);
    out(end+1) = "-------------------------";
end

% LU decomposotion
eqns = get(handles.LU, "String");
[n,~] = size(eqns);
if n > 1
    [sol,symbols,time] = LUdecomposition(eqns);
    out(end+1) = "LU decomposotion :";
    for i=1:n
        s = [char(symbols(i)) ' = ' num2str(sol(i))];
        out(end+1) = convertCharsToStrings(s);
    end
    s = [num2str(time) ' sec'];
    out(end+1) = convertCharsToStrings(s);
    out(end+1) = "-------------------------";
end

% Gauss-Seidel iterative method.
eqns = get(handles.GS, "String");
[n,~] = size(eqns);
h = 0;
if n > 1
    maxiter = get(handles.maxiter, "String");
    epsilon = get(handles.epsilon, "String");
    guesses = get(handles.guesses, "String");
    guesses = split(guesses, " ");
    [sol,symbols,precision,iter,time] = gaussSeidel(eqns,maxiter,epsilon,guesses);
    
    % set no of iterations
    set(handles.iterations,'string',iter);

    % prepare table data
    solution = zeros(1,n);
    columns = strings(1,2*n);
    table = zeros(iter,2*n);
    for i = 1:n
        solution(1,i) = sol(i,end);
        table(:,i*2-1) = sol(i,:);
        table(:,i*2) = precision(i,:);
        columns(i*2-1) = char(symbols(i));
        s = ['E' char(symbols(i))];
        columns(i*2) = convertCharsToStrings(s);
    end

    % fill the table
    set(handles.table,'data',table, 'ColumnName', columns);

    % prepare the answers
    out(end+1) = "Gauss Seidel :";
        for i=1:n
            s = [char(symbols(i)) ' = ' num2str(solution(i))];
            out(end+1) = convertCharsToStrings(s);
        end
        s = [num2str(time) ' sec'];
        out(end+1) = convertCharsToStrings(s);

    %start plotting
    x = (0 : 1 : iter);
    g(1) = plot((sol(1,:)));
    set(g(1),'LineWidth',0.5);
    legend(g)
    for i = 2 : n
        hold on
        g(i) = plot((sol(i,:)));
        set(g(i),'LineWidth',0.5);
        hold off
    end
    zoom on
    ymin = round(min(solution) - 0.5);
    ymax = round(max(solution) + 0.5);
    ylim([ymin ymax]);
    set(gca, 'XTick', 1:iter, 'XTickLabel', x)
    set(gca,'XGrid','on')
    set(gca,'YGrid','on')
    h = 1;
end

% set answers for all methods
set(handles.answers,'string',out);
[~,k] = size (out);
for i=1:k
    fprintf(fileID,'%s\r\n',out(i));
end
if h
    % print table on file
    for i=1:2*n-1
        fprintf(fileID,'%14s',columns(i));
    end
    fprintf(fileID,'%14s\r\n',columns(2*n));
    for i = 1:iter
        for j = 1:2*n-1
           fprintf(fileID,'%14.6f',table(i,j)); 
        end
        fprintf(fileID,'%14.6f\r\n',table(i,2*n));
    end
    % print no of iterations on file
    fprintf(fileID,'%s %d \r\n','Number Of Iterations = ', iter);
end
fclose(fileID);





function guesses_Callback(hObject, eventdata, handles)
% hObject    handle to guesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guesses as text
%        str2double(get(hObject,'String')) returns contents of guesses as a double


% --- Executes during object creation, after setting all properties.
function guesses_CreateFcn(hObject, eventdata, handles)
% hObject    handle to guesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GS_Callback(hObject, eventdata, handles)
% hObject    handle to GS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GS as text
%        str2double(get(hObject,'String')) returns contents of GS as a double


% --- Executes during object creation, after setting all properties.
function GS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GJ_Callback(hObject, eventdata, handles)
% hObject    handle to GJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of GJ as text
%        str2double(get(hObject,'String')) returns contents of GJ as a double


% --- Executes during object creation, after setting all properties.
function GJ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GJ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function LU_Callback(hObject, eventdata, handles)
% hObject    handle to LU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of LU as text
%        str2double(get(hObject,'String')) returns contents of LU as a double


% --- Executes during object creation, after setting all properties.
function LU_CreateFcn(hObject, eventdata, handles)
% hObject    handle to LU (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(S_EQNs_All);
S_EQNs;
