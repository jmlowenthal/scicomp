% Orbital definition
P = @(x, y, z) x .* exp(-sqrt(x.^2 .+ y.^2 .+ z.^2));
D = @(x, y, z) x .* y .* exp(-sqrt(x.^2 .+ y.^2 .+ z.^2));

% Figure plots

[X, Y] = meshgrid(-10: 0.5 : 10);
Z = zeros(size(X));

PV = P(X, Y, Z);
DV = D(X, Y, Z);

figure;
mesh(X, Y, PV);
saveas(gcf, 'fig1.1.eps', 'epsc');

figure;
mesh(X, Y, DV);
saveas(gcf, 'fig1.2.eps', 'epsc');

figure;
contour(X, Y, PV);
saveas(gcf, 'fig1.3.eps', 'epsc');

figure;
contour(X, Y, DV);
saveas(gcf, 'fig1.4.eps', 'epsc');

X2 = [-10 : 0.1 : 10];
Z2 = zeros(size(X2));
DV2 = D(X2, X2, Z2);

figure;
plot(X2, DV2);
saveas(gcf, 'fig2.1.eps', 'epsc');

figure;
plot(X2(1:(size(X2)(2) - 1)), diff(DV2) / 0.5);
saveas(gcf, 'fi2.2.eps', 'epsc');