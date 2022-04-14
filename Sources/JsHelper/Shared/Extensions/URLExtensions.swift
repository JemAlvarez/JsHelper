//

import Foundation

public extension URL {
    // Default URL
    static let defaultURL: URL = URL(string: "https://apple.com")!
    
    /// Returns a URL for the given app group and database pointing to the sqlite database.
    static func storeURL(for appGroup: String, databaseName: String) -> URL {
        guard let fileContainer = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: appGroup) else {
            fatalError("Shared file container could not be created.")
        }
        
        return fileContainer.appendingPathComponent("\(databaseName).sqlite")
    }
    
    @available(iOS 13, *)
    /// Returns optional data from url
    func requestData() async -> Data? {
        // url
        let url = self
        // data
        var outputData: Data? = nil
        
        if #available(iOS 15.0, *) {
            do {
                let data = try await URLSession.shared.data(from: url)
                outputData = data.0
            } catch {
                error.printError(for: "Fetching data from \(url.description)")
            }
        } else {
            URLSession.shared.dataTask(with: url) { data, res, err in
                outputData = data
            }.resume()
        }
        
        return outputData
    }
}
