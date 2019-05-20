function write()
disp("fine")
A = read('input.txt');
method ="";
global equ;
global fID;
fID = fopen('output.txt','w');
for i=1:size(A,1)
    if mod(i,4)==1
        equ = A(i,1);
        equ = equ{1};
    elseif mod(i,4)==2
        method = A(i,1);
        method = method{1};
    elseif mod(i,4)==3
        guesses = A(i,1);
        splitguesses(guesses{1});
    else
        limits = A(i,1);
       get_itt_es(limits{1});
       methodused(method);
    end
    
end
end

function splitguesses(str)
global firstg;
global secondg;
str = strsplit(str);
firstg = str(1);
secondg = str(2);
end

function get_itt_es(str)
global itts;
global es;
temp = str2double(str);
if mod(temp,1) == 0
    itts = str;
else 
    es = str;
end
end

function formatnoitts_time(sizearr,timeelapsed)
    global fID;
    formatitts = 'no of itterations %d \n';
    fprintf(fID,formatitts,sizearr);
    formattime = 'timeelapsed %4.4f \n';
    fprintf(fID,formattime,timeelapsed);
    
end

function itterations(arr)
    global fID;
    for i=1:size(arr,1)
        formatdata = '%4.4f  %4.4f  %4.4f \n';
        fprintf(fID,formatdata,arr(i,1),arr(i,2),arr(i,3));
    end
end

function formatroot_precision(root,precision)
    global fID;
    formatroot = 'root %4.4f \n';
    fprintf(fID,formatroot,root);
    formatprecision = 'precision %4.4f \n';
    fprintf(fID,formatprecision,precision);
end

function methodused (str)
global equ;
global itts;
global es;
global firstg;
global secondg;

if str == "bisection"
    [f,xr,arr,eas,timeelapsed] = Bisection(equ,itts,es,firstg,secondg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(xr,eas(size(eas,1),1));
elseif str == "false-position"
    [f,xr,arr,eas,timeelapsed] = falseposition(equ,itts,es,firstg,secondg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(xr,eas(size(eas,1),1));
elseif str == "fixed-point"
    [f,arr,eas,timeelapsed] = FixedPoint(equ,itts,es,firstg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(arr(size(arr),1),eas(size(eas,1),1)); 
elseif str == "newton"
    [f,arr,eas,timeelapsed] = Newton(equ,itts,es,firstg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(arr(size(arr),1),eas(size(eas,1),1));    

elseif str == "secant"
    [f,arr,eas,timeelapsed] = Secant(equ,itts,es,firstg,secondg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(arr(size(arr),1),eas(size(eas,1),1));
elseif str == "birge-veita"
    [f,sizerow,arr,all,eas,timeelapsed] = BirgeVeta(equ,itts,es,firstg);
    formatnoitts_time(size(arr,1),timeelapsed);
    itterations(arr);
    formatroot_precision(arr(size(arr),1),eas(size(eas,1),1));    
end
end