#%%
source = open('exercises/215-0.txt', 'r')
moby = source.read()

import re

wild_exclamations = re.findall(r'[qQ]u', moby)

print(wild_exclamations)

#%%