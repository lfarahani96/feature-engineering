function [ACC, RECALL, PRECISION, TP, TN, FP, FN] = find_accuracy(check)
%FIND_ACCURACY Summary of this function goes here
%   Detailed explanation goes here
    TP = length (find(check(:,1) == 1 & check(:,2) == 1)); 
    TN = length (find(check(:,1) == 0 & check(:,2) == 0)); 
    FP = length (find(check(:,1) == 1 & check(:,2) == 0)); 
    FN = length (find(check(:,1) == 0 & check(:,2) == 1)); 
    
    ACC = (TP + TN) / (TP + TN + FN + FP);
    RECALL =  TP / (TP + FN);
    PRECISION = TP / (TP + FP);
    
    FAR = FP / (FP+TN)
end

