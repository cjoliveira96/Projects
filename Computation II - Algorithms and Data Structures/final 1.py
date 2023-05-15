import copy

from tabulate import tabulate
import random
import time
import sys

sys.setrecursionlimit(10 ** 6)

print("COMPETING SORTING ALGORITHM\n"
      "Please insert the following inputs:\n")

# INPUTS
range_size = int(input("\n1. What will be the range of numbers inside the list?\n"
                       "All numbers from 0 to "))

initial_size = int(input("2. What will be the size of the initial list?\n"
                         "Initial size: "))

incr_size = int(input("\n3. What will be the incremental size of the list?\n"
                      "Incremental value: "))

iterations = int(input("\n4. How many times do you want to iterate?\n"
                       "Iterations: "))

# LIST GENERATOR
all_iterations = []  # List that will contain all the random lists to order
for i in range(iterations):
    iteration = [random.randint(0, range_size) for j in range(initial_size + i * incr_size)]
    all_iterations.insert(i, iteration)


#CREATION OF THE LISTS
list1 = copy.deepcopy(all_iterations)
list2 = copy.deepcopy(all_iterations)
list3 = copy.deepcopy(all_iterations)
list4 = copy.deepcopy(all_iterations)
list5 = copy.deepcopy(all_iterations)
list6 = copy.deepcopy(all_iterations)
list7 = copy.deepcopy(all_iterations)

# LISTS WITH THE NUMBER OF ITERATIONS AND WITH THE LENGTH
list_n = ["Length of list:"]  # LENGTH
list_indexes = ["Iteration:"]  # ITERATIONS
for i in range(iterations):
    result = initial_size + i * incr_size
    list_n.insert(i + 1, result)
    list_indexes.append(str(i + 1))

#SWAPPING FUNCTION
def swapping(list_to_sort, i, j):
    temp = list_to_sort[i]
    list_to_sort[i] = list_to_sort[j]
    list_to_sort[j] = temp

# SORT FUNCTIONS

# bubble_sort
def bubble_sort(list_to_sort):
    n = len(list_to_sort)
    for k in range(0, n):
        for j in range(0, n - 1):
            if list_to_sort[j] > list_to_sort[j + 1]:
                swapping(list_to_sort, j, j + 1)




# Heap sort
def heapify(list_to_sort, n, root):
    largest = root
    left = 2 * root + 1
    right = 2 * root + 2

    if left < n and list_to_sort[root] < list_to_sort[left]:
        largest = left

    if right < n and list_to_sort[largest] < list_to_sort[right]:
        largest = right

    if largest != root:
        swapping(list_to_sort, root, largest)

        heapify(list_to_sort, n, largest)


def heap_sort(list_to_sort):

    n = len(list_to_sort)
    for i in range(n // 2 - 1, -1, -1):
        heapify(list_to_sort, n, i)

    # One by one extract elements
    for i in range(n - 1, 0, -1):
        swapping(list_to_sort, i, 0) # swap
        heapify(list_to_sort, i, 0)


# Selection sort
def selection_sort(list_to_sort):

    for k in range(len(list_to_sort)):
        min_idx = k
        for j in range(k + 1, len(list_to_sort)):
            if list_to_sort[min_idx] > list_to_sort[j]:
                min_idx = j
        list_to_sort[k], list_to_sort[min_idx] = list_to_sort[min_idx], list_to_sort[k]

    return list_to_sort


# Merge sort
def merge_sort(list_to_sort):

    if len(list_to_sort) > 1:
        mid = len(list_to_sort) // 2
        left = list_to_sort[:mid]
        right = list_to_sort[mid:]
        merge_sort(left)
        merge_sort(right)
        i = j = k = 0
        while i < len(left) and j < len(right):
            if left[i] < right[j]:
                list_to_sort[k] = left[i]
                i += 1
            else:
                list_to_sort[k] = right[j]
                j += 1
            k += 1
        while i < len(left):
            list_to_sort[k] = left[i]
            i += 1
            k += 1
        while j < len(right):
            list_to_sort[k] = right[j]
            j += 1
            k += 1

    return list_to_sort


# Insertion sort
def insertion_sort(list_to_sort):
    for i in range(1, len(list_to_sort)):
        sort_value = list_to_sort[i]
        while list_to_sort[i - 1] > sort_value and i > 0:
            swapping(list_to_sort, i, i - 1)
            i = i - 1

    return list_to_sort

# Quick sort
def partition(list_to_sort, low, high):
    i = (low - 1)
    pivot = list_to_sort[high]
    for j in range(low, high):
        if list_to_sort[j] <= pivot:
            i = i + 1
            swapping(list_to_sort, i, j)
    swapping(list_to_sort, i + 1, high)
    return (i + 1)

def quick_sort(list_to_sort, low, high):

    if len(list_to_sort) == 1:
        return list_to_sort
    if low < high:
        pi = partition(list_to_sort, low, high)
        quick_sort(list_to_sort, low, pi - 1)
        quick_sort(list_to_sort, pi + 1, high)
    return list_to_sort

# Shell Sort
def shell_sort(list_to_sort, n):
    interval = n // 2
    while interval > 0:
        for i in range(interval, n):
            temp = list_to_sort[i]
            j = i
            while j >= interval and list_to_sort[j - interval] > temp:
                list_to_sort[j] = list_to_sort[j - interval]
                j -= interval
            list_to_sort[j] = temp
        interval //= 2

# RESULTS

# Bubble sort Results
bubble_results = ["bubble sort: "]
for j in range(len(list3)):
    start3 = time.time()
    bubble_sort(list3[j])
    end3 = time.time()
    results3 = "{0:.5f}".format(end3 - start3)
    bubble_results.append(results3 + "s")

# Heap sort results
heap_results = ["heap sort:"]
for j in range(len(list4)):
    start4 = time.time()
    heap_sort(list4[j])
    end4 = time.time()
    results4 = "{0:.5f}".format(end4 - start4)
    heap_results.append(results4 + "s")

# Selection Sort results
selection_results = ["selection sort:"]
for j in range(len(list5)):
    start5 = time.time()
    selection_sort(list5[j])
    end5 = time.time()
    results5 = "{0:.5f}".format(end5 - start5)
    selection_results.append(results5 + "s")

# Merge sort results
merge_results = ["merge sort:"]
for j in range(len(list6)):
    start6 = time.time()
    merge_sort(list6[j])
    end6 = time.time()
    results6 = "{0:.5f}".format(end6 - start6)
    merge_results.append(results6 + "s")

# Insertion sort results
insertion_results = ["insertion sort:"]
for j in range(len(list7)):
    start7 = time.time()
    insertion_sort(list7[j])
    end7 = time.time()
    results7 = "{0:.5f}".format(end7 - start7)
    insertion_results.append(results7 + "s")

# Quick sort results
quick_results = ["quick sort:"]
for j in range(len(list1)):
    start1 = time.time()
    quick_sort(list1[j], 0, len(list1[j]) - 1)
    end1 = time.time()
    results1 = "{0:.5f}".format(end1 - start1)
    quick_results.append(results1 + "s")

# Shell sort results
shell_results = ["shell sort:"]
for j in range(len(list2)):
    len_arg = len(list2[j])
    start2 = time.time()
    shell_sort(list2[j], len_arg)
    end2 = time.time()
    results2 = "{0:.5f}".format(end2 - start2)
    shell_results.append(results2 + "s")

# Final matrix with results
table = [list_indexes, list_n, bubble_results, heap_results,
         selection_results, merge_results, insertion_results, quick_results, shell_results]

print("\nRESULTS:\n", tabulate((table), headers="firstrow", tablefmt="presto"))