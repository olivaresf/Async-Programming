import Foundation

// By default all created queues are serial.
// Concurrent: Can execute _more than_ one task at a time.
// A task must BEGIN before the next task executes.
let concurrentQueue = DispatchQueue(label: "My concurrent queue",
                                    attributes: .concurrent)

// What queue are we in?
// Fernando's Razor: If you don't know in which queue you're executing, you're on the main queue.
print("1️⃣")

// Main Queue
// 1. Add a closure to a queue.
// Aync means unblocked.
// From the MAIN QUEUE add a closure to CONCURRENTQUEUE and NOT BLOCK MAIN QUEUE.
concurrentQueue.async
{ // 2. Execute the closure in the queue.
    sleep(1)
    print("2️⃣")
    
    // Parse JSON
    // Moving to the main queue to update the UI
    concurrentQueue.sync {
        print("Update the label")
        sleep(1)
    }
    
    print("We're done with sync")
}

// Cannot print until the previous closure is done.
print("3️⃣")

concurrentQueue.async
{
    sleep(1)
    print("4️⃣")
}

print("5️⃣")

concurrentQueue.async
{
    sleep(1)
    print("6️⃣")
}

print("7️⃣")
