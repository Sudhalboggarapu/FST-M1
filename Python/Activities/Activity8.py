input_string = input("Enter a list element separated by space ")
list  = input_string.split()
first=list[0]
last=list[-1]
print(first,last)
if (first == last):
    print(True)
else:
    print(False)