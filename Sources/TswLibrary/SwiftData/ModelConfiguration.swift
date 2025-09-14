import SwiftData

public extension ModelConfiguration {
    
    init(inMemoryOnly: Bool) {
        self.init(isStoredInMemoryOnly: inMemoryOnly)
    }
    
}
