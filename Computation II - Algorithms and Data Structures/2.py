import random


# shuffling function
def shuffling(list):
    n = len(list)
    for i in range(n):
        j = random.randint(0, n - 1)
        element = list.pop(j)
        list.append(element)
    return list

# Finding the maximum value
def max(lst):
    max = lst[0]
    for i in lst:
        if i > max:
            max = i
    return max

# Finding the minimum value
def min(lst):
    min = lst[0]
    for i in lst:
        if i < min:
            min = i
    return min

# Counting how many times an element appears on a list
def  counter(list1, x):
    count = 0
    for item in list1:
        if (item == x):
            count = count + 1
    return count

# Swapping function
def swapping(list, pos_A, pos_B):
    temp = list[pos_A]
    list[pos_A] = list[pos_B]
    list[pos_B] = temp
    return list

# Overlapping function
def overlap(list):

    unwanted = []

    # Append on unwanted if it appears more than once on the list
    for i in list:
        if counter(list, i) > 1:
            unwanted.append(i)

    # If an element appears an even number of times in unwanted, it should be removed from the list
    for i in unwanted:
        if i in list and counter(unwanted, i) % 2 == 0:
            list.remove(i)

    return(list)


before_overlap = []


def final(matrix):
    global before_overlap
    overlap_list = []
    before_overlap = [i for i in matrix if matrix.count(i) == 1]


    # before_overlap --> matrix with all the inputs without overlapping
    # overlap_list --> inputs list to be overlapped


    for j in before_overlap:
            overlap_list.extend(j)


    overlap(overlap_list)
    # if an element was not removed on the overlap_list by overlap, it should appear only once on new_list
    n_list = []
    for i in overlap_list:
        if i not in n_list:
            n_list.append(i)

    overlap_list = n_list

    # overlap list -> sorted list without repeated integers


    list_of_lists = []
    one_of_the_lists = [overlap_list[0]]
    for i in range(len(overlap_list) - 1):
        if overlap_list[i + 1] == overlap_list[i] + 1:
            one_of_the_lists.append(overlap_list[i + 1])
        else:
            list_of_lists.append(one_of_the_lists)
            one_of_the_lists = [overlap_list[i + 1]]
    list_of_lists.append(one_of_the_lists)

   # list_of_lists -> matrix of the sorted elements, without shuffling

    for i in range(len(list_of_lists)):
        if i % 2 != 0:
            list_of_lists[i] = shuffling(list_of_lists[i])
    # list_of_lists shuffled

    final_final_list = []
    for i in list_of_lists:
        final_final_list.extend(i)
    # final_final_list is the only printed list


    return final_final_list


matrix = []


def matriz(listz):
    matrix.append(listz)

    return matrix


# Forming new lists
def make_lists(list0):
    list0 = []

    min = int(input("Choose an integer to be the lowest number of your interval (can't be lower than -999): "))
    max = int(input("Choose an integer to be the highest value of your interval(can't be higher than 999): "))

    while min < -999:
        print('Minimum too low, choose some other values:')
        min = int(input("Choose an integer to be the lowest number of your interval (can't be lower than -999): "))

    while max > 999:
        print('Maximum too high, choose some other values:')
        max = int(input("Choose an integer to be the highest value of your interval(can't be higher than 999): "))

    for i in range(min, max + 1):
        list0.append(i)

    matriz(list0)

    return list0


def merge_lists(list0, matrix, new_list):
    print(final(matrix))

    question = ''
    while not ('no' or 'yes') in question.lower():
        question = input('Do you want to register a new interval? Answer yes or no: ')
        if 'no' in question.lower():

            print(f'END OF PROGRAM, your final list is: {(final(matrix))}')
            exit()

        elif 'yes' in question.lower():

            make_lists(new_list)
            # sorts the new list
            for i in matrix:
                for j in matrix:
                    if max(i) + 1 == min(matrix[-1]) and i != j and max(matrix[-1]) == min(j) - 1:
                        i.extend(matrix[-1][:])
                        i.extend(j)
                    elif max(i) + 1 == min(matrix[-1]):
                        i.extend(matrix[-1][:])
                        matrix.pop()
                    elif min(i) - 1 == max(matrix[-1]):
                        matrix[-1].extend(i)
                        matrix.remove(i)

                for i in range(len(matrix)):
                    while i < len(matrix):
                        if min(matrix[-1]) <= min(matrix[i]):
                            swapping(matrix, -1, i)
                        break

            print(final(matrix))



list0 = []
make_lists(list0)
new_list = []
merge_lists(list0, matrix, new_list)

