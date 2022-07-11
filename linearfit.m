xData = [1960, 1970, 1980, 2000, 2010];
yData = [179323175, 203211926, 226545805, 281421906, 308745538];

coeffs = polyfit(xData(2:3), yData(2:3), 1);
val1990 = polyval(coeffs, 1990);

plot(xData, yData,'o', xData, val1990);