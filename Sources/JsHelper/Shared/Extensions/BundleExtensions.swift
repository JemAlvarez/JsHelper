//

import Foundation

public extension Bundle {
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

    // App Info
    var appBuild: String { getInfo("CFBundleVersion") }
    var appVersionLong: String { getInfo("CFBundleShortVersionString") }
    var appVersionShort: String { getInfo("CFBundleShortVersion") }

    fileprivate func getInfo(_ str: String) -> String { infoDictionary?[str] as? String ?? "-" }
}
