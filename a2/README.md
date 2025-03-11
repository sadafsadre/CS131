# Todo: A Simple Command-Line To-Do List

## What This Command Does
`todo` is a lightweight command-line tool for managing a to-do list. It allows users to quickly add, remove, and display tasks directly from the terminal.

## Why/When This Command is Useful
- Helps users keep track of tasks without needing a full-fledged task manager.
- Useful for quick notes and reminders.
- Accessible directly from the shell, making it efficient for programmers and terminal users.

## How to Use This Command
### **Installation**
1. Copy the `todo.sh` script to a directory in your `$PATH` (e.g., `/usr/local/bin`).
2. Make it executable:
   ```sh
   chmod +x todo.sh
   mv todo.sh /usr/local/bin/todo
   ```
3. Now you can use it by running `todo` from anywhere in the terminal.

### **Usage**
Run the command with the following options:
```sh
todo [list|add "task"|remove <task_number>|clear]
```

**Options:**
- `list` → Displays the current to-do list.
- `add "task"` → Adds a new task to the list.
- `remove <task_number>` → Removes a task by number.
- `clear` → Clears all tasks.

### **Examples**
#### Example 1: Adding Tasks
```sh
todo add "Finish CS131 assignment"
todo add "Buy groceries"
```
#### Example 2: Viewing Tasks
```sh
todo list
Your To-Do List:
 1  Finish CS131 assignment
 2  Buy groceries
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

### **Actual Terminal Execution**
```sh
$ todo add "Study for midterms"
Added: Study for midterms

$ todo add "Go to gym"
Added: Go to gym

$ todo list
Your To-Do List:
 1  Study for midterms
 2  Go to gym

$ todo remove 1
Removed task 1.

$ todo list
Your To-Do List:
 1  Go to gym

$ todo clear
Cleared all tasks.
```

## Notes
- Tasks are stored in `~/.todo_list`.
- Tasks persist even after closing the terminal.

## License
This tool is open-source and free to use.

---
### **Presentation Guidelines**
- Show a quick demo adding, listing, and removing tasks.
- Explain how the script works step by step.
- Keep the presentation within 4 minutes.


