
inputVideoFile = uigetdir;
seqLen = inputdlg('Input the length of the sequence:');
dets = [];
for frame = 1:str2num(seqLen{1,1})
        img = imread([inputVideoFile,filesep,genPetsFilename(frame)]);        
        bboxes = annotation(img,frame);
        dets = [dets;bboxes];
 end
 csvwrite('small.txt',dets);

