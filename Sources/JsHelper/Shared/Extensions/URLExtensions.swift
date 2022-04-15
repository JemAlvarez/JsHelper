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

    // MARK: - Request Data and Decode
    @available(iOS 15.0, *)
    func requestDataAndDecode<T: Decodable>() async -> T? {
        // url
        let url = self

        do {
            let data = try await URLSession.shared.data(from: url)
            let decodedData = try JSONDecoder().decode(T.self, from: data.0)
            return decodedData
        } catch {
            error.printError(for: "Fetching/Decoding data from \(url.description)")
        }

        return nil
    }

    func requestDataAndDecode<T: Decodable>(completion: @escaping (T) -> Void) {
        // url
        let url = self

        URLSession.shared.dataTask(with: url) { data, _, _ in
            guard let data = data else { return }

            do {
                let decodedData = try JSONDecoder().decode(T.self, from: data)
                completion(decodedData)
            } catch {
                error.printError(for: "Fetching/Decoding data from \(url.description)")
            }

        }.resume()
    }

    // MARK: - Request Data
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

    func requestData(completion: @escaping (Data?) -> Void) {
        // url
        let url = self

        URLSession.shared.dataTask(with: url) { data, _, _ in
            completion(data)
        }.resume()
    }
}
