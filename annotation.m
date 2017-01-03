%hand  annotation
%bbox [frame, -1 , xmin , ymin , w, h, -1, -1, -1]

function bboxes = annotation(img,frame)
    imshow(img);
    bboxes = [];
    while(strcmp(questdlg('Continue?'),'Yes'))
        g = imrect(gca);
        pos = wait(g);
        delete(g);
        bboxes = [bboxes;frame, -1,pos,-1,-1,-1,-1];
    end
end