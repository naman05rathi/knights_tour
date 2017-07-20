% Main Function
% Discrete Mathematics
% finding a hamiltonian path
clc
clear all;
a=input('enter the size of the chess board ');
t=input('enter the time for transition between moves ');
d=input('starting position of the knight ');
temp=0;
temp2=0;
if((d(1)>=1)&&(d(1)<=a(1)))
    temp=1;
end
if((d(2)>=1)&&(d(2)<=a(2)))                                            %if input is out of range , error!!!!!!
    temp2=1;
end
if((temp==1)&&(temp2==1))
    display(d);
else
    error('wrong starting position');
end
d=d(1)+a(1)*(d(2)-1);
position=zeros(a(1)*a(2),2);
figure(1);
hold on;
axis off;
for i=1:a(1)*a(2)
    [j,k]=coord(i,a);
    if mod(j+k,2)==0
        Img=imread('C:\Users\sehgal\OneDrive\Documents\Knights_Tour (2)\white.jpg');
    else                                                                                %for merging white and black images
        Img=imread('C:\Users\sehgal\OneDrive\Documents\Knights_Tour (2)\gray.jpg');
    end
    position(i,1)=(k-1)*5;
    position(i,2)=(a(1)-j)*5;
    image([position(i,1)-2.5 position(i,1)+2.5],[position(i,2)-2.5 position(i,2)+2.5],Img);
  
end

[path,test]=chessboard(a,d);
axis([position(1,1)-2.5 position(a(1)*a(2),1)+2.5 position(a(1)*a(2),2)-2.5 position(1,2)+2.5 ])
for i=1:size(path,2)-1
 temp='-b.';
    plot([position(path(i),1) position(path(i+1),1)],[position(path(i),2) position(path(i+1),2)],temp)
    text(position(path(i),1),position(path(i),2),int2str(i),'BackgroundColor',[1 0 0])
    pause(t)
end
    text(position(path(i+1),1),position(path(i+1),2),int2str(i+1),'BackgroundColor',[1 0 0])
hold off
if test==1
 msgbox('oops knights tour does not exist for this size of board !','error','error');   
else
    msgbox('Knights Tour is Complete!','Tour Complete')
    path
end
