//
//  PersonalView.swift
//  nanochallenge
//
//  Created by Adis Di Virgilio on 16/11/23.
//

import SwiftUI

struct PersonalView: View {
    @State private var selected = 1
    private var image1 = ["black insect", "black lipstick stain", "women's faces"
    ]
    private var image2 = ["three headed black cat", "prada logo", "silver spiky ball"
    ]
    private var image3 = ["silver chess piece", "je t'aime x3", "black teeth mark"
    ]
    var body: some View {
        VStack {
            HStack {
                Picker("picker", selection: $selected) {
                    Text("Created").tag(0)
                    Text("Saved").tag(1)
                } .pickerStyle(.segmented)
                    .padding(.leading)
                  //  .frame(width: 200)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image (systemName:"line.3.horizontal.decrease.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        //.foregroundColor(Color("Accent"))
                        .frame(height: 25)
                        
                })
                .padding(.leading)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image (systemName:"plus")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 25)
                    //fix accent color for buttons
                        
                })
                .padding(.horizontal)
            } .padding()
            
            ScrollView {
                VStack (alignment: .leading){
                    ZStack {
                        Rectangle ()
                            .frame(height: 250)
                            .opacity(0.96)
                            .cornerRadius(10)
                            .padding(.horizontal, 3)
                        HStack {
                            Spacer (minLength: 12)
                            ForEach(image1, id: \.self) {
                                image in
                                Image (image)
                                    .resizable()
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                
                                
                                
                            }
                            Spacer(minLength: 12)
                        }
                    }
                    Text ("Black Aesthetic")
                        .bold()
                        .padding(.leading, 11)
                        .font(.title2)
                } .padding()
                
                VStack (alignment: .leading){
                    ZStack {
                        Rectangle ()
                            .frame(height: 250)
                            .opacity(0.96)
                            .cornerRadius(10)
                            .padding(.horizontal, 3)
                        HStack {
                            Spacer (minLength: 12)
                            ForEach(image2, id: \.self) {
                                image in
                                Image (image)
                                    .resizable()
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                
                                
                                
                            }
                            Spacer(minLength: 12)
                        }
                    }
                    Text ("Collection 2")
                        .bold()
                        .padding(.leading, 11)
                        .font(.title2)
                } .padding()
                
                VStack (alignment: .leading){
                    ZStack {
                        Rectangle ()
                            .frame(height: 250)
                            .opacity(0.96)
                            .cornerRadius(10)
                            .padding(.horizontal, 3)
                        HStack {
                            Spacer (minLength: 12)
                            ForEach(image3, id: \.self) {
                                image in
                                Image (image)
                                    .resizable()
                                    .cornerRadius(10)
                                    .aspectRatio(contentMode: .fill)
                                    .frame(height: 150)
                                
                                
                                
                            }
                            Spacer(minLength: 12)
                        }
                    }
                    Text ("Silver Inspo")
                        .bold()
                        .padding(.leading, 11)
                        .font(.title2)
                        
                } .padding()
                
            } .padding(.horizontal)
        }
    }
}

#Preview {
    PersonalView()
}
