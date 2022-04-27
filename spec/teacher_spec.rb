require "./teacher_file"
require 'rspec'

RSpec.describe Teacher do
  before(:each) do
    name = 'Tina Okon'
    age = 33
    specialization = 1
    @teacher = Teacher.new(specialization, age, name)
  end

  describe '#initialize' do
    it 'should have a name' do
      expect(@teacher.name).to eq('Tina Okon')
    end

    it 'should have age' do
      expect(@teacher.age).to eq(33)
    end
  end
end

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end

RSpec.configure do |config|
  config.color = true
  config.formatter = :documentation
end
