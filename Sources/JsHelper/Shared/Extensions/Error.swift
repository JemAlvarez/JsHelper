//

import Foundation

public extension Error {
    func printError(for label: String) {
        print("Error occurred: \(label)")
        print(self.localizedDescription)
        print(self)
    }
}
