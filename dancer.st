"Slim Shady decides to hold a break-dancing contest. He finds a room that is 30 square meters. He knows that each break-dancer requires 5 square meters to show his skills, less than that and people are bonking into each other's heads and smashing ankles as they spin.

Once Slim Shady yells 'Bring it!' the dancers enter the room, and each dances for an average of 5 minutes.

Suppose that he only allows 6 dancers into the room, then average dancer completion rate is 0.2/minute, and the dancer throughput is thus 6 x 0.2 = 1.2 dancers/minute.

A person not dancing takes 2 square meters of space. So if 7 people are in the room, 2 are standing around taking up 4 square meters, 5 are dancing.

What is the throughput of 9 people in the room? Of 20 people in the room?"

Object subclass: Party [
   "Variables"
   | dancer spaceRoom spaceDance spaceWait timeDancing throughput| 
   throughput[^ throughput]
   "Object instantiation"
   Party class >> new [self shouldNotImplement. ]
   Party class >> new: size [
      |out| out := super new. out init: size. ^out.
   ]
   "Set number of dancers and the space of the room"
   init: size [ 
      dancer := size. spaceRoom := 30. 
      spaceWait := 2. spaceDance := 5.
      throughput := 0. timeDancing := 5.0.
   ]
   "Variable computation"
   getMaxDancer [^ spaceRoom / spaceDance. ]
   getAveCompletion [^ 1.0 / timeDancing. ]
   "Drop the beat"
   bringIt [
      (dancer <= self getMaxDancer)
         ifTrue:[ throughput := dancer * self getAveCompletion. ]
         ifFalse:[ throughput := self stallDancer. ].
         throughput printNl.
   ]
   "Compute the number of dancer dancing"
   stallDancer [
      (((spaceRoom - spaceDance) / spaceWait) < (dancer - 1)) 
      "No space for a single dance while others to wait"
      ifTrue:[^ 0. ]
      ifFalse:[
         (1 to: dancer) do: [:index |
            (spaceRoom - (spaceDance * index) - (spaceWait * (dancer - index))
            < 0) ifTrue:[ ^ (index - 1) * self getAveCompletion. ]
         ].
         ^ 0.
      ]
   ] 
]

slimShady := Party new: 6.
slimShady bringIt.

slimShady := Party new: 9.
slimShady bringIt.

slimShady := Party new: 20.
slimShady bringIt.
