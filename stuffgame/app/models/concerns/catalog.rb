module Catalog
  extend ActiveSupport::Concern

  Item = Struct.new(:name, :description)

  # Stuff that actually has purpose in the game
  USEFUL_STUFF = [
    Item.new("Hammer", "A particularly ordinary hammer."),
    Item.new("Pickaxe", "Apprently, not made of diamond."),
    Item.new("Iron Ore", "It's harder to find games without this in it."),
    Item.new("Iron Ingot", "What type of game is this, anyway?"),
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