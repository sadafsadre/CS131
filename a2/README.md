# Todo: Command-Line To-Do List

## What does this command do?
The 'todo' is a command-line tool that manages a to-do list. With this command-line tool you can  add, remove, and display tasks directly from the terminal.

## Why/When is this command is useful?
- It helps users keep track of tasks
- It is useful for quick notes and reminders
- It is accessible directly from the shell which makes it convenient for programmers and terminal useres

## How to Use This Command:
### **Installation**
1. Open a terminal and navigate to a directory where you want to store the script:
   ```sh
   cd ~
   ```
2. Create a new file named `todo.sh`:
   ```sh
   nano todo.sh
   ```
3. Copy and paste the todo.sh  script inside the file
4. Make it executable:
   ```sh
   chmod 750 todo.sh
   sudo mv todo.sh /usr/local/bin/todo
   ```
5. Now you can use it by running `todo` from anywhere in the terminal

### **Usage**
Run the command with the following options:
```sh
todo [list|add "task"|remove <task_number>|clear]
```

**Options:**
- `list` → Shows what tasks you have on your to-do list
- `add "task"` → Adds a new task to the list
- `remove <task_number>` → Removes a task by number
- `clear` → Clears all tasks

### **Examples**
#### Example 1: Adding Tasks
```sh
todo add "Finish CS131 assignment"
todo add "Go to the gym"
```
#### Example 2: Viewing Tasks
```sh
todo list
Your To-Do List:
 1  Finish CS131 assignment
 2  Go to the gym
```
#### Example 3: Removing a Task
```sh
todo remove 1
Removed task 1.
```
#### Example 4: Clearing All Tasks
```sh
todo clear
Cleared all tasks.
```
## Notes
- Tasks are stored in `~/.todo_list`
- Tasks stay  even after closing the terminal


