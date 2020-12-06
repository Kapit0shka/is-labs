DOMAINS
list = symbol*
  
PREDICATES 
nondeterm splitting_list(list, list, list)

CLAUSES 
splitting_list([],[],[]).	%факт1
splitting_list([H],[H],[]).	%факт2
splitting_list([H1,H2|Tail],[H1|Tail1],[H2|Tail2]):-splitting_list(Хвост, Хвост1, Хвост2). %правило1

GOAL
%splitting_list([a,b,c,d,e,f], [a,c,e], [b,d,f]).	%запрос 1 
splitting_list([a,b,c,d,e], A, B). %запрос 2
