import Foundation

public final class Tempry {
    static func directory() throws -> String {
        let directoryPath = URL(fileURLWithPath: NSTemporaryDirectory())
            .appendingPathComponent(UUID().uuidString)
            .path
        let fm = FileManager.default

        do {
            try fm.createDirectory(atPath: directoryPath, withIntermediateDirectories: false, attributes: nil)
        } catch {
            throw Error.failedToCreateDirectory
        }
        return directoryPath
    }

    static func dispose(path: String) throws {
        let fm = FileManager.default
        try fm.removeItem(atPath: path)
    }
}

public extension Tempry {
    enum Error: Swift.Error {
        case failedToCreateDirectory
    }
}
