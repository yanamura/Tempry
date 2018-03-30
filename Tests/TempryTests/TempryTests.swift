import XCTest
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
        XCTAssertTrue(isDir.boolValue)
    }


    static var allTests = [
        ("testDirectory", testDirectory),
    ]
}
