require 'spec_helper'

module GameOfLife
  describe World do
    it 'should return the next generation correctly as all DEAD for a grid with all dead cells initially' do
      world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
    end
  end
end
