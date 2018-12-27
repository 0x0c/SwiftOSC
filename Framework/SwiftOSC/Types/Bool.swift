//
//  OSCTypes.swift
//  SwiftOSC
//
//  Created by Devin Roth on 6/26/16.
//  Copyright © 2016 Devin Roth Music. All rights reserved.
//

import Foundation

extension Bool: OSCType {
    public var oscTag: String {
        get {
            if self == true {
                return "T"
            } else {
                return "F"
            }
        }
    }
    public var oscData: Data {
        get {
            return Data()
        }
    }
}
