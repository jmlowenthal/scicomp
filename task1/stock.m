% Fetch data from CSV (comma delimited) files %
msft = dlmread('microsoft.csv', ',', 1, 0);
aapl = dlmread('apple.csv', ',', 1, 0);
ibm_ = dlmread('ibm.csv', ',', 1, 0);

% Limit data to range %
msft = msft(1:180,:);
aapl = aapl(1:180,:);
ibm_ = ibm_(1:180,:);

% Plot raw stock price %
figure;
plot(msft(:, 1), msft(:, 2));
hold on;
plot(aapl(:, 1), aapl(:, 2));
plot(ibm_(:, 1), ibm_(:, 2));
hold off;

legend('MSFT', 'AAPL', 'IBM', 'Location', 'northwest');
xlabel('Date (year)');
ylabel('Value ($)');

print('stock.png', '-dpng'); 

% Normalise value and then scale by amount invested %
msft(:, 2) = msft(:, 2) / msft(length(msft), 2) * 399;
aapl(:, 2) = aapl(:, 2) / aapl(length(aapl), 2) * 399;
ibm_(:, 2) = ibm_(:, 2) / ibm_(length(ibm_), 2) * 399;

% Plot normalise value %
figure;
plot(msft(:, 1), msft(:, 2));
hold on;
plot(aapl(:, 1), aapl(:, 2));
plot(ibm_(:, 1), ibm_(:, 2));
hold off;

legend('MSFT', 'AAPL', 'IBM', 'Location', 'northwest');
xlabel('Date (year)');
ylabel('Value ($)');

print('investment.png', '-dpng'); 

% Plot logarithmic value %
figure;
semilogy(msft(:, 1), msft(:, 2));
hold on;
semilogy(aapl(:, 1), aapl(:, 2));
semilogy(ibm_(:, 1), ibm_(:, 2));
hold off;

legend('MSFT', 'AAPL', 'IBM', 'Location', 'northwest');
xlabel('Date (year)');
ylabel('Value ($)');

print('investment_logarithmic.png', '-dpng'); 