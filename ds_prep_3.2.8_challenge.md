# Challenge - Beware of Monty Hall

You should switch doors. The way I've always thought about this problem is to consider the same game, but with many more possible doors--let's say 1,000.

Thus, you have 1,000 doors to pick from, and you select door number 23. The host, knowing which door has the prize behind it and is forced by the rules of the the game to avoid it, opens all the remaining doors except, say, door number 863. You are clearly going to switch under these circumstances, as your first pick is almost certainly wrong, and the new information provided by the host's actions basically points a spotlight on which door has the prize. The same logic should hold for the three-door version as well.

The Monty Hall problem is a nice example of Bayesian thinking. That is,  in the above description, my prior was that the prize behind is behind door number 23, and I update my belief given the new information that all doors, except door 863, contain duds.