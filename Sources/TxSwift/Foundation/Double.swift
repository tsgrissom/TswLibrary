/*
 * tsgrissom/TswLibrary
 * Swift Foundation => Double.swift
 */

/// Extensions on Swift Foundation's Double type.
public extension Double {

	// TODO Write tests

    func roundToDecimalPlaces() -> Double {
        (self * 100).rounded() / 100
    }

	func normalizeWithin(_ range: ClosedRange<Double>) -> Double {
		
	}
}
