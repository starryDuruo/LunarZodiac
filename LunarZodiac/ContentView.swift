//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Wang Sige on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var imageNumber = 6
    @State private var year = 2026
    private let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    var body: some View {
        VStack {
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            Spacer()
            
            Image(animalNames[imageNumber])
                .resizable()
                .scaledToFit()
                
            Text(animalNames[imageNumber])
                .font(Font.custom("Chalkduster", size: 72))
                .fontWeight(.black)
                .lineLimit(1)
                .minimumScaleFactor(0.5)
            
            Spacer()
            
            HStack{
                Button {
                    year = year - 1
                    imageNumber = (imageNumber == 0 ? 11 : imageNumber - 1)
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    year = year + 1
                    imageNumber = (imageNumber == 11 ? 0 :imageNumber + 1)
                } label: {
                    Image(systemName: "chevron.right")
                }

            }
            .font(.largeTitle)
            .fontWeight(.black)
            .buttonStyle(.glassProminent)
            .tint(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
