[x,y] = meshgrid(-8:0.1:8);
z = x .* exp(-sqrt(x.^2 + y.^2));
mesh(z)

set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')
zlabel('z')

print -dpng Figure6.png


figure

z2 = x .* y .* exp(-sqrt(x.^2 + y.^2));
mesh(z2)

set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')
zlabel('z')

print -dpng Figure7.png


figure

contour(z)

set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')
zlabel('z')

print -dpng Figure8.png


figure

contour(z2)

set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')
zlabel('z')

print -dpng Figure9.png


figure

a = (-7:0.1:7);
b = a.^2 .* exp(-sqrt(2.*a.^2));
plot(a,b)

xlim([-7, 7])
set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')

print -dpng Figure10.png


figure

plot(a(1:end-1), diff(b)/0.1)

xlim([-7, 7])
set(gca, 'fontsize', 14, 'linewidth', 1)
xlabel('x')
ylabel('y')

print -dpng Figure11.png