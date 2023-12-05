//
//  PokemonData.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//
import Foundation

struct Pokemon: Identifiable {
    var id: UUID = UUID()

    let name: String
    let number: Int
    let imageName: String
    let types: [String]
}

let pokemonData: [Pokemon] = [
    Pokemon(name: "Bulbasaur", number: 1, imageName: "1", types: ["Planta", "Veneno", "Veneno2", "Veneno3", "Veneno4"]),
    Pokemon(name: "Ivysaur", number: 2, imageName: "2", types: ["Planta", "Veneno"]),
    Pokemon(name: "Venusaur", number: 3, imageName: "3", types: ["Planta", "Veneno"]),
    Pokemon(name: "Charmander", number: 4, imageName: "4", types: ["Fuego"]),
    Pokemon(name: "Charmeleon", number: 5, imageName: "5", types: ["Fuego"]),
    Pokemon(name: "Charizard", number: 6, imageName: "6", types: ["Fuego", "Volador"]),
    Pokemon(name: "Squirtle", number: 7, imageName: "7", types: ["Agua"]),
    Pokemon(name: "Wartortle", number: 8, imageName: "8", types: ["Agua"]),
    Pokemon(name: "Blastoise", number: 9, imageName: "9", types: ["Agua"]),
    Pokemon(name: "Caterpie", number: 10, imageName: "10", types: ["Bicho"]),
    Pokemon(name: "Metapod", number: 11, imageName: "11", types: ["Bicho"]),
    Pokemon(name: "Butterfree", number: 12, imageName: "12", types: ["Bicho", "Volador"]),
    Pokemon(name: "Weedle", number: 13, imageName: "13", types: ["Bicho", "Veneno"]),
    Pokemon(name: "Kakuna", number: 14, imageName: "14", types: ["Bicho", "Veneno"]),
    Pokemon(name: "Beedrill", number: 15, imageName: "15", types: ["Bicho", "Veneno"]),
    Pokemon(name: "Pidgey", number: 16, imageName: "16", types: ["Normal", "Volador"]),
    Pokemon(name: "Pidgeotto", number: 17, imageName: "17", types: ["Normal", "Volador"]),
    Pokemon(name: "Pidgeot", number: 18, imageName: "18", types: ["Normal", "Volador"]),
    Pokemon(name: "Rattata", number: 19, imageName: "19", types: ["Normal"]),
    Pokemon(name: "Raticate", number: 20, imageName: "20", types: ["Normal"])
]
