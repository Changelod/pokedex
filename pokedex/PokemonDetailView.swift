//
//  PokemonDetailView.swift
//  pokedex
//
//  Created by Luis Chavez on 7/12/23.
//
import SwiftUI

struct PokemonDetailView: View {
    var pokemon: Pokemon
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("\(pokemon.name)")
                .padding()
                .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: 2)
                .font(.title)
                .bold()
                .frame(maxWidth: .infinity, alignment: .center)

            HStack (alignment: .center){
                Image(pokemon.imageName)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                HStack(alignment: .top) {
                    Text("Tipos:")
                        .font(.subheadline)
                        .bold()
                    VStack(alignment: .leading) {
                        ForEach(pokemon.types, id: \.self) { type in
                            Text("🔵 \(type)")
                        }
                    }
                }
            }
    
            Image(pokemon.imageName)
                .resizable()
                .frame(width: 300, height: 300)
                .scaledToFit()
                .opacity(0.09)
                .overlay(
                    Text("\(pokemon.description)")
                        .bold()
                )
                .frame(maxWidth: .infinity, alignment: .center)
            
            Image("Pokeball")
                .resizable()
                .frame(width: 100, height: 100)
                .scaledToFit()
                .scaleEffect(anchor: .center)
                .frame(maxWidth: .infinity, alignment: .center)
            
            ZStack {
                
//                Circle()
//                    .fill(AngularGradient(gradient: Gradient(colors: [.red, .white]),
//                                              center: .center,
//                                              startAngle: .degrees(0),
//                                              endAngle: .degrees(0)))
//                    .stroke(.black, lineWidth: 6)
//                    .frame(width: 100, height: 100)
//                Rectangle()
//                    .fill(Color.black)
//                    .frame(width: 100, height: 6)
//                Circle()
//                    .fill(Color.white)
//                    .stroke(Color.black, lineWidth: 5)
//                    .frame(width: 40, height: 35)
//                Circle()
//                    .fill(Color.black)
//                    .frame(width: 18, height: 15)
//                Path { path in
//                    path.move(to:  CGPoint(x: 50, y: 0))
//                    path.addCurve(
//                        to: CGPoint(x: 75, y: 100),
//                        control1: CGPoint(x: 100, y: 0),
//                        control2: CGPoint(x: 100, y: 100))
//                    path.addLine(to: CGPoint(x: 50, y: 0))
//                    path.closeSubpath()
//                            
//                        }
//                        .fill(Color.black)
//                        .opacity(0.4)
//                        .frame(width: 100, height: 100)
                          
                
            }
            
            Spacer()
        }
        
    }
}

#Preview {
    PokemonDetailView(pokemon: Pokemon(name: "Bulbasaur",
                                       number: 1, imageName: "1",
                                       types: ["Planta", "Veneno"],
                                       description: "Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon." ))
}
