#%%
import re

def check_zip(x):
    if len(x) == 5:
        print(re.search("(\d{5})",x))
    elif len(x) == 10:
        print(re.search("(\d{5})(-)(\d{4})",x))
    elif len(x) == 9:
        print(re.search("(\d{9})",x))
    else:
        print("Wrong number of digits")
