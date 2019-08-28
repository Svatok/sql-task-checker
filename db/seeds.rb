Project.create(name: 'Complete the test task for Ruby Garage') do |project|
  project.tasks.build(name: 'Open this mock-up in Adobe Fireworks', status: 'completed')
  project.tasks.build(name: 'Check file', status: 'in progress')
  project.tasks.build(name: 'Write HTML & CSS', status: 'pending')
  project.tasks.build(name: 'Add JavaScript', status: 'pending')
end

Project.create(name: 'For Home') do |project|
  project.tasks.build(name: 'Buy a milk', status: 'pending')
  project.tasks.build(name: 'Call Mam', status: 'completed')
  project.tasks.build(name: 'Clean the room', status: 'completed')
  project.tasks.build(name: 'Repair the DVD Player', status: 'in progress')
  project.tasks.build(name: 'Complete1', status: 'completed')
  project.tasks.build(name: 'Complete2', status: 'completed')
  project.tasks.build(name: 'Complete3', status: 'completed')
  project.tasks.build(name: 'Complete4', status: 'completed')
  project.tasks.build(name: 'Complete5', status: 'completed')
  project.tasks.build(name: 'Complete6', status: 'completed')
  project.tasks.build(name: 'Complete7', status: 'completed')
  project.tasks.build(name: 'Complete8', status: 'completed')
  project.tasks.build(name: 'Complete9', status: 'completed')
  project.tasks.build(name: 'Never update this', status: 'pending')
end

Project.create(name: 'For Work') do |project|
  project.tasks.build(name: 'Write specs', status: 'in progress')
  project.tasks.build(name: 'Read documentation', status: 'completed')
  project.tasks.build(name: 'Write code', status: 'pending')
  project.tasks.build(name: 'Sleep', status: 'completed')
end

Project.create(name: 'Never use') do |project|
  project.tasks.build(name: 'Copy pasting', status: 'pending')
  project.tasks.build(name: 'Unsupported libraries', status: 'completed')
  project.tasks.build(name: 'Sleep', status: 'completed')
end

Project.create(name: 'Bla bla') do |project|
  project.tasks.build(name: 'Do something', status: 'pending')
  project.tasks.build(name: 'Sleep', status: 'completed')
  project.tasks.build(name: 'Run', status: 'completed')
  project.tasks.build(name: 'Jump', status: 'completed')
  project.tasks.build(name: 'Bike', status: 'completed')
  project.tasks.build(name: 'Car', status: 'in progress')
  project.tasks.build(name: 'Nothing interesting', status: 'in progress')
end

Project.create(name: 'Empty project')
Project.create(name: 'Nothing interesting')

Task.create(name: 'Wrong task1', status: 'completed')
Task.create(name: 'Wrong task2', status: 'completed')
Task.create(name: 'Wrong task3', status: 'completed')
Task.create(name: 'Wrong task4', status: 'completed')
Task.create(name: 'Wrong task5', status: 'completed')
Task.create(name: 'Wrong task6', status: 'completed')
Task.create(name: 'Wrong task7', status: 'completed')
Task.create(name: 'Wrong task8', status: 'completed')
Task.create(name: 'Wrong task9', status: 'completed')
Task.create(name: 'Wrong task10', status: 'completed')
Task.create(name: 'Wrong task11', status: 'completed')
Task.create(name: 'Wrong task12', status: 'completed')

Project.create(name: 'Garage') do |project|
  project.tasks.build(name: 'Fix', status: 'pending')
  project.tasks.build(name: 'Eat', status: 'in progress')
  project.tasks.build(name: 'Sleep', status: 'completed')
  project.tasks.build(name: 'Work', status: 'completed')
  project.tasks.build(name: 'Eat', status: 'in progress')
  project.tasks.build(name: 'Sleep', status: 'in progress')
  project.tasks.build(name: 'Fix', status: 'pending')
  project.tasks.build(name: 'Work', status: 'completed')
  project.tasks.build(name: 'Fix', status: 'pending')
  project.tasks.build(name: 'Eat', status: 'in progress')
  project.tasks.build(name: 'Fix', status: 'pending')
  project.tasks.build(name: 'Complete1', status: 'completed')
  project.tasks.build(name: 'Complete2', status: 'completed')
  project.tasks.build(name: 'Complete3', status: 'completed')
  project.tasks.build(name: 'Complete4', status: 'completed')
  project.tasks.build(name: 'Complete5', status: 'completed')
  project.tasks.build(name: 'Complete6', status: 'completed')
  project.tasks.build(name: 'Complete7', status: 'completed')
  project.tasks.build(name: 'Complete8', status: 'completed')
  project.tasks.build(name: 'Complete9', status: 'completed')
  project.tasks.build(name: 'Complete10', status: 'completed')
  project.tasks.build(name: 'Never do this', status: 'completed')
end
