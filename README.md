# TTodo
Super minimalist TODO script for Linux terminals

This is a script to manage a todo.txt in a fast way, without all the unnecessary functions. 
It is so minimal, it even deletes the todo.txt when it is empty. (comment that line out if it is a problem)

# Usage

In your terminal:

<code>todo</code> #lists your tasks <br />
<code>todo Something I definitely Should do</code> #adds a TODO note, and shows all your tasks <br />
<code>did 2</code> #removes the second task from TODO, shows the remaining tasks <br />

# How to set up

1. Copy the todo.sh script somewhere
2. Change the todo.txt and todotemp.txt locations in the script if needed
3. <code>chmod +x todo.sh</code> #add execution permission to the file
4. Add two necessary aliases at the end of your .bashrc: <br />
  <code>alias todo="~/todo.sh"</code><br />
  <code>alias did="~/todo.sh -d"</code><br />
5. You can get a quick info by running
  <code>"~/todo.sh -c"</code><br />


You are set!
