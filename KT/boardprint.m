function g = boardprint(B)
M = rot90(B, -1);
    
    for i = 1:max(max(M))
        [X1 Y1]= find(M == i);
        [X2 Y2]= find(M == (i+1));
        X = [X1 X2];
        Y = [Y1 Y2];
        axis equal;
        grid on;
        plot(X,Y)
        hold on;
        pause(.5);
    end
end