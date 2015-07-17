require 'spec_helper'

module GameOfLife
  describe World do
    it 'should return the next generation correctly as all DEAD for a grid with all dead cells initially' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
    end

    it 'should return the next generation correctly only for given seed' do
      world = World.new([[ALIVE, DEAD, DEAD], [DEAD, ALIVE, DEAD], [DEAD, ALIVE, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
    end
  end
end
