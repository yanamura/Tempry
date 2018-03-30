import XCTest
import Foundation
@testable import Tempry

class TempryTests: XCTestCase {
    func testDirectory() {
        let directory: String
        do {
            directory = try Tempry.directory()
        } catch _ {
            directory = ""
            XCTFail()
        }

        var isDir: ObjCBool = false
        let fm = FileManager.default
        let isExist = fm.fileExists(atPath: directory, isDirectory: &isDir)
        XCTAssertTrue(isExist)
        #if !os(Linux) || swift(>=4.1)
            XCTAssertTrue(isDir.boolValue)
        #else
            XCTAssertTrue(isDir)
        #endif

        // clean
        do {
            try fm.removeItem(atPath: directory)
        } catch {
            XCTFail()
        }
    }

    func testDispose() {
        let fm = FileManager.default
        let directory: String
        do {
            directory = try Tempry.directory()
        } catch _ {
            directory = ""
            XCTFail()
        }

        do {
            try Tempry.dispose(path: directory)
        } catch {
            try! fm.removeItem(atPath: directory)
            XCTFail()
        }

        XCTAssertFalse(fm.fileExists(atPath: directory))
    }

    static var allTests = [
        ("testDirectory", testDirectory),
    ]
}
