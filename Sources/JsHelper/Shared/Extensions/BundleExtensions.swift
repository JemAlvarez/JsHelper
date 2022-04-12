//

import Foundation

extension Bundle {
    /// Load local json file
    ///
    /// - Returns: Optional Data
    ///
    /// - Parameters: File name
    func loadLocalJSON(with fileName: String) -> Data? {
        // load bundle with file name
        if let url = Bundle.main.url(forResource: fileName, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url)
                
                return data
            } catch {
                error.printError(for: "Loading local JSON")
            }
        }
        
        return nil
    }
}
