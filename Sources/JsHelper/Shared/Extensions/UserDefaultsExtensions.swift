//

import Foundation

public extension UserDefaults {
    /// Reset UserDefaults
    func reset(for keys: [String]) {
        keys.forEach { removeObject(forKey: $0) }
    }
}
