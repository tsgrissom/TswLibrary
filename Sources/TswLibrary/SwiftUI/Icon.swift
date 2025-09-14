/*
 * tsgrissom/TswLibrary
 * SwiftUI => Views => Icon
 */

import SwiftUI

/// Shortcut view for making an `Image` from an SF icon; AKA `Image(systemName: "icon.name")`
///
/// ```swift
/// // Comparing verbosity of these equal views
/// // w/ Image
/// Image(systemName: "heart.fill")
/// // w/ Icon
/// Icon("heart.fill")
/// ```
struct Icon: View {
    
    private let systemName: String
    
    /// Construct an `Icon` view, creating an equivalent `Image` view based on
    /// an SF Symbols icon.
    /// - Parameters:
    ///   - name: The `systemName` to give the `Image` view, i.e. an icon from SF Symbols
    init (_ systemName: String) {
        self.systemName = systemName
    }
    
    var body: some View {
        return Image(icon: systemName)
    }
}

#Preview {
    Icon("checkmark")
}
