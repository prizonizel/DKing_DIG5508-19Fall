# The function receives six numbers representing pairs of genes:
# two for color, two for type, and two for size.
# The function returns both color genes (representing co-expressed traits),
# the smaller of the type genes (representing a dominant trait),
# and the average of the size genes (representing a trait combining both genes).

#%%
def genotype_to_phenotype(color_gene1,color_gene2,type_gene1,type_gene2,size_gene1,size_gene2):
    type_expression = 0
    size_expression = 0
    if type_gene1 <= type_gene2:
        type_expression = type_gene1
    else:
        type_expression = type_gene2
    size_expression = (size_gene1+size_gene2)/2
    return [color_gene1,color_gene2,type_expression,size_expression]

# See readme.md for an amusing reflection on this code.

#%%
