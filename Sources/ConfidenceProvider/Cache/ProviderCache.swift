import Foundation
import OpenFeature

public protocol ProviderCache {
    func getValue(flag: String, contextHash: String) throws -> CacheGetValueResult?
}

public struct CacheGetValueResult {
    var resolvedValue: ResolvedValue
    var needsUpdate: Bool
    var resolveToken: String
}
