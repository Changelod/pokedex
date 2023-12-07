//
//  PokemonListView.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//

import SwiftUI

struct PokemonListView: View {
    var body: some View {
        VStack{
            makePokedexLogo()
            NavigationView {
                List(pokemonData) { pokemon in
                    NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                        HStack{
                            Image(pokemon.imageName)
                                .resizable()
                                .frame(width: 70, height: 70)
                                .aspectRatio(contentMode: .fill)
                            VStack(alignment: .leading){
                                Text(pokemon.name)
                                    .font(.title)
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
                        }
                    }
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
