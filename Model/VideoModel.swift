//
//  VideoModel.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import Foundation
import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property
    var thumbnail: String {
        "video-\(id)"
    }
}
