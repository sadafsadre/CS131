#!/bin/bash

TODO_FILE="$HOME/.todo_list"

# Ensure the file exists
touch "$TODO_FILE"

# Function to display tasks
list_tasks() {
    if [[ ! -s "$TODO_FILE" ]]; then
        echo "No tasks found."
    else
        echo "Your To-Do List:"
        cat -n "$TODO_FILE"
    fi
}

# Function to add a task
add_task() {
    echo "$1" >> "$TODO_FILE"
    echo "Added: $1"
}

# Function to remove a task by number
remove_task() {
    if [[ ! -s "$TODO_FILE" ]]; then
        echo "No tasks to remove."
        return
    fi

    sed -i.bak "$1d" "$TODO_FILE" && echo "Removed task $1."
    rm "$TODO_FILE.bak"
}

# Function to clear all tasks
clear_tasks() {
    > "$TODO_FILE"
    echo "Cleared all tasks."
}

# Help message
usage() {
    echo "Usage: todo [list|add \"task\"|remove <task_number>|clear]"
    exit 1
}

# Command handling
case "$1" in
    list) list_tasks ;;
    add) shift; add_task "$*" ;;
    remove) remove_task "$2" ;;
    clear) clear_tasks ;;
    *) usage ;;
esac
