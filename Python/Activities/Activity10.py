numbers = tuple(map(int, input("Enter numbers separated by space: ").split()))

for num in numbers:
    if num % 5 == 0:
        print(num)
