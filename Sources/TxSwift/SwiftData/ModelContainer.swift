// tsgrissom/TswLibrary
// ModelContainer.swift
//

import SwiftData

public extension ModelContainer {
	convenience init(
		for schema: Schema,
		cfs configurations: [ModelConfiguration]
	) {
		try! self.init(for: schema, configurations: configurations)
	}
//	convenience init (
//		_ schema: Schema,
//		cf configurations: [ModelConfiguration]
//	) {
//		try! self.init(for: schema, configurations: configurations)
//	}
}
