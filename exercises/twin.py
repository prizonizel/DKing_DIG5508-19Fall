
#%%
wyatt = 'They flee from me that sometime did me seek / With naked foot, stalking in my chamber.'

def twin(test_string):
    pairs = 0
    lowercase = test_string.lower()
    for i in range(len(lowercase)-1):
        if lowercase[i] == lowercase[i+1]:
            pairs = pairs + 1
    return pairs


#%%
