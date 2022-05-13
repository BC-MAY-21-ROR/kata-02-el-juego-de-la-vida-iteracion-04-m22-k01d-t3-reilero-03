# frozen_string_literal: true

require 'rspec'
require_relative './cells'
require_relative './board'

describe Board do
  
  describe '.values' do
    before do
      io_obj = ($row,$column)
      expect(subject)
        .to receive(:gets)
        .and_return(io_obj)
        .twice
      expect(io_obj)
        .to receive(:chomp)
        .and_return(:row)
      expect(io_obj)
        .to receive(:chomp)
        .and_return(:column)
      end
    end

    it 'sets @row and @column according to user\'s input' do
      subject.values

      expect(subject.instance_variable_get(:@row)).to eq :row
      expect(subject.instance_variable_get(:@column)).to eq :column
    end

    describe '.create_board' do
      it 'exists' do
        expect(Board.new().create_board.class).to eql(Matrix)
      end
    end

    describe '.cell_matrix' do
      it 'matches our elements, without caring about order' do
        expect([3, 2, 1]).to contain_exactly(1, 2, 3)
      end
    end
  end
end
