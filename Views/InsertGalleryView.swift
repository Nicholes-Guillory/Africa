//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import SwiftUI

struct InsertGalleryView: View {
    // MARK: - PROPERTIES
    
    let animal: AnimalsModel
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }
            } //: HSTACK
        } //: SCROLL
    }
}

// MARK: PREVIEWS
struct InsertGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
