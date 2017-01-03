
inputVideoFile = uigetdir;
seqLen = inputdlg('Input the length of the sequence:'){1,1};
dets = [];
for frame = 1:seqLen
        img = imread([inputVideoFile,genPetsFilename(frame)]);        
        bboxes = annotation(img,frame);
        dets = [dets;bboxes];
 end
 csvwrite('small.txt',dets);

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