//
//  Item.swift
//  refuge-ios
//
//  Created by Pawel Milek on 4/6/24.
//  Copyright © 2024 Refuge Restrooms. All rights reserved.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
