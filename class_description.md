### LegoHat

The Lego hat has three public attributes, size, colour and style, you are required
to specify these when you instantiate a new object of this class.

The to_s method is overwritten to output: "a <hat-size> <hat-colour> <hat-style>"

### LegoItem

The legoItem class has two public attributes name and weight, you are required to
specify these attributes when instantiating.

it has overwritten the to_s method to output "a <item-weight> gram <item-name>"

it also has a method is_heavy, which takes in a threshold value and returns true/false
depending on whether the item-weight is higher or lower than that value.

### LegoMinifigure

the LegoMinifigure class has 4 public attributes, name, hat, left_item, right_item.
all except name are optional and you can declare an instance of LegoMinifigure with just a
name attribute

the to_s method is again rewritten to output a sentence describing the MiniFigure and
it's listed attributes. It is more interesting though as the class implements a few methods
that will return different values based on whether an item exists or not.

the method hat_words returns a string describing the hat, that would fit in with a sentence
describing the MiniFigure overall, or returns an empty string if the Minifigure has no hat.

the left_item_words and right_item_words methods do the same thing as the hat_words method.

the is_stylish? method simply returns true if the Minifigure has a red or blue hat, otherwise it
is false.

the swap_hands method simply takes the left_item and right_item attributes and swaps their values.

the wear_hat method is a setter for the hat attribute.

the place_in_left_hand and place_in_right_hand methods are setters for left_hand and right_hand attributes
respectively.

the is_strong? method simply returns true if either left_hand or right_hand is an item with weight greater
than 10.
