require_relative '../spec_helper'

describe Task do
  describe 'attributes' do
    let(:task) { Task.new(task_description: 'get a hair cut', list_id: 1, status: false) }

    # see commented test below
    # let(:add_one) { Task.add('trim your beard') }
    # let(:add_two) { Task.add('drive to Carlsbad') }

    it 'has a readable task_description' do
      expect(task.task_description).to eq 'get a hair cut'
    end

    it 'is initialized with a false status' do
      expect(task.status).to be false
    end

    # this is throwing error because of order of operations in #add. The method returns the list number, which is why the #task_description is not working here. I am not sure if this would be considered a design flaw or a testing flaw.
    # it 'can add new tasks' do
    #   expect(add_one.task_description).to eq 'get a hair cut'
    # end

    it 'can add new tasks' do
      Task.add('get ready for wedding')
      expect(Task.first.task_description).to eq 'get ready for wedding'
    end

    it 'saves added tasks' do
      Task.add('get ready for wedding')
      Task.add('trim your beard')
      Task.add('drive to Carlsbad')
      Task.add('go to gym')
      expect(Task.all.where(list_id: 1).length).to eq 4
    end

    it 'can delete tasks' do
      Task.add('get ready for wedding')
      Task.add('trim your beard')
      Task.add('drive to Carlsbad')
      Task.add('go to gym')
      Task.delete(1)
      expect(Task.all.where(list_id: 1).length).to eq 3
    end

    # This test fails because we are deleting according to Task ID, rather than the List index number that is displayed when we run the program from the console.
     it 'deletes the correct item' do
      Task.add('get ready for wedding')
      Task.add('trim your beard')
      Task.add('drive to Carlsbad')
      Task.add('go to gym')
      Task.delete(1)
      Task.delete(1)
      expect(Task.first.task_description).to eq "drive to Carlsbad"
    end

    it '#puts itself with a space to mark if completed' do
      expect(task.to_s).to eq '[ ] get a hair cut'
    end

    it 'can be completed' do
      task.complete
      expect(task.status).to eq true
    end

    it 'marks a completed task as such' do
      task.complete
      expect(task.to_s).to eq '[X] get a hair cut'
    end

  end
end