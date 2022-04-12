//

import StoreKit

@available(iOS 15, *)
public extension Product {
    var localizedPrice: String? {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        return formatter.string(from: price as NSNumber)
    }
}
