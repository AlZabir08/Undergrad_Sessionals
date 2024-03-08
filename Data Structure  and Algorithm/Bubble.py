def bubble_sort(arr):
    n = len(arr)
    # Traverse through all elements in the list
    for i in range(n):
        # Last i elements are already in place
        for j in range(0, n-i-1):
            # Traverse the list from 0 to n-i-1
            # Swap if the element found is greater than the next element
            if arr[j] > arr[j+1]:
                arr[j], arr[j+1] = arr[j+1], arr[j]

# Taking input from the user
arr = list(map(int, input("Enter numbers separated by a space: ").split()))
# Splitting the input string on comma and converting each substring to an integer

# Calling the bubble sort function
bubble_sort(arr)

# Printing the sorted list
print("Sorted list:", arr)
