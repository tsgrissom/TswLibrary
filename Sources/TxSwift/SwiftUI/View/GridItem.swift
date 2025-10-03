// tsgrissom/TswLibrary
// GridItem.swift
//

import SwiftUI

public extension GridItem {
	static let flex = GridItem(.flexible())
	static func flex(ct: Int) -> [GridItem] {
		(0..<ct).map { _ in .flex }
	}
}
