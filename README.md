# TTodo
Super minimalist TODO script for Linux terminals

This is a script to manage a todo.txt in a fast way, without all the unnecessary functions. 
It is so minimal, it even deletes the todo.txt when it is empty. (comment that line out if it is a problem)

# Usage

In your terminal:

todo #lists your tasks

todo Something I definitely Should do #adds a TODO note, and shows all your tasks

did 2 #removes the second task from TODO, shows the remaining tasks

# How to set up

1. Copy the todo.sh script somewhere
2. Change the todo.txt and todotemp.txt locations in the script if needed
3. chmod +x todo.sh #add execution permission to the file
4. Add two necessary aliases at the end of your .bashrc:
  alias todo="~/todo.sh"
  alias did="~/todo.sh -d"

You are set!
