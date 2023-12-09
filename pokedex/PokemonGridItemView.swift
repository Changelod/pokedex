//
//  PokemonGridView.swift
//  pokedex
//
//  Created by Angelo Chavez on 8/12/23.
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
                .bold()
                .foregroundColor(Color.black)
            
        }.frame(maxWidth: .infinity)
            .background(Color.blue)
            .cornerRadius(11)
        
    }
}

#Preview {
    PokemonGridItemView(pokemon: Pokemon(name: "Bulbasaur",
                                         number: 1, imageName: "1",
                                         types: ["Planta", "Veneno"],
                                         description: "Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon." ))
    .frame(width: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/200.0/*@END_MENU_TOKEN@*/)
    
}

