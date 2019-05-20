function varargout = S_EQNs(varargin)
% S_EQNS MATLAB code for S_EQNs.fig
%      S_EQNS, by itself, creates a new S_EQNS or raises the existing
%      singleton*.
%
%      H = S_EQNS returns the handle to a new S_EQNS or the handle to
%      the existing singleton*.
%
%      S_EQNS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in S_EQNS.M with the given input arguments.
%
%      S_EQNS('Property','Value',...) creates a new S_EQNS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before S_EQNs_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to S_EQNs_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help S_EQNs

% Last Modified by GUIDE v2.5 06-May-2019 09:55:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @S_EQNs_OpeningFcn, ...
                   'gui_OutputFcn',  @solveEquations_OutputFcn, ...
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


% --- Executes just before S_EQNs is made visible.
function S_EQNs_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to S_EQNs (see VARARGIN)

% Choose default command line output for S_EQNs
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes S_EQNs wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = solveEquations_OutputFcn(~, ~, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function maxiter_Callback(~, ~, ~)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of maxiter as text
%        str2double(get(hObject,'String')) returns contents of maxiter as a double


% --- Executes during object creation, after setting all properties.
function maxiter_CreateFcn(hObject, ~, ~)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function epsilon_Callback(~, ~, ~)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of epsilon as text
%        str2double(get(hObject,'String')) returns contents of epsilon as a double


% --- Executes during object creation, after setting all properties.
function epsilon_CreateFcn(hObject, ~, ~)
% hObject    handle to epsilon (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in methods.
function methods_Callback(~, ~, ~)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns methods contents as cell array
%        contents{get(hObject,'Value')} returns selected item from methods


% --- Executes during object creation, after setting all properties.
function methods_CreateFcn(hObject, ~, ~)
% hObject    handle to methods (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function filePath_Callback(~, ~, ~)
% hObject    handle to filePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of filePath as text
%        str2double(get(hObject,'String')) returns contents of filePath as a double


% --- Executes during object creation, after setting all properties.
function filePath_CreateFcn(hObject, ~, ~)
% hObject    handle to filePath (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in readFile.
function readFile_Callback(~, ~, handles)
% hObject    handle to readFile (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
filename = get(handles.filePath, "String");
B = read(filename);
methodName = B(2);
n = str2num(B(1));
eqns = B([3:2+n]);
disp(B)
disp(n)
disp(eqns)
guesses = split(B(end), " ");
global iter;
global columns;
global table;

if n > 1
    set(handles.equations,'string',eqns);
    if methodName ~= "Gauss-Seidel"
        switch methodName
            case "Gaussian-elimination" %gauss elimination
                [sol,symbols,time] = gaussElimination(eqns);
            case "LU decomposition" %LU decomp.
                [sol,symbols,time] = LUdecomposition(eqns);
            case "Gaussian-Jordan" %gauss jordan
                [sol,symbols,time] = gaussJordan(eqns);
        end
        for i=1:n
            s = [char(symbols(i)) ' = ' num2str(sol(i))];
            out(i) = convertCharsToStrings(s);
        end
        set(handles.answers,'string',out);
        set(handles.iterations,'string',"0");
        set(handles.guesses,'String','');
        set(handles.table, 'Data', {})
        cla(gca);
    else
        % Gauss-Seidel iterative method.
        set(handles.guesses,'string',guesses);
        maxiter = get(handles.maxiter, "String");
        epsilon = get(handles.epsilon, "String");
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
               
            % set the answers
            for i=1:n
                s = [char(symbols(i)) ' = ' num2str(solution(i))];
                out(i) = convertCharsToStrings(s);
            end
            set(handles.answers,'string',out);
            
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
    end 
    set(handles.time,'string', time);
    part2Write(n,methodName,iter,out,columns,table,time)
end


% --- Executes on button press in solve.
function solve_Callback(~, ~, handles)
% hObject    handle to solve (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global iter;
global columns;
global table;

eqns = get(handles.equations, "String");
index = get(handles.methods,'Value');
[n,~] = size(eqns);
if n > 1
    if index < 4
        switch index
            case 1 %gauss elimination
                methodName = "Gaussian-elimination";
                [sol,symbols,time] = gaussElimination(eqns);
            case 2 %LU decomp.
                methodName = "LU decomposition";
                [sol,symbols,time] = LUdecomposition(eqns);
            case 3 %gauss jordan
                methodName = "Gaussian-Jordan";
                [sol,symbols,time] = gaussJordan(eqns);
        end
        for i=1:n
            s = [char(symbols(i)) ' = ' num2str(sol(i))];
            out(i) = convertCharsToStrings(s);
        end

        set(handles.answers,'string',out);
        set(handles.iterations,'string',"0");
        set(handles.guesses,'String','');
        set(handles.table, 'Data', {})
        cla(gca);
    else
        % Gauss-Seidel iterative method.
        methodName = "Gauss-Seidel";
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
            % set the answers
            for i=1:n
                s = [char(symbols(i)) ' = ' num2str(solution(i))];
                out(i) = convertCharsToStrings(s);
            end
            set(handles.answers,'string',out);
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
    end 
    set(handles.time,'string', time);
    part2Write(n,methodName,iter,out,columns,table,time)
end


function equations_Callback(~, ~, ~)
% hObject    handle to equations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of equations as text
%        str2double(get(hObject,'String')) returns contents of equations as a double


% --- Executes during object creation, after setting all properties.
function equations_CreateFcn(hObject, eventdata, handles)
% hObject    handle to equations (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function answers_Callback(~, eventdata, handles)
% hObject    handle to answers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of answers as text
%        str2double(get(hObject,'String')) returns contents of answers as a double


% --- Executes during object creation, after setting all properties.
function answers_CreateFcn(hObject, ~, handles)
% hObject    handle to answers (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in solveAll.
function solveAll_Callback(hObject, eventdata, handles)
% hObject    handle to solveAll (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(S_EQNs);
S_EQNs_All;        % this command is to open the new GUI % this command is to close the existing GUI




function guesses_Callback(~, ~, ~)
% hObject    handle to guesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of guesses as text
%        str2double(get(hObject,'String')) returns contents of guesses as a double


% --- Executes during object creation, after setting all properties.
function guesses_CreateFcn(hObject, ~, ~)
% hObject    handle to guesses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
