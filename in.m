#Roshan Raj_02
#Tinku Kumar_54

t=linspace(0,10,100);
A=1;
w=0.9*pi;
ph=pi/2;
k=1;
m=1;

x=A*sin(w*t-ph)
v=A*w*cos(w*t-ph)
a=-(w.*w)*x
ke=0.5*m*v.*v;
pe=0.5*k*x.*x;
T=0.5*k*A.*A;

figure(1)
subplot(3,1,1)
plot(t,x,'b-')
ylabel('pos(x)')

subplot(3,1,2)
plot(t,v,'r-')
ylabel('vel(x)')

subplot(3,1,3)
plot(t,a,'g-')
xlabel('time(t)')
ylabel('accel(x)')
print Roshan_Tinku1.jpg

figure(2)
subplot(3,1,1)
plot(t,ke,'r-')
ylabel('Kin(x)')

subplot(3,1,2)
plot(t,pe,'b-')
ylabel('pot(x)')

subplot(3,1,3)
plot(t,T,'r*')
xlabel('time(t)')
ylabel('Total(x)')

print Roshan_Tinku2.jpg

fid=fopen('myfile.xlsx','w');
for i=1:length(t),
  fprintf(fid,'\n%7.4f\t',t(i));
  fprintf(fid,'%7.4f\t',x(i));
  fprintf(fid,'%7.4f\t',v(i));
  fprintf(fid,'%7.4f\t',a(i));
  fprintf(fid,'%7.4f\t',ke(i));
  fprintf(fid,'%7.4f\t',pe(i));
  fprintf(fid,'%7.4f\t',T);
end
fclose(fid);








