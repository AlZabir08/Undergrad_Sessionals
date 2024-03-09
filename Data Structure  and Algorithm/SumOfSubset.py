def is_subset_sum(set, n, d):
    subset = [[False for _ in range(d + 1)] for _ in range(n + 1)]
    
    for i in range(n + 1):
        subset[i][0] = True
    
    for i in range(1, n + 1):
        for j in range(1, d + 1):
            if j < set[i - 1]:
                subset[i][j] = subset[i - 1][j]
            else:
                subset[i][j] = subset[i - 1][j] or subset[i - 1][j - set[i - 1]]
    
    return subset[n][d]

S = [5, 10, 12, 13, 15, 18]
d = 30

n = len(S)

target_sum = int(input("Enter the target sum: "))

if is_subset_sum(S, n, target_sum):
    print("Subset with sum {} exists in the set.".format(target_sum))
else:
    print("No subset with sum {} exists in the set.".format(target_sum))
