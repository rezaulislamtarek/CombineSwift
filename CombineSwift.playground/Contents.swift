import UIKit
import Combine

/*
 var publisher = Just("Hello World")
 let cancellable = publisher.sink { value in
 print(value)
 }
 
 cancellable.cancel()
 */

let numberPublisher = [1,2,3,4,5,6].publisher
let doublePublisher = numberPublisher.map { $0 * 2 }
let cancellable = doublePublisher.sink { value in
    print(value)
}

cancellable.cancel()
