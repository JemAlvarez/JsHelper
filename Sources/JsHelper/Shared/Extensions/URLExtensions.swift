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

    @available(iOS 15.0, *)
    /// Returns optional data from url
    func requestData() async -> Data? {
        // url
        let url = self
        // data
        var outputData: Data? = nil

        do {
            let data = try await URLSession.shared.data(from: url)
            outputData = data.0
        } catch {
            error.printError(for: "Fetching data from \(url.description)")
        }

        return outputData
    }

    @available(iOS 14, *)
    func requestData(completion: @escaping (Data?) -> Void) {
        // url
        let url = self

        URLSession.shared.dataTask(with: url) { data, _, _ in
            completion(data)
        }.resume()
    }
}
