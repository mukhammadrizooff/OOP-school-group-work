require './class_room'
require 'rspec'

describe Classroom do
  describe '#initialize' do
    it 'should initialize a classroom with a label' do
      classroom = Classroom.new('Ruby')
      expect(classroom.label).to eq('Ruby')
    end
  end
end
