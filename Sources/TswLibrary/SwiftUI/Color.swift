/*
 * tsgrissom/TswLibrary
 */

import SwiftUI

public extension Color {
    
    // MARK: RGB
    
    /// Creates a new SwiftUI `Color` with the given RGB values, with an optional alpha value.
    init(
        r: Double, g: Double, b: Double,
        alpha: Double = 1.0
    ) {
        self.init(cgColor: CGColor(red: r, green: g, blue: b, alpha: alpha))
    }
    
    // TODO TEST
    /// Converts an RGB value from integer to floating-point representation.
    /// i.e. 0-255 -> 0.0-1.0
    static func convertRgbFromIntToFp(value: Int) -> Double {
        // Normalize
        Double(value) / 255.0
    }
    
    // TODO TEST
    /// Converts an RGB value from floating-point to integer representation.
    /// i.e. 0.0-1.0 -> 0-255
    static func convertRgbFromFpToInt(value: Double) -> Int {
        // Denormalize
        Int(round(value * 255.0))
    }
    
    static func rgb(_ r: Double, _ g: Double, _ b: Double, _ a: Double = 1.0) -> Color {
        
        return Color(r: r, g: g, b: b, alpha: a)
    }
    
    /// Creates a gray SwiftUI `Color` at a random or given intensity.
    /// - Parameters:
    ///   - intensity: The desired intensity of the grayscale color expressed as a decimal. 0.0 is black and 1.0 is white.
    ///     - If this is negative, as it is by default, a random value will be generated.
    ///     - If it is greater than 1.0, it will be normalized to 1.0.
    ///     - Otherwise, values between 0.0 and 1.0 will be used.
    ///   - randomRange: The desired range of possible random values.
    ///     - By default, this is any value between and including 0.1 to 0.9.
    /// - Returns: A SwiftUI `Color` in the desired shade of gray.
    static func gray(
        intensity: Double = -1.0,
        randomRange: ClosedRange<Double> = 0.1...0.9
    ) -> Color {
        let realIntensity = intensity < 0.0 ? Double.random(in: randomRange) : (intensity > 1.0 ? 1.0 : intensity)
        
        return Color(r: realIntensity, g: realIntensity, b: realIntensity)
    }
    
    // MARK: Hex
    
    // Hex Colors #RRGGBB
    // Three two-hex-digit components
    
    init?(hex: String) {
        var s = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if s.hasPrefix("#") { s.removeFirst() }
        guard s.count == 6,
              let r = Int(s.prefix(2), radix: 16),
              let g = Int(s.dropFirst(2).prefix(2), radix: 16),
              let b = Int(s.dropFirst(4).prefix(2), radix: 16)
        else { return nil }
        
        self.init(
            red: Double(r) / 255.0,
            green: Double(g) / 255.0,
            blue: Double(b) / 255.0,
        )
    }
        
    func toHex(includeAlpha: Bool = false) -> String? {
		#if canImport(UIKit)
		let uiColor = UIColor(self)
		var r: CGFloat = 0, g: CGFloat = 0, b: CGFloat = 0, a: CGFloat = 0
		guard uiColor.getRed(&r, green: &g, blue: &b, alpha: &a) else {
			return nil
		}
		#elseif canImport(AppKit)
		let nsColor = NSColor(self).usingColorSpace(.deviceRGB)
		guard let color = nsColor else { return nil }
		let r = color.redComponent, g = color.greenComponent, b = color.blueComponent, a = color.alphaComponent
		#endif
		
		let ri = Int(round(r * 255))
		let gi = Int(round(g * 255))
		let bi = Int(round(b * 255))
		
		if includeAlpha {
			let ai = Int(round(a * 255))
			return String(format: "#%02X%02X%02X%02X", ri, gi, bi, ai)
		} else {
			return String(format: "#%02X%02X%02X", ri, gi, bi)
		}
    }
}
