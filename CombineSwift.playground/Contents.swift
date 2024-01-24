import UIKit
import Combine

 
let publisher = Timer.publish(every: 1.0, on: .main, in: .default)
     
let cancellable = publisher.autoconnect().sink { v in
    print("v -> \(v)")
}


DispatchQueue.main.asyncAfter(deadline: .now() + 5.0){
    cancellable.cancel()
}
