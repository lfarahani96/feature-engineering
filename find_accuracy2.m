function [per] = find_accuracy2(check)
%FIND_ACCURACY Summary of this function goes here
%   Detailed explanation goes here
    TP = length (find(check(:,1) == 1 & check(:,2) == 1)); 
    TN = length (find(check(:,1) == 0 & check(:,2) == 0)); 
    FP = length (find(check(:,1) == 1 & check(:,2) == 0)); 
    FN = length (find(check(:,1) == 0 & check(:,2) == 1)); 
    
    ACC = (TP + TN) / (TP + TN + FN + FP);
    RECALL =  TP / (TP + FN);
    PRECISION = TP / (TP + FP);
    
    FAR = FP / (FP+TN);
    F_score = (2*TP)/(2*TP+FP+FN)
    per = [ACC, RECALL, FAR, F_score];
end
