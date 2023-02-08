e = dlmread ('Optical.csv', "," , 'A2:A101')
ei = dlmread ('Optical.csv', "," , 'E2:E101')
er = dlmread ('Optical.csv', "," , 'J2:J101')
ew=sqrt((ei.*ei)+(er.*er));
n=sqrt((ew+er)/2);
k=sqrt((ew-er)/2);
lw=ei./ew.^2;
R=((n-1).^2+k.^2)./((n+1).^2+k.^2);
a=sqrt(2).*sqrt(ew-er);
fid=fopen('OpticalfileGen.csv','w');
for i=1:length(e),
  fprintf(fid,'\n%7.4f\t',e(i));
  fprintf(fid,'%7.4f\t',ei(i));
  fprintf(fid,'%7.4f\t',er(i));
  fprintf(fid,'%7.4f\t',ew(i));
  fprintf(fid,'%7.4f\t',n(i));
  fprintf(fid,'%7.4f\t',k(i));
  fprintf(fid,'%7.4f\t',lw(i));
  fprintf(fid,'%7.4f\t',R(i));
  fprintf(fid,'%7.4f\t',a(i));
end
fclose(fid);


##e1 = dlmread ('OpticalfileGen.csv', "," , 'A2:A101')
##ei1 = dlmread ('OpticalfileGen.csv', "," , 'B2:B101')
##er1 = dlmread ('OpticalfileGen.csv', "," , 'C2:C101')
##ew1 = dlmread ('OpticalfileGen.csv', "," , 'D2:D101')
##n1 = dlmread ('OpticalfileGen.csv', "," , 'E2:E101')
##k1 = dlmread ('OpticalfileGen.csv', "," , 'F2:F101')
##lw1 = dlmread ('OpticalfileGen.csv', "," , 'G2:G101')
##R1 = dlmread ('OpticalfileGen.csv', "," , 'H2:H101')
##a1 = dlmread ('OpticalfileGen.csv', "," , 'I2:I101')

figure(1)
subplot(3,1,1)
plot(e,ew,'b-')
ylabel('e(w)')
xlim([0 20])
title('epsilon vs Energy')

subplot(3,1,2)
plot(e,n,'r-')
ylabel('n')
xlim([0 20])
title('Refractive index vs Energy')

subplot(3,1,3)
plot(e,k,'g-')
ylabel('k')
xlim([0 20])
title('Extension vs Energy')
xlabel('Energy(e)')
print Roshan_02_1.png

figure(2)
subplot(3,1,1)
plot(e,lw,'r-')
ylabel('l(w)')
xlim([0 20])
title('EELS vs Energy')

subplot(3,1,2)
plot(e,R,'b-')
ylabel('R')
xlim([0 20])
yticks(0:0.2:1)
title('Reflectivity vs Energy')

subplot(3,1,3)
plot(e,a,'r-')
ylabel('a(w)')
xlim([0 20])
title('Absorption vs Energy')
xlabel('Energy(e)')

print Roshan_02_2.png
