function board = KT(xMax, yMax)
% (Open) Knight's Tour Program
% Uses the Warnsdorff heuristic to look one move ahead and select a square.
% If several given squares have equal scores one of them is randomly chosen

    moveMax=xMax*yMax; % Calculate maximum number of moves
    board=(zeros(xMax,yMax)); % New board of zeros
    x=3; y=(yMax/2); %most reliable starting point to find a closed tour
    board(x,y)=1; % First Move
    moveCount=1;
    endRun=0;
    while ((endRun<1))
    if((x+2)<=xMax) % check moves 1 & 8
       if((y+1)<=yMax)
          nX=x+2;
          nY=y+1;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move1=score;
          if(board(nX,nY)>0),score=9;end;
          %check 1
       else
          move1=9; %no move 1
       end;
       if((y-1)>=1)
          nX=x+2;
          nY=y-1;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move8=score;
          %check 8
       else
          move8=9; %no move 8
       end;
    else
       move1=9; %no move 1
       move8=9; %no move 8
    end;

    if((x+1)<=xMax) % check moves 2 & 7
       if((y+2)<=yMax)
          nX=x+1;
          nY=y+2;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move2=score;
          %check 2
       else
          move2=9; %no move 2
       end;
       if((y-2)>=1)
          nX=x+1;
          nY=y-2;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move7=score;
          %check 7
       else
          move7=9; %no move 7
       end;
    else
       move2=9; %no move 2
       move7=9; %no move 7
    end;

    if((x-1)>=1) % check moves 3 & 6
       if((y+2)<=yMax)
          nX=x-1;
          nY=y+2;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move3=score;
          %check 3
       else
          move3=9; %no move 3
       end;
       if((y-2)>=1)
          nX=x-1;
          nY=y-2;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move6=score;
          %check 6
       else
          move6=9; %no move 6
       end;
    else
       move3=9; %no move 3
       move6=9; %no move 6
    end;

    if((x-2)>=1) % check moves 4 & 5
       if((y+1)<=yMax)
          nX=x-2;
          nY=y+1;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move4=score;
          %check 4
       else
          move4=9; %no move 4
       end;
       if((y-1)>=1)
          nX=x-2;
          nY=y-1;
          score=0;
          if((nX+2)<=xMax&&(nY+1)<=yMax),if(board((nX+2),(nY+1))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY+2)<=yMax),if(board((nX+1),(nY+2))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY+2)<=yMax),if(board((nX-1),(nY+2))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY+1)<=yMax),if(board((nX-2),(nY+1))==0),score=score+1;end;end;
          if((nX-2)>=1&&(nY-1)>=1),if(board((nX-2),(nY-1))==0),score=score+1;end;end;
          if((nX-1)>=1&&(nY-2)>=1),if(board((nX-1),(nY-2))==0),score=score+1;end;end;
          if((nX+1)<=xMax&&(nY-2)>=1),if(board((nX+1),(nY-2))==0),score=score+1;end;end;
          if((nX+2)<=xMax&&(nY-1)>=1),if(board((nX+2),(nY-1))==0),score=score+1;end;end;
          if(board(nX,nY)>0),score=9;end;
          move5=score;
          %check 5
       else
          move5=9; %no move 5
       end;
    else
       move4=9; %no move 4
       move5=9; %no move 5
    end;

    test=move1+move2+move3+move4+move5+move6+move7+move8;
    if(test>=72)
       endRun=1;
    else
       moveRank=[1 move1;2 move2;3 move3;4 move4;5 move5;6 move6;7 move7;8 move8];
       moveRank=sortrows(moveRank,2);
       minArray=min(moveRank);
       minScore=minArray(2);
       minCount=0;
       for i=1:8
          if(moveRank(i,2)==minScore)
             minCount=minCount+1;
          end;
       end;
       if(minCount>1)
          nextIndex=round(1+rand*(minCount-1));
       else
          nextIndex=1;
       end;

       nextMove=moveRank(nextIndex,1);
       if(nextMove==1),x=x+2;y=y+1;end;
       if(nextMove==2),x=x+1;y=y+2;end;
       if(nextMove==3),x=x-1;y=y+2;end;
       if(nextMove==4),x=x-2;y=y+1;end;
       if(nextMove==5),x=x-2;y=y-1;end;
       if(nextMove==6),x=x-1;y=y-2;end;
       if(nextMove==7),x=x+1;y=y-2;end;
       if(nextMove==8),x=x+2;y=y-1;end;
       moveCount=moveCount+1;
       board(x,y)=moveCount;

    end;
    end;

end    
    