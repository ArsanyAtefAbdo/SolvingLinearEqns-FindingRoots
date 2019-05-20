function part2Write(n,methodName,iter,out,columns,table,time)
    fileID = fopen('results.txt','w');
    % print method name on file
    fprintf(fileID,'%s\r\n',methodName);
    if methodName == "Gauss-Seidel"
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
    % print answers on file
    fprintf(fileID,'%s\r\n','Answers:');
    fprintf(fileID,'%s\r\n',out);
    % print time on file
    fprintf(fileID,'%s %f\r\n','Time Ellapsed = ',time);
    fclose(fileID);
end