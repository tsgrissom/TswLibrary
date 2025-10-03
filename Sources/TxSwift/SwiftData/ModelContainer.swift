// tsgrissom/TswLibrary
// ModelContainer.swift
//

import SwiftData

public extension ModelContainer {
	convenience init(for schema: Schema, cfg configurations: [ModelConfiguration]) {
		try! self.init(for: schema, configurations: configurations)
	}
	convenience init (_ schema: Schema, cfg configurations: [ModelConfiguration]) {
		try! self.init(for: schema, configurations: configurations)
	}
	convenience init(_ schema: Schema, cfg configurations: ModelConfiguration...) {
		try! self.init(for: schema, configurations: configurations)
	}
}
