
unique(X) :-
   This_number is 10 ^ X,
   format('Parse 1-~w~n', [This_number]),
   list_of_1_to_number(List, This_number),
   parse_unique(List).

list_of_1_to_number(Out, End) :- 
   findall(N, between(1, End, N), Out).

parse_unique([]) :- halt.
parse_unique([Head|Tail]) :- 
   print_unique(Head), 
   parse_unique(Tail).

print_unique(X) :-
   number_chars(X, C),
   sort(C, D), 
   length(C, N), 
   length(D, N),
   format('~w~n', [X]).
print_unique(_).
