//
//  PokemonGridItemView.swift
//  pokedex
//
//  Created by Luis Chavez on 7/12/23.
//

import SwiftUI

struct PokemonGridItemView: View {
    var pokemon: Pokemon

    var body: some View {
        VStack{
            Image(pokemon.imageName)
                .resizable()
                .frame(width: 120, height: 120)
                .aspectRatio(contentMode: .fill)
            Text(pokemon.name)
            
        }.frame(maxWidth: .infinity)
          .border(Color.black, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    PokemonGridItemView(pokemon: Pokemon(name: "Bulbasaur",
                                         number: 1, imageName: "1",
                                         types: ["Planta", "Veneno"],
                                         description: "Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon." ))
    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
    
}
