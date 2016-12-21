madrid = dlmread('Madrid-climate.dat', '', 2, 0);
peterborough = dlmread('Peterborough-climate.dat', '', 2, 0);
sans = dlmread('SanSebastian-climate.dat', '', 2, 0);

h = area([1:12], [madrid(:, 5), madrid(:, 6) - madrid(:, 5)]);
h(1).FaceColor = [1 1 1];
xlim([1 12]);