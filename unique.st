"Find the unique integer."
"An unique integer is a integer with no repeated digit"
"i.e. 121, 988, 677... has a repeated repeated"

Integer extend[
   "Finds the unique number under 10 raise to self"   
   unique[
       Transcript show: 'Parse 1-'.
       (10 raisedTo: self) printNl.
       1 to: (10 raisedTo: self) -1 do:[ :where |
         where parseUnique.
       ]
   ]

   parseUnique[
      |array  check| 
      array := Array new: 10.
      check := self.
      1 to: 10 do: [:i | array at: i put: 0].
      [check > 0] whileTrue: [
         |index| 
         index := check \\ 10 +1.
         check := check // 10.
         ((array at: index) > 0 ) ifTrue:[ ^self ].
         array at: index put: 1.
      ].
      self printNl.
   ]
]

1 unique.
2 unique. 
3 unique.
4 unique.
