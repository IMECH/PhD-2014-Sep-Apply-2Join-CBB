xyz = load('vertex');
face = load('face');
face = face';
face = face(:);
n = length(xyz);

for i = 1:n/144
    index = (i-1)*144+1:i*144;
    xyzi = xyz(index,:);
    
    data = xyzi(face,:); 
    fi = fopen(['10-',num2str(i),'txt'],'wt');
    fprintf(fi,' %7.4f %7.4f %7.4f\r',data');
end