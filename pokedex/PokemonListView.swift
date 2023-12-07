//
//  PokemonListView.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//

import SwiftUI

struct PokemonListView: View {
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack{
            makePokedexLogo()
            NavigationView {
                ScrollView {
                    LazyVGrid(columns: columns) {
                        ForEach(pokemonData) { pokemon in
                            NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                                
                                PokemonGridItemView(pokemon: pokemon)
                                
                                
                            }
                        }
                    }.padding()
                }
            }
        }.background(.red)
    }
    
    func makePokedexLogo() -> some View {
        return HStack {
            Circle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
                .padding(.top, 0)
            
            Circle()
                .fill(Color.yellow)
                .frame(width: 30, height: 50)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
            
            Circle()
                .fill(Color.green)
                .frame(width: 30, height: 50)
                .overlay(Circle().stroke(Color.black, lineWidth: 6))
            Text("POKEDEX")
                .font(.title)
                .foregroundStyle(.white)
                .bold()
                .padding(.leading, 10)
            Spacer()
            
            
        }.padding(.leading, 10)
        
        
    }
}

#Preview {
    PokemonListView()
}
