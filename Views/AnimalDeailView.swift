//
//  AnimalDeailView.swift
//  Africa
//
//  Created by Nicholes Guillory on 2/3/23.
//

import SwiftUI

struct AnimalDeailView: View {
    // MARK: - PROPERTIES
    
    let animal: AnimalsModel
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                
                //HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFill()
                
                //TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                //HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                //GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsertGalleryView(animal: animal)
                }
                .padding(.horizontal)
               
            
                //FACTS
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "Did you know?")
                    
                    InsetFactView(animal: animal)
                }
                .padding(.horizontal)
                
                //DESCRIPTION
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "All about \(animal.name)")
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                    
                }
                .padding(.horizontal)
                
                //MAP
                Group {
                    HeadingView(headingImage: "map", headingText: "National Parks")
                    
                    InsetMapView(animal: animal)
                }
                .padding(.horizontal)
                
                //LINK
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Learn More")
                    
                    ExternalWeblinkIView(animal: animal)
                }
                .padding(.horizontal)

            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)",
        displayMode: .inline)
        } //: ScrollView
    }
}

// MARK: PREVIEWS

struct AnimalDeailView_Previews: PreviewProvider {
    static let animals: [AnimalsModel] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationView {
            AnimalDeailView(animal: animals[0])
        } //: NAVIGATIONVIEW
            .previewLayout(.sizeThatFits)
            .padding()
    }
} //PREVIEW
