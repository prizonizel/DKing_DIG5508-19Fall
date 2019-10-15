In the process of doing this project, I realized that the original way I wrote this functionality for my game was horribly inefficient.

In my game, these are the lines that resolve the type and size genes to their expressed traits:

type = global.flower_type[type_gene1, type_gene2];
yield = global.flower_yield[scale_gene1, scale_gene2];

These lines use the gene variables to select cells from two-dimensional arrays called flower_type[] and flower_yeild[]. To get this to work, I manually filled in the values for two 7x7 arrays -- effectively giving the program a cheat-sheet with 98 answers on it...

...when all I really had to do was instruct the program to find the lesser of a pair of numbers and the average of another pair of numbers.

When I recounted this to my collegaue Kirk Lundblade, he told me this is a good sign: "You know you are becoming a better programmer when you look back at code you wrote six months ago and say, 'What the hell was I thinking?!'"