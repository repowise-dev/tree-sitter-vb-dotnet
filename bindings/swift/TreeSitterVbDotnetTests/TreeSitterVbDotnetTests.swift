import XCTest
import SwiftTreeSitter
import TreeSitterVbDotnet

final class TreeSitterVbDotnetTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_vb_dotnet())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading TreeSitterVbDotnet grammar")
    }
}
