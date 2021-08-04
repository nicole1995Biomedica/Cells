load('Position01.mat')

B=struct2table(res(1).lineage); %mi da tutta la tabella con i valori risultanti
[r,c]=size(B);
ColMoth=B.mothernb;             %mi estrae i valori della colonna 'mothernb' 
ArrayFamily=zeros(1,length(ColMoth));


%Qui conto gli zeri nella colonna ColMoth per vedere quante famiglie ci
%sono
for i=1:r
    if ColMoth(i)==0
       ArrayFamily(i)=1;
    else
        ArrayFamily(i)=0;
    end
    ArrayFamily;
end
NumFam=sum(ArrayFamily(:)); %Mi dice che ho 20 famiglie differenti
Fam1=zeros(1,length(ColMoth));


%qui dovrei creare un vettore che contiene gli indici delle cellule
%imparentate
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
figure;
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
         disp('è una cellula madre')
     
         if ColMoth(i)==zeri(i)
             
         
     
     end
     
     
 end


for k=1:length(ColMoth))
    
    if ColMoth(i)==
 
%         FluMom=B.fluo1(i);  %mi prende la prima casella di fluor della prima cellula madre
%         numVec=cell2mat(FluMom);   %la estrae come vettore
%         plot(numVec) 
%     end
% end




