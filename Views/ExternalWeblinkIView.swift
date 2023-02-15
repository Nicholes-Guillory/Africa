//
//  ExternalWeblinkIView.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import SwiftUI

struct ExternalWeblinkIView: View {
    // MARK: - PROPERTIES
    
    let animal: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Image(systemName: "arrow.up.right.square")
                    
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https://wikipedia.org"))!)
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

// MARK: PREVIEWS

struct ExternalWeblinkIView_Previews: PreviewProvider {
    static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        ExternalWeblinkIView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
