
import os
os.path.abspath(os.getcwd())

f = open("dns/internal.txt", "r")
lines = f.readlines()

rewrites = []
for line in lines:
    line = ' '.join(line.split())
    p1 = line.split(' ')[0]
    p2 = line.split(' ')[1]
    rewrites.append({'answer': p1, 'domain': p2 })


print(rewrites)