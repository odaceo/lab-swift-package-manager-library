import XCTest
@testable import Uuid

class UuidTests : XCTestCase {
    
    func testGenerate() {
        let uuid = Uuid.generate()
        XCTAssertFalse(uuid.isEmpty);
    }

    func testGeneratePerformance() {
        measure() {
            let _ = Uuid.generate()
        }
    }

    static var allTests : [(String, (UuidTests) -> () throws -> Void)] {
        return [
            ("testGenerate", testGenerate),
            ("testGeneratePerformance", testGeneratePerformance)
        ]
    }
}

