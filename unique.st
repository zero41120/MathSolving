"Find the unique number."
"An unique number is define as: A number with no repeated digit"
"i.e. 121, 988, 677... has a repeated repeated"

Integer extend[
   "Finds the unique number under 10 raise to self"   
   unique[
      "Shows the range"
      Transcript show: 'Parse 1-'.
      (10 raisedTo: self) printNl.
      
      "Parse from 1 to the range"
      1 to: (10 raisedTo: self) -1 do:[ :i | i parseUnique. ].
   ]

   parseUnique[
      "Creates array for checking if a digit repeated"
      |array  check| 
      check := self.
      array := Array new: 10.
      1 to: 10 do: [:i | array at: i put: 0].
      
      "Checks the number by shifting 10"
      [check > 0] whileTrue: [
         |index| 
         index := check \\ 10 +1.
         check := check // 10.
         "If array at the digit is not 0, omit this number"
         ((array at: index) > 0 ) ifTrue:[ ^self ].
         "If array at the digit is 0, set it to 1 to indicate used"
         array at: index put: 1.
      ].

      "This number is unique"
      self printNl.
   ]
]

1 unique.
2 unique. 
3 unique.
4 unique.
