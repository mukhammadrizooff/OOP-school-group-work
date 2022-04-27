require './student_file'

describe Student do
  context 'Create a Student' do
    it 'can create a student' do
      name = 'James Alero'
      age = 12
      permission = 1
      student = Student.new(age, name: name, parent_permission: permission)
      expect(student.age).to eq(12)
      expect(student.correct_name).to eq('James Alero')
    end
    it 'can have parent permission' do
      name = 'James Alero'
      age = 12
      permission = true
      student = Student.new(age, name: name, parent_permission: permission)
      expect(student.parent_permission).to eq(true)
    end
  end
end
