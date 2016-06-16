import pathlib

with (pathlib.Path(__file__).parent / 'file.txt').open() as f:
    print(f.read())
