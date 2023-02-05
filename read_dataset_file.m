function data = read_dataset_file (path) 

    [ndata, text, alldata] = xlsread(path); 
    
    table = cell2table(alldata);
      
    data = ndata;
end 