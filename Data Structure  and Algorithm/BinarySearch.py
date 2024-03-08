def binary_search(arr, target):
    low = 0
    high = len(arr) - 1

    while low <= high:
        mid = (low + high) // 2
        if arr[mid] == target:
            return mid
        elif arr[mid] < target:
            low = mid + 1
        else:
            high = mid - 1

    return -1

# Taking input from the user
arr = list(map(int, input("Enter a sorted list of numbers separated by space: ").split()))
target = int(input("Enter the number to search for: "))

# Performing binary search
index = binary_search(arr, target)

if index != -1:
    print(f"Element found at index: {index}")
else:
    print("Element not found in the list.")
