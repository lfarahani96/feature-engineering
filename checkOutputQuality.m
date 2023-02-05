function [output] = checkOutputQuality(classification_Model, test_data, test_labels)
    
    result = predict(classification_Model, test_data);
    check = [test_labels, result];
    [TP, TN, FP, FN, ACC, RECALL, PRECISION] = find_accuracy(check);
    output = find_accuracy2(check)

end

