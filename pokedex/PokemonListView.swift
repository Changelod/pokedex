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
            pokedexLogo()
            NavigationView {
                List(pokemonData) { pokemon in
                    NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                        PokemonListItemView(pokemon: pokemon)
                        
                    }
                }
            }
        }.background(.red)
    }
}

#Preview {
    PokemonListView()
}
