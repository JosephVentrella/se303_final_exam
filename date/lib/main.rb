# Refactor.
# Hint: Don't change the constructor parameter list for this
#       refactoring.
# Hint: Let the existing code use the new code.

class Plant
  attr_reader :name, :height

  def initialize(name, height)
    @name = name
    @height = height
  end
  def details
    [name, height]
  end
end

class Plot
  def initialize(plot_items)
    @plot_items = plot_items
  end
  def size
    plot_items.size
  end

end

class Farm

  attr_reader :plots

  def initialize
    # Plants have a name and a height
    corn = Plant.new("Sugar Baby", 3).details
    radish_1 = Plant.new("Red Boomer", 1).details
    radish_2 = Plant.new("Plump Pucker", 1).details
    cucumber = Plant.new("Green Lady", 2).details
    tomato = Plant.new("Dark Plump", 2).details
    beet_1 = Plant.new("Rainbow", 1).details
    beet_2 = Plant.new("Deep Darkness", 1).details
    # Plots have a name and some plants
    #plot_a = Plot.new(["Plot A", corn, radish_1, radish_2])
    plot_a = ["Plot A", corn, radish_1, radish_2]
    plot_b = ["Plot B", cucumber, tomato, beet_1, beet_2]
    @plots = [plot_a, plot_b]
  end

  def number_of_plots
    plots.size
  end

  def total_number_of_plants
                  # Subtract one from size because name is not a plant
    plots.reduce(0) { |total, plot| total += (plot.size - 1) }
  end

  def total_plant_heights
    total = 0
    plots.each do |plot|
      # Remove the plot name before iterating over the plants.
      plot.drop(1).each do |plant|
        total += plant[1]
      end
    end
    total
  end

end