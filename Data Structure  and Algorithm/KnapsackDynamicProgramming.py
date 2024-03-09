def knapsack_01(profits, weights, capacity, n):
    dp = [[0 for _ in range(capacity + 1)] for _ in range(n + 1)]

    for i in range(1, n + 1):
        for w in range(1, capacity + 1):
            if weights[i - 1] <= w:
                dp[i][w] = max(dp[i - 1][w], profits[i - 1] + dp[i - 1][w - weights[i - 1]])
            else:
                dp[i][w] = dp[i - 1][w]

    return dp[n][capacity]

# Main program
profits = [15, 25, 13, 23]
weights = [2, 6, 12, 9]
capacity = 20
n = 4

max_profit = knapsack_01(profits, weights, capacity, n)
print("Maximum profit:", max_profit)

