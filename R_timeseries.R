library(forecast)
library(ggplot2)
# Exercise 1
# Load the AirPassengers data. 
# Check its class and see the start and end of the series.

data(AirPassengers)
class(AirPassengers)
start(AirPassengers)
end(AirPassengers)

# Exercise 2
# Check the cycle of the Time-Series AirPassengers.
frequency(AirPassengers)
cycle(AirPassengers)

# Exercise 3
# Create a lag-plot using the gglag-plot from the forecast package. 
# Check how the relationship changes as the lag increases.
gglagplot(AirPassengers)

# Exercise 4
# Also, plot the correlation for each of the lags. 
# You can see when the lag is above 6, the correlation drops, climbs up in 12 and again drops in 18.
ggAcf(AirPassengers)

# Exercise 5
# Plot the histogram of the AirPassengers using a 
# gghistogram from the forecast.
gghistogram(AirPassengers)

# Exercise 6
# Use tsdisplay to plot auto-correlation, 
# time-series and partial auto-correlation together
# in the same plot.
tsdisplay(AirPassengers)

# Exercise 7
# Find the outliers in the time-series.
tsoutliers(AirPassengers)
