module GameOfLife

  DEAD = Object.new
  ALIVE = Object.new

  #The job of the class world is to represent Conway's game of life in a 2d grid
  class World
    def initialize(seed_configuration)
      @cell_grid = seed_configuration
    end

    def move_to_next_generation
      grid_of_next_generation = @cell_grid.clone
      all_neighbors = [[-1, 0], [1, 0], [-1, 1], [0, 1], [1, 1], [-1, -1], [0, -1], [1, -1]]
      sum_of_alive_neighbors = all_neighbors.inject(0) do |sum, pos|
        sum + (@cell_grid[(1 + pos[0])][(1 + pos[1])] == ALIVE ? 1 : 0)
      end

      unless sum_of_alive_neighbors == 2 || sum_of_alive_neighbors == 3
        grid_of_next_generation[1][1] = DEAD
      end
      grid_of_next_generation
    end
  end
end
