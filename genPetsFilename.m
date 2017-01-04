function filename = genPetsFilename(f)
    % read the next frame
    frameNumInStr = num2str(f);
    maxZeros = 6;
    numZeros = maxZeros - numel(frameNumInStr);
    zerosStr = '';
    for zc = 1:numZeros
        zerosStr = [zerosStr '0'];
    end
    filename = [zerosStr frameNumInStr '.jpg'];    
end