/*
 * tsgrissom/TswLibrary
 * Swift Foundation => Double.swift
 */

public extension Int {

    /// Uses the integer to create a formatted count string, which counts some number of things,
    /// pluralizing the noun if necessary. The int represents `n` number of things.
    /// - Parameters:
    ///   - singularForm: A string which names the thing in its singular form, e.g. "dog".
    ///   - pluralForm: A string which names the thing in its plural form, e.g. "dogs".
    /// - Returns: A formatted string counting some number of things, respecting singular and plural form.
    func formatAsPluralizedCountString(
        noun singularForm: String,
        plural pluralForm: String
    ) -> String {
        var s = "\(self) "
        let form = if self == 1 {
            singularForm
        } else {
            pluralForm
        }

        s += form
        return s
    }


}
