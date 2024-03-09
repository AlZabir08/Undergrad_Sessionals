class Queue:
    def __init__(self):
        self.items = []

    def enqueue(self, item):
        self.items.append(item)

    def dequeue(self):
        return self.items.pop(0) if self.items else None

    def display(self):
        print("Queue:", self.items)

# Main program
queue = Queue()

while True:
    print("\nQueue Operations:")
    print("1. Enqueue")
    print("2. Dequeue")
    print("3. Display")
    print("4. Exit")

    choice = input("Enter your choice: ")

    if choice == '1':
        item = input("Enter the item to enqueue: ")
        queue.enqueue(item)
        print(item, "enqueued into the queue.")
    elif choice == '2':
        item = queue.dequeue()
        if item:
            print(item, "dequeued from the queue.")
        else:
            print("Queue is empty.")
    elif choice == '3':
        queue.display()
    elif choice == '4':
        break
    else:
        print("Invalid choice. Please try again.")
