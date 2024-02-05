=begin
The returned string will be a new string object. First split is called on the object referenced by the method parameter str, which
returns a new array containing the words in the original string object. Those words are mutated, but because those words are references to copies
of the original string object, the original string object is not affected. 