#%%
source = open('exercises/215-0.txt')
wild = source.read()

import re

said_phrases = re.findall("on", wild)

print(said_phrases)

#%%
import re

#Return a list containing every occurrence of "ai":

str = "The rain in Spain"
x = re.findall("ai", str)
print(x)

#%%
