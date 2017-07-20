function [path,test] = chessboard(a,start)
b=zeros(a(1),a(2));
path=start;
current_pos=path(1);                                                           
test=0;
while (length(path) < a(1)*a(2))
    [i,j]=coord(current_pos,a);
    b(i,j)=1;
    moves=all_possible_moves(i,j,a,b);
    if size(moves,1)==0
    test=1;
break
    end


    valid_move=Degree_Moves(moves,a,b);

    if valid_move==0
      
            current_pos=path(length(path));
        
       
    else
        [i,j]=coord(valid_move,a);

        b(i,j)=1;
       
            path=[path valid_move];
            current_pos=path(length(path));
       

    end
    
end

end

