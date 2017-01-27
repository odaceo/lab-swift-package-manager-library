/*
 * Copyright (C) 2017 Odaceo. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

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