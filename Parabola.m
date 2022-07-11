xData = [1980, 2000, 2010];
yData = [226545805, 281421906, 308745538];

coeffs = polyfit(xData, yData, 2);
val1990 = polyval(coeffs, 1990);

plot(xData, yData);
