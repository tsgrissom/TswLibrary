/*
 * tsgrissom/TswLibrary
 */

import SwiftUI

public extension CGColor {
    
    static func rgb(_ r: Int, _ g: Int, _ b: Int, alpha: Double = 1.0) -> CGColor {
        return CGColor(red: CGFloat(r), green: CGFloat(g), blue: CGFloat(b), alpha: alpha)
    }
}
