/*
 * tsgrissom/TswLibrary
 */

import Foundation

/// Extensions on Swift Foundation's `String` type, including new functions and computed properties useful for string manipulation, parsing, etc.
public extension String {
    
    // MARK: Computed Properties
    // TODO TEST Write unit tests
    
    /// A Boolean value indicating whether a string has characters; The inverse of `String#isEmpty`
    var isNotEmpty: Bool { !isEmpty }
    
    /// A String value computed from the original string by removing from both ends of the String characters included in the `.whitespacesAndNewlines` character set.
    var trimmed: String { trimmingCharacters(in: .whitespacesAndNewlines) }
    
    /// A Boolean value indicating whether a string which has been trimmed of whitespace and newlines has no characters.
    var isEmptyAfterTrim: Bool { trimmed.isEmpty }
    
    /// A Boolean value indicating whether a string which has been trimmed of whitespace and newlines has characters; The inverse of `String#isTrimmedEmpty`
    var isNotEmptyAfterTrim: Bool { trimmed.isNotEmpty }
    
    
    // MARK: Functions
    // TODO TEST Write unit tests
    
    /// Returns a new string made by removing from both ends of the String characters contained in a given character set, which defaults to `.whitespacesAndNewlines` when none is provided.
    /// - Parameters:
    ///   - characters: The `CharacterSet` to "trim" e.g. remove from both ends of the String.
    /// - Returns: A modified version of the original String, with both its ends trimmed of the given characters, defaulting to whitespace and newlines.
    func trim(
        of characters: CharacterSet = .whitespacesAndNewlines
    ) -> String {
        return self.trimmingCharacters(in: characters)
    }
    
    /// Returns a Boolean value indicating whether the String has no characters after removing from both its ends the characters contained in a given character set, which defaults to `.whitespacesAndNewlines`.
    ///
    /// - Parameters:
    ///   - characters: The `CharacterSet` to "trim" e.g. remove from both ends of the String before the emptiness check.
    /// - Returns: A Boolean value indicating whether the String had no characters after its ends were trimmed of the characters contained in the given character set.
    func isEmptyWhenTrimmed(
        of characters: CharacterSet = .whitespacesAndNewlines
    ) -> Bool {
        return self.trim(of: characters).isEmpty
    }
    
    /// Returns a Boolean value indicating whether the String has some characters after trimming from both its ends the characters contained in a given character set, which defaults to
    /// `.whitespacesAndNewlines`.
    ///
    /// - Parameters:
    ///   - characters: The `CharacterSet` to "trim" e.g. remove from both ends of the String before the emptiness check.
    /// - Returns: A Boolean value indicating whether the String had some characters after its ends were trimmed of the characters contained in the given character set, which defaults to
    /// `.whitespacesAndNewlines`.
    func isNotEmptyWhenTrimmed(
        of characters: CharacterSet = .whitespacesAndNewlines
    ) -> Bool {
        return !self.isEmptyWhenTrimmed(of: characters)
    }
    
    /// Returns a Boolean value indicating whether the String is empty or consists only of whitespace characters. By default, the function considers newlines to be whitespace characters.
    /// To check, both ends of the string are trimmed of the of the String characters contained in the `.whitespacesAndNewlines` character set, or the `.whitespaces` set if newlines
    /// are to be excluded.
    ///
    /// - Parameters:
    ///   - newlinesAreWhitespace: An optional Boolean value, default value `true`, which indicates whether newlines are considered whitespace when trimming the String for an emptiness check.
    /// - Returns: A Boolean value indicating whether the String is empty or empty when trimmed of whitespace, considering newlines as whitespace unless overrode.
    func isEmptyOrWhitespace(
        newlinesAreWhitespace: Bool = true
    ) -> Bool {
        let chars: CharacterSet = newlinesAreWhitespace ? .whitespacesAndNewlines : .whitespaces
        return self.isEmpty || self.isEmptyWhenTrimmed(of: chars)
    }
    
    /// Returns a String value which is either the original string because it was not empty, or the substitution because the original string
    /// was empty. Emptiness is determined after trimming the string of whitespace and newline characters, which can be disabled optionally.
    ///
    /// - Parameters:
    ///   - replacement: The substitution to use if the receiver String is found to be empty.
    ///   - trimWhitespace: Whether to trim whitespace and newlines characters before the emptiness check. Default is `true`.
    /// - Returns: A String value which is either the original string or the replacement.
    func replaceIfEmpty(with replacement: String, trimWhitespace: Bool = true) -> String {
        let str: String = trimWhitespace ? self.trim(of: .whitespacesAndNewlines) : self
        return str.isNotEmpty ? str : replacement
    }
}
