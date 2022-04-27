require "./person_file"

describe Person do
     context "Create a Person" do
          it "can create a person" do
               name = "James Alero"
               age = 12
               permission = false
               person = Person.new(age, name: name, parent_permission: permission)
               expect(person.age).to eq(12)
               expect(person.correct_name).to eq('James Alero')
          end
          it "can have correct name" do
               name = "James Alero"
               age = 12
               person = Person.new(age, name: name)
               expect(person.correct_name).to eq('James Alero')
          end
          it "can have parent permission" do
               age = 12
               permission = true
               person = Person.new(age, parent_permission: permission)
               expect(person.parent_permission).to eq(true)
          end
     end
end
