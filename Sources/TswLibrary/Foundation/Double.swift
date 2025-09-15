/*
 * tsgrissom/TswLibrary
 * Swift Foundation => Double.swift
 */

/// Extensions on Swift Foundation's Double type.
public extension Double {

    func roundToDecimalPlaces() -> Double {
        // let n: Double = 123.456789
        // let rn = (n * 100).rounded() / 100
        // rn == 123.46
        //
        // Math:
        // y=(round(x*100)/100)
        // 1. n=x*100 -> shifts decimal two places right
        // 2. n=round(n) -> rounds to nearest whole number
        // 3. y=n/100 -> shifts decimal two places to left
        // Example fn(123.456789) => 123.46
        // -> x=123.456789
        // 1. 123.456789 * 100 = 12345.6789
        // 2. round(12345.6789) = 12346
        // 3. 12346 / 100 = 123.46
        // => y=123.46, ok!

        
        (self * 100).rounded() / 100
    }
}