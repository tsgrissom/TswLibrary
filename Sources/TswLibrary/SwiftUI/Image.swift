/*
 * tsgrissom/TswLibrary
 * SwiftUI => Image
 */

import SwiftUI

/// Extensions on SwiftUI's Image view.
public extension Image {
    
    /// Shorthand for initializing an `Image` view via `init(systemName: String)`
    ///
    /// ```swift
    /// // Verbosity comparison
    /// VStack {
    ///     // All equivalent
    ///     // 1. Original `init(systemName: String)`
    ///     // 2. Shorthand `init(icon: String)`
    ///     // 3. Shorthand view `Icon`
    ///
    ///     // 1.
    ///     Image(systemName: "heart.fill")
    ///     // 2.
    ///     Image(icon: "heart.fill")
    ///     // 3.
    ///     Icon("heart.fill")
    /// }
    /// ```
    init(icon: String) {
        self.init(systemName: icon)
    }
}
