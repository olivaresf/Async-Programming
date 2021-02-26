import Foundation

// Serial queue is FIFO
// Serial queues MUST finish one closure before beginning the next closure.
let serialQueue = DispatchQueue(label: "Serial Queue by default")

serialQueue.async
{
    print("1️⃣")
}

print("Added 1️⃣")

serialQueue.async
{
    print("2️⃣")
}

print("Added 2️⃣")

serialQueue.async
{
    print("3️⃣")
}

print("Added 3️⃣")
