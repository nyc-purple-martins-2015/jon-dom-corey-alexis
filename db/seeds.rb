task_args={task_description: "Walk the dog", list_id: 1,status: false}

task_args2 = {task_description: "Buy new notepads", list_id: 2, status: false}

Task.create(task_args)
Task.create(task_args2)

List.create({list_name: "Home List"})
List.create({list_name: "Work List"})

Tag.create({category: "Pet Things"})
Tag.create({category: "Supplies"})

