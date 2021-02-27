import Foundation

// By default all created queues are serial.
// Serial: Can only be executing one task at a time.
// A task must FINISH before the next task executes.
let serialQueue = DispatchQueue(label: "My serial queue")

// What queue are we in?
// Fernando's Razor: If you don't know in which queue you're executing, you're on the main queue.
print("1️⃣")

// Main Queue
// 1. Add a closure to a queue.
// From the MAIN QUEUE add a closure to SERIALQUEUE.
// Sync means blocked.
// From the MAIN QUEUE add a closure to SERIALQUEUE and BLOCK MAIN QUEUE.
serialQueue.sync
{ // 2. Execute the closure in the queue.
    sleep(3)
    print("2️⃣")
}

// Cannot print until the previous closure is done.
print("3️⃣")

serialQueue.sync
{
    print("4️⃣")
}

print("5️⃣")

serialQueue.sync
{
    print("6️⃣")
}

print("7️⃣")
