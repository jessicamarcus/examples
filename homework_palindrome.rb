#Given a string, return true if it is a palindrome, false otherwise.
#• Remove blank spaces and punctuation using tr.
#• Use the ternary operator. (condition ? true_value : false_value)
#• Example:
#Given str = "Able was I ere I saw Elba"
#• Expected result: true

str = "Able was I ere I saw Elba"

str1 = str.tr(" ", "").downcase
str2 = str1.reverse

str1 == str2 ? print(str + ": this is a palindrome.") : print(str + ": this is not a palindrome.")