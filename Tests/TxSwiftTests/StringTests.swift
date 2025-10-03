import Testing
@testable import TswLibrary

@Suite("Suite: String properties")
struct StringPropertyTests {
    
    @Test("isNotEmpty equals false for empty string")
    func isNotEmpty_shouldEqFalse_forEmptyString() async throws {
        #expect("".isNotEmpty == false)
    }
    
    @Test("isNotEmpty equals true for whitespace strings")
    func isNotEmpty_equalsTrue_forWhitespaceString() async throws {
        for s in [" ", "    ", "\n"] {
            #expect(s.isNotEmpty, "\"\(s)\" should be considered not empty")
        }
    }
    
    let sWithWhitespaceEnds = [" foo ", " foo", "foo "]
    let sNoWhitespaceEnds = ["foo", "bar", "baz"]
    
    @Test("trimmed removes whitespace from string ends")
    func trimmed_shouldNeqOriginal_forStringWithWhitespaceEnds() async throws {
        sWithWhitespaceEnds.forEach { #expect($0.trimmed != $0) }
    }
    
    @Test("trimmed leaves strings without whitespace unchanged")
    func trimmed_shouldEqOriginal_forStringWithNoWhitespaceEnds() async throws {
        sNoWhitespaceEnds.forEach { #expect($0.trimmed == $0) }
    }
}
