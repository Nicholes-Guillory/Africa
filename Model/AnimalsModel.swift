//
//  AnimalsModel.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import Foundation
import SwiftUI

struct AnimalsModel: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    let description: String
    let link: String
    let image: String
    let gallery: [String]
    let fact: [String]
}
