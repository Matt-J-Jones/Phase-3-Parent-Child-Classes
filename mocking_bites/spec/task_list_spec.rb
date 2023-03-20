require "task_list"

RSpec.describe TaskList do
  it "initially has an empty list" do
    task_list = TaskList.new
    expect(task_list.all).to eq []
  end

  it "is initially not all complete" do
    task_list = TaskList.new
    expect(task_list.all_complete?).to eq false
  end

  it "adds tasks to list, returns list of tasks" do
    task_list = TaskList.new
    task_0 = double :task
    task_list.add(task_0)
    task_1 = double :task
    task_list.add(task_1)
    expect(task_list.all).to eq [task_0, task_1]
  end

  it "adds tasks to list, returns all tasks marked complete true" do
    task_list = TaskList.new
    task_0 = double :task, complete?: true
    task_1 = double :task, complete?: true
    task_list.add(task_0)
    task_list.add(task_1)
    expect(task_list.all_complete?).to eq true
  end

  it "adds tasks to list, returns all tasks marked complete false" do
    task_list = TaskList.new
    task_0 = double :task, complete?: true
    task_1 = double :task, complete?: false
    task_list.add(task_0)
    task_list.add(task_1)
    expect(task_list.all_complete?).to eq false
  end
end
