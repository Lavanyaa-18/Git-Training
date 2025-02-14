todo_list = []
 
def add_todo():
    todo = input("Enter  todo list: ")
    todo_list.append(todo)
    print(f'To-do "{todo}" added.')
 
def remove_todo():
    todo = input("Enter the item to remove: ")
    if todo in todo_list:
        todo_list.remove(todo)
        print(f'To do "{todo}" has Removed.')
    else:
        print(f'To-do "{todo}" not found.')
 
def get_all_todos():
    return todo_list
 
def menu():
    while True:
        print("\nTo-Do List Menu:")
        print("1. Add  to-do list")
        print("2. Remove  to-do list")
        print("3. View all to-do list")
        print("4. Exit from todo")
        choice = input("Enter your choice from 1 to 4): ")
 
        if choice == '1':
            add_todo()
        elif choice == '2':
            remove_todo()
        elif choice == '3':
            print("Current to-dos:", get_all_todos())
        elif choice == '4':
            print("Exiting the to-do list program.")
            break
        else:
            print("Invalid choice. Please enter a number between 1 and 4.")
menu()