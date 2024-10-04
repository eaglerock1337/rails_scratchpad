module Catalog
  extend ActiveSupport::Concern

  MyItem = Struct.new(:name, :description)

  # Stuff that actually has purpose in the game
  USEFUL_STUFF = [
    MyItem.new("Hammer", "A particularly ordinary hammer."),
    MyItem.new("Pickaxe", "Apprently, not made of diamond."),
    MyItem.new("Iron Ore", "It's harder to find games without this in it."),
    MyItem.new("Iron Ingot", "What type of game is this, anyway?"),
  ]

  class_methods do
    def random
      USEFUL_STUFF.sample
    end
  end

  def useful?
    USEFUL_STUFF.any? { |s| s.name == name }
  end
end