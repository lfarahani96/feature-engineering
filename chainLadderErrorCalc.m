function [predictedValue, realReserveValue] = chainLadderErrorCalc(matrixCL, targetCL)
%CHAINLADDERERRORCALC Summary of this function goes here
%   Detailed explanation goes here
    [row, col] = size(matrixCL);
    
    predictedValue      = zeros(row,1);
    realReserveValue    = zeros(row,1);

    for r1 = 1 : row
        c1 = 1;
        index = r1;
        while (index > 0)
            predictedValue(r1)   = predictedValue(r1) + matrixCL(index, c1);
            realReserveValue(r1) = realReserveValue(r1) + targetCL(index, c1);
            c1 = c1 + 1;
            index = index - 1;
        end
    end
    
    
end 

