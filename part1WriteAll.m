function part1WriteAll(val,approx_root,presecion,t, expectedIter,convergence,rconv)
if val == 1
    fileID = fopen('results.txt','w');
    fprintf(fileID,'%s','');
    fclose(fileID);
end
    fileID = fopen('results.txt', 'a+');
    if val == 1
        if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','Bisection Method');
            fprintf(fileID,'%s\r\n','================');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %d\r\n','Expected # Iterations: ',expectedIter);
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Bisection Method');
            fprintf(fileID,'%s\r\n','================');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %d\r\n','Expected # Iterations: ',0);
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    elseif val == 2
         if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','False Position');
            fprintf(fileID,'%s\r\n','==============');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','False Position');
            fprintf(fileID,'%s\r\n','==============');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
         end
    elseif val == 3
        if strfind(convergence, 'converge') == 1
            fprintf(fileID,'%s\r\n','Fixed Point Method');
            fprintf(fileID,'%s\r\n','==================');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Fixed Point Method');
            fprintf(fileID,'%s\r\n','==================');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    elseif val == 4
        if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','Newton Raphson Method');
            fprintf(fileID,'%s\r\n','=====================');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Newton Raphson Method');
            fprintf(fileID,'%s\r\n','=====================');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Rate of Convergence: ',rconv);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    elseif val == 5
        if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','Secant Method');
            fprintf(fileID,'%s\r\n','=============');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Secant Method');
            fprintf(fileID,'%s\r\n','=============');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    elseif val == 6
        if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','Bierge-Vieta Method');
            fprintf(fileID,'%s\r\n','=================');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Bierge-Vieta Method');
            fprintf(fileID,'%s\r\n','===================');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    elseif val == 7
        if strcmp(convergence,'converges') == 1
            fprintf(fileID,'%s\r\n','Steffensen Method');
            fprintf(fileID,'%s\r\n','=================');
            fprintf(fileID,'%s                      %s\r\n','Root', 'Presicion');
            n = numel(approx_root);
            for i = 1 : n
                fprintf(fileID,'%0.20f    %0.20f\r\n',approx_root(i),presecion(i));
            end
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ',t);
            fprintf(fileID,'%s\r\n\n\n','');
        else
            fprintf(fileID,'%s\r\n','Steffensen Method');
            fprintf(fileID,'%s\r\n','=================');
            fprintf(fileID,'%s    %s\r\n','Root','Presicion');
            fprintf(fileID,'%s       %s\r\n','0','0');
            fprintf(fileID,'%s\r\n','');
            fprintf(fileID,'%s %s\r\n','Convergence: ',convergence);
            fprintf(fileID,'%s %s\r\n','Elapsed Time: ','0');
            fprintf(fileID,'%s\r\n\n\n','');
        end
    end
    fclose(fileID);
end