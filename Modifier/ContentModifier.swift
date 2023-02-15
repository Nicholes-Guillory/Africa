//
//  ContentModifier.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/14/23.
//

import SwiftUI

struct CenterModifer: ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
}
