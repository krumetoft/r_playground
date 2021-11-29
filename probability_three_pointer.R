set.seed(2021)
n_threes = 30
n_successes = 7
historic_average = 0.4

proportion_clicks <- rnorm(
  n = 100000, 
  mean = historic_average,
  sd = 0.04
)
hist(proportion_clicks)

n_visitors <- rbinom(
  # Simulate 100K times
  n = 100000, 
  # Number of ads
  size = n_threes,
  # Probability of click
  prob = proportion_clicks
)

hist(n_visitors/n_threes, breaks = 50)

mean(n_visitors <= n_successes)
