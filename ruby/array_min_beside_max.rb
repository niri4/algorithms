# Given an array of integers, task is to print the array in the order – 
#smallest number, Largest number, 2nd smallest number, 
#2nd largest number, 3rd smallest number, 3rd largest number and so on…..

# Examples:

# Input : arr[] = [5, 8, 1, 4, 2, 9, 3, 7, 6]
# Output :arr[] = [1, 9, 2, 8, 3, 7, 4, 6, 5]

def list(arr, results: [])
    return results.compact if arr.empty?
    min = arr.min
    arr.delete(min)
    max = arr.max
    arr.delete(max)
    results << min
    results << max
    list(arr, results: results)
end
arr = [5, 8, 1, 4, 2, 9, 3, 7, 6]
p list(arr)
