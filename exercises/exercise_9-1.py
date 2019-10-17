#%%
source = open('exercises/215-0.txt')
wild = source.read()

import re

wild_exclamations = re.findall(r'[A-Za-z]+!', wild)

print(wild_exclamations)

#%%
