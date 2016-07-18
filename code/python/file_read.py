import os

with open(os.path.join(os.getcwd(), 'code', 'file.txt')) as f:
    print(f.read())
