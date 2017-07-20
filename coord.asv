function [i,j] = coord(current_pos,a)

i=mod(current_pos,(a(1)));
if i==0
    i=a(1);                            % to tell the position by cartesian system if block number is given
end
j=((current_pos-i)/a(1))+1;
end

