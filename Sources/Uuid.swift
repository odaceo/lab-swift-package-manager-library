import CUuid

public final class Uuid {
    
    public static func generate() -> String  {
        
        let uuid_t = UnsafeMutablePointer<UInt8>.allocate(capacity: 16)
        defer { uuid_t.deallocate(capacity: 16) }

        let uuid_str = UnsafeMutablePointer<CChar>.allocate(capacity: 36)
        defer { uuid_str.deallocate(capacity: 36) }

        uuid_generate_time(uuid_t)
        uuid_unparse_lower(uuid_t, uuid_str)

        return String(cString: uuid_str)
    }
}