%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            DATA LOADING                      %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

load('Position01.mat')

B=struct2table(res(1).lineage); 
[r,c]=size(B);
ColMoth=B.mothernb;             %mi estrae i valori della colonna 'mothernb' 
ArrayFamily=zeros(1,length(ColMoth));



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%            ELABORATION                       %%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Count how many zeros. Every zero a new family
for i=1:r
    if ColMoth(i)==0
       ArrayFamily(i)=1;
    else
        ArrayFamily(i)=0;
    end
    ArrayFamily;
end
NumFam=sum(ArrayFamily(:)); %total families 
Fam1=zeros(1,length(ColMoth));



for j=1:r    
    if ColMoth(j)==1
     Fam1(j)=j;
    end
     
     for l=1:length(Fam1)
      if ColMoth(j)== Fam1(l)
          Fam1(l)=j;
      end
    end
end


%Ora mi occupo di graficare insieme la fluorescenza delle cellule madri
figure();
hold on
for i=1:length(ColMoth)
 if ColMoth(i)<1    
        FluMom=B.fluo1(i);  %mi prende la prima casella di fluor della prima cellula madre
        numVec=cell2mat(FluMom);   %la estrae come vettore
        plot(numVec) 
 end

end


%ora devo scrivere un algoritmo che prende la fluorescenza di tutte le 
%cellule figlie e le plotti insieme

zeri=zeros(1,length(ColMoth));
 for i=1:length(ColMoth)
     if ColMoth(i)==0
         zeri(i)=i;
         disp('? una cellula madre')
     
         if ColMoth(i)==zeri(i)
             
         
     
     end
     
     end
    
 end

 
 
 

 
%%% FIND RELATIONS
sorted=sort(ColMoth)
lastSon=max(ColMoth);
indexLastSon=find(ColMoth==lastSon);

% for i=length(ColMoth):-1:2
%      relation(i)=indexLastSon;      
%      indexLastSon=ColMoth(indexLastSon);
%      
% end
for j=1:length(ColMoth)
    
     while(indexLastSon~=0)
         relation(i,j)=indexLastSon;
         indexLastSon=ColMoth(indexLastSon);
         i=i+1;
    end
    indexLastSon=sorted(length(ColMoth)-j+1);
end


%for k=1:length(ColMoth))
    
    %if ColMoth(i)==
 
%         FluMom=B.fluo1(i);  %mi prende la prima casella di fluor della prima cellula madre
%         numVec=cell2mat(FluMom);   %la estrae come vettore
%         plot(numVec) 
%     end
% end