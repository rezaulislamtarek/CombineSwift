import UIKit
import Combine

var publisher = Just("Hello World")
let cancellable = publisher.sink { value in
    print(value)
}

cancellable.cancel()
