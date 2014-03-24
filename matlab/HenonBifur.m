itermax=2000;
min=itermax-9;
b = 0.3;
x = zeros(itermax+1, 1); 
y = zeros(itermax+1, 1); 
for a=0.:0.001:1.3
    x(1)=0.1;
    y(1)=0;
    x0=x(1);
    y0=y(1);
    for n=1:itermax
        xn=1+y0-a*(x0)^2;
        yn=b*x0;
        x(n+1)=xn;
        y(n+1)=yn;
        x0=xn; % x0 dan y0 digunakan karena persamaannya tercouple.... 
        y0=yn;
    end
plot(a*ones(10,1),x(min:itermax),'.','MarkerSize',1)
hold on
end  

fsize=15;
%set(gca,'xtick',[0 1.3],'FontSize',fsize)
%set(gca,'ytick',[-1 2],'FontSize',fsize)
xlabel('{\alpha}','FontSize',fsize)
ylabel('\itx','FontSize',fsize)
hold off