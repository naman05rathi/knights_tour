function [ deg ] = Degree_moves(moves,a,b)                                % calculating degree of every valid move and taking the minimum
                                                                          % here degree represent the connectivity of block by its free neigbours
[p]=size(moves);
deg=zeros(p,1);
for i=1:p
    temp=all_possible_moves(moves(i,1),moves(i,2),a,b);
    deg(i)=size(temp,1);
end
temp=find(deg==min(deg));
if size(temp,1)~=1

 deg=current(moves(temp(1),1),moves(temp(1),2),a); 
else
 deg=current(moves(temp,1),moves(temp,2),a);   
end



end

