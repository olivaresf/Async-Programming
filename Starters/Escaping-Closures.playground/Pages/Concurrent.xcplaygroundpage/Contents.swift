import Foundation

// Concurrent queue is FIFO
// Concurrent queues MUST begin one closure before beginning the next closure.
let concurrentQueue = DispatchQueue(label: "Serial Queue by default", attributes: .concurrent)

concurrentQueue.async
{
    print("1️⃣")
}

concurrentQueue.async
{
    print("2️⃣")
}

concurrentQueue.async
{
    print("3️⃣")
}
