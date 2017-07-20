function [cmoves] = all_possible_moves(i,j,a,b)               % all possible valid moves

moves=[];

moves(1,1)=i+2;
moves(1,2)=j+1;

moves(2,1)=i+2;
moves(2,2)=j-1;

moves(3,1)=i-2;
moves(3,2)=j+1;

moves(4,1)=i-2;
moves(4,2)=j-1;

moves(5,1)=i-1;
moves(5,2)=j-2;

moves(6,1)=i-1;
moves(6,2)=j+2;

moves(7,1)=i+1;
moves(7,2)=j-2;

moves(8,1)=i+1;
moves(8,2)=j+2;
cmoves=[];
for i=1:8

    if moves(i,1)>0 && moves(i,2)>0 && moves(i,1) < a(1)+1 && moves(i,2) < a(2)+1 && b(moves(i,1),moves(i,2))==0
        cmoves=[cmoves;moves(i,1),moves(i,2)];
    end
end

end

