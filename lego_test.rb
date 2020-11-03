require 'minitest/autorun'
require_relative 'lego'

class LegoTests < Minitest::Test

  def setup
    @minifigure = LegoMinifigure.new("TestyMcTestFace")
  end

  def test_to_string_works_with
    @minifigure.left_item = nil
    @minifigure.right_item = nil
    @minifigure.hat = nil
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace.")
  end

  def test_hat_words
    @minifigure.left_item = nil
    @minifigure.right_item = nil
    @minifigure.hat = LegoHat.new(12,"red","tophat")
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is wearing a 12 red tophat.")
  end

  def test_left_item_words
    @minifigure.left_item = LegoItem.new("Big hammer",123)
    @minifigure.right_item = nil
    @minifigure.hat = nil
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is holding a 123 gram Big hammer in the left hand.")
  end

  def test_right_item_words
    @minifigure.left_item = nil
    @minifigure.right_item = LegoItem.new("Big hammer",123)
    @minifigure.hat = nil
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is holdinga 123 gram Big hammer in the right hand.")
  end

  def test_is_stylsih
    @minifigure.hat = LegoHat.new(12,"red","tophat")
    assert(@minifigure.is_stylish?)
  end

  def test_swap_hands
    @minifigure.left_item = LegoItem.new("Big hammer",123)
    @minifigure.right_item = LegoItem.new("small hammer",123)
    @minifigure.swap_hands
    assert(@minifigure.left_item.name == "small hammer" && @minifigure.right_item.name == "Big hammer")
  end

  def test_wear_hat
    @minifigure.left_item = nil
    @minifigure.right_item = nil
    @minifigure.hat = nil
    @minifigure.wear_hat(LegoHat.new(12,"red","tophat"))
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is wearing a 12 red tophat.")
  end

  def test_place_in_left_hand_method
    @minifigure.left_item = nil
    @minifigure.right_item = nil
    @minifigure.hat = nil
    @minifigure.place_in_left_hand(LegoItem.new("Big hammer",123))
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is holding a 123 gram Big hammer in the left hand.")
  end

  def test_place_in_right_hand_method
    @minifigure.left_item = nil
    @minifigure.right_item = nil
    @minifigure.hat = nil
    @minifigure.place_in_right_hand(LegoItem.new("Big hammer",123))
    assert(@minifigure.to_s == "A Lego minifigure named TestyMcTestFace, who is holdinga 123 gram Big hammer in the right hand.")
  end

  def test_is_strong
    @minifigure.left_item = LegoItem.new("Big hammer",1234456)
    assert(@minifigure.is_strong?)
  end
end



class LegoHatTests < Minitest::Test

  def setup
    @hat = LegoHat.new(12,"blue","cap")
  end

  def test_to_string_method
    assert(@hat.to_s == "a 12 blue cap")
  end

end

class LegoItemTests < Minitest::Test

  def setup
    @item = LegoItem.new("baseball", 12)
  end

  def test_to_string_method
    assert(@item.to_s == "a 12 gram baseball")
  end

  def test_is_heavy_method
    assert(@item.is_heavy(10))
  end

end
