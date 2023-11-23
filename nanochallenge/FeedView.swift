//
//  FeedView.swift
//  nanochallenge
//
//  Created by Adis Di Virgilio on 15/11/23.
//

import SwiftUI

struct FeedView: View {
   // let data = (1...100).map { "Item \($0)" }
    let image2 = [ "anxiety being text", "black insect", "silver chess piece", "man posing for a picture", "4 silver masks"
    ]
    let image3 = ["white figures standing on black background", "various windows with different scenarios", "black table in front of white window with black cat", "white staircase with black cat at the bottom"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
        
    ]
    @State private var text = ""
    @State private var imageSet = ["three headed black cat","blurry face woman", "black teeth mark", "woman sitting on a man", "black lipstick stain", "je t'aime x3", "mirrorball tiles", "prada logo", "women's faces", "silver spiky ball"
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                if (text == "") {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(imageSet, id: \.self) { item in
                            VStack (alignment : .trailing) {
                                Image(item)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                .padding(5)
                                Button(action: {
                                    
                                }, label: {
                                  Image(systemName: "circle.grid.2x1.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 9)
                                        .accessibilityHidden(/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                                })
                            }
                        }
                    }
                    
                } else if (text == "Black and white") {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(image3, id: \.self) { item in
                            VStack (alignment : .trailing) {
                                Image(item)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .cornerRadius(10)
                                .padding(5)
                                Button(action: {
                                    
                                }, label: {
                                  Image(systemName: "circle.grid.2x1.fill")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 9)
                                })
                            }
                        }
                    }
                }
               
                
                
            }
            
        .padding(.horizontal)
        .navigationTitle("Feed")
        .toolbar {
            Button(action: {
                imageSet = image2
            }, label: {
                Image(systemName: "arrow.clockwise.circle.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 25)
                
            })
        }
        }
        .searchable(text: $text)
    }
}

#Preview {
    FeedView()
}
