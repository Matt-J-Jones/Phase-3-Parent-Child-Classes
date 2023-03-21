require 'task_formatter'

RSpec.describe TaskFormatter do
  it "creates new instance of task" do
    fake_task = double(:task)
    task = TaskFormatter.new(fake_task)
  end
  
  it "returns task as formatted string - task complete" do
    fake_task = double(:task, title: "Dishes", complete?: false)
    task = TaskFormatter.new(fake_task)
    expect(task.format).to eq "[ ] Dishes"
  end

  it "returns task as formatted string - task complete" do
    fake_task = double(:task, title: "Dishes", complete?: true)
    task = TaskFormatter.new(fake_task)
    expect(task.format).to eq "[x] Dishes"
  end
end