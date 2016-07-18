import pathlib

with (pathlib.Path(__file__).parent / 'output.txt').open('w') as f:
    f.write('Some glorious content')
