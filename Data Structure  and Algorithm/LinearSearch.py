def linear_search(arr, target):
    for i in range(len(arr)):
        if arr[i] == target:
            return i
    return -1

# Taking input from the user
arr = list(map(int, input("Enter the list of numbers separated by space: ").split()))
target = int(input("Enter the number to search for: "))

# Implementing linear search
index = linear_search(arr, target)

if index != -1:
    print(f"Element found at index: {index}")
else:
    print("Element not found in the list.")
