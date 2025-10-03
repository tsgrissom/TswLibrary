// tsgrissom/TswLibrary
// ModelContainer.swift
//

import SwiftData

public extension ModelContainer {
//	convenience init(for schema: Schema, cfg configurations: [ModelConfiguration]) {
//		try! self.init(for: schema, configurations: configurations)
//	}
//	convenience init (_ schema: Schema, cfg configurations: [ModelConfiguration]) {
//		try! self.init(for: schema, configurations: configurations)
//	}
//	convenience init(_ schema: Schema, cfg configurations: ModelConfiguration...) {
//		try! self.init(for: schema, configurations: configurations)
//	}
	convenience init(_ schema: Schema, _ config: ModelConfiguration) throws {
		try self.init(for: schema, configurations: [config])
	}
}
//
//public convenience init(for forTypes: any PersistentModel.Type..., migrationPlan: (any SchemaMigrationPlan.Type)? = nil, configurations: ModelConfiguration...) throws
//
//public convenience init(for givenSchema: Schema, migrationPlan: (any SchemaMigrationPlan.Type)? = nil, configurations: ModelConfiguration...) throws
//
//public init(for givenSchema: Schema, migrationPlan: (any SchemaMigrationPlan.Type)? = nil, configurations: [ModelConfiguration]) throws
