import UIKit

import Foundation

print("Start")

// Async task
DispatchQueue.global().async {
    print("Async Task Started")
    sleep(2)
    print("Async Task Finished")
}

// Sync task
DispatchQueue.global().sync {
    print("Sync Task Started")
    print("Sync Task Finished")
}

print("End")
