x=dlmread('dados.txt');
b = size(x);
cont = 0;
for i=1:b(1,1)
    if isequal(x(i,:),[0 0 0])
        cont = cont+1;
    end
end

for i=1:b(1,1)-cont
    if isequal(x(i,:),[0 0 0])
        x(i,:)=[];
    end
end
[A,b,expMFS]  = magcal(x);
xCorrected = (x-b)*A;
scatter3(xCorrected(:,1),xCorrected(:,2),xCorrected(:,3));
axis equal
title('Dados corrigidos');