//
//  CKRecord+Ext.swift
//  DubGrabClabSwiftUi
//
//  Created by 近藤宏輝 on 2022/02/18.
//

import CloudKit

extension CKRecord {
    func convertToDDGLocation() -> DDGLocation {
        return DDGLocation(record: self)
    }
    
    func convertToDDGProfile() -> DDGProfile {
        return DDGProfile(record: self)
    }
}
