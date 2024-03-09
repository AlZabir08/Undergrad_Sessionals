import re

def find_pattern(text, pattern):
    matches = re.finditer(pattern, text)
    for match in matches:
        print('Pattern found at index:', match.start())

text = input('Enter the text: ')
pattern = input('Enter the pattern to find: ')

find_pattern(text, pattern)
