require 'spec_helper'

module GameOfLife
  describe World do
    context 'move to the next generation' do
      it 'should return the next generation correctly as all DEAD for a grid with all dead cells initially' do
        world = World.new([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
        expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      end

      it 'should return the next generation correctly for a generation that does not result in change of state of any cell' do
        world = World.new([[ALIVE, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
        expect(world.move_to_next_generation).to eq([[ALIVE, ALIVE, DEAD], [DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
      end

      it 'should return the next generation correctly for the move to next generation that changes state from ALIVE to DEAD for only for the cell at 1,1 in the grid' do
        world = World.new([[DEAD, DEAD, DEAD], [DEAD, ALIVE, DEAD], [DEAD, DEAD, DEAD]])
        expect(world.move_to_next_generation).to eq([[DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD], [DEAD, DEAD, DEAD]])
      end
    end
  end
end