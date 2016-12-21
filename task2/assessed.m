data = dlmread('cambridge.dat', '', 4, 0);

yearData = data(:, 1);
monthData = data(:, 2);
tmaxData = data(:, 3);
tminData = data(:, 4);
rainData = data(:, 6);
sunData = data(:, 7);

dateData = yearData + (monthData - 1) / 12;
averageData = (tminData + tmaxData) / 2;

figure;
plot(dateData, averageData);
xlim([1961 2011]);

avg = @(param, year) param(1) + param(2)*(year - 1961) + param(3) * sin(2 * pi * year + param(4));
% NB: param = [a0 a1 a2 delta]

hold on;
[opt, norm, exit, out] = lsqcurvefit(avg, [1 1 1 0], dateData, averageData);
plot(t, avg(opt, t));
xlabel('Date (year)');
ylabel('Average Monthly Temperature (°C)');
hold off;
legend('actual', 'modelled');

figure;
[freq, centres] = hist(rainData, [5:10:165]);
bar(centres, freq, 1);
xlabel('Average rainfall (mm)');
ylabel('Number of months');

disp '50 year temperature rise:';
disp(opt(2) * 50);
