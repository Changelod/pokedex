//
//  PokemonData.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//
import Foundation

// name
// number
// imageName
// types
// description

struct Pokemon: Identifiable {
    var id: UUID = UUID()

    let name: String
    let number: Int
    let imageName: String
    let types: [String]
    let description: String
}

let pokemonData: [Pokemon] = [
    Pokemon(name: "Bulbasaur", number: 1, imageName: "1", types: ["Planta", "Veneno"], description: "Una rara semilla fue plantada en su espalda al nacer. La planta brota y crece con este Pokémon." ),
    Pokemon(name: "Ivysaur", number: 2, imageName: "2", types: ["Planta", "Veneno"] , description: "Cuando el bulbo de su espalda crece, parece no poder ponerse de pie sobre sus patas traseras."),
    Pokemon(name: "Venusaur", number: 3, imageName: "3", types: ["Planta", "Veneno"], description:"La planta florece cuando absorbe energía solar. Ésta le obliga a ponerse en busca de la luz solar."),
    Pokemon(name: "Charmander", number: 4, imageName: "4", types: ["Fuego"], description:" Prefiere los sitios calientes. Dicen que cuando llueve sale vapor de la punta de su cola. "),
    Pokemon(name: "Charmeleon", number: 5, imageName: "5", types: ["Fuego"], description: "Cuando balancea su ardiente cola, eleva la temperatura a niveles muy altos. "),
    Pokemon(name: "Charizard", number: 6, imageName: "6", types: ["Fuego", "Volador"] , description:"Escupe fuego tan caliente que funde las rocas. Causa incendios forestales sin querer."),
    Pokemon(name: "Squirtle", number: 7, imageName: "7", types: ["Agua"], description:"Tras nacer, su espalda se hincha y endurece como una concha. Echa potente espuma por la boca."),
    Pokemon(name: "Wartortle", number: 8, imageName: "8", types: ["Agua"], description:"Se oculta en el agua para cazar a sus presas. Al nadar rápidamente, mueve sus orejas para nivelarse."),
    Pokemon(name: "Blastoise", number: 9, imageName: "9", types: ["Agua"], description:"Un brutal Pokémon con reactores de agua en su caparazón. Éstos son usados para rápidos placajes."),
    Pokemon(name: "Caterpie", number: 10, imageName: "10", types: ["Bicho"], description:"Sus cortas patas están recubiertas de ventosas que le permiten subir incansable por muros y cuestas. "),
    Pokemon(name: "Metapod", number: 11, imageName: "11", types: ["Bicho"], description:"Este Pokémon es vulnerable al ataque cuando su concha es blanda, dejando expuesto su frágil cuerpo."),
    Pokemon(name: "Butterfree", number: 12, imageName: "12", types: ["Bicho", "Volador"], description:"En combate, aletea a gran velocidad para lanzar al aire sus tóxicos polvillos."),
    Pokemon(name: "Weedle", number: 13, imageName: "13", types: ["Bicho", "Veneno"], description:"Fácil de ver por los bosques comiendo hojas. Tiene un aguijón venenoso en la cabeza. "),
    Pokemon(name: "Kakuna", number: 14, imageName: "14", types: ["Bicho", "Veneno"], description:"Casi incapaz de moverse, este Pokémon sólo puede endurecer su caparazón para protegerse. "),
    Pokemon(name: "Beedrill", number: 15, imageName: "15", types: ["Bicho", "Veneno"], description:"Vuela muy deprisa y ataca con los venenosos y grandes aguijones de su cola y patas delanteras. "),
    Pokemon(name: "Pidgey", number: 16, imageName: "16", types: ["Normal", "Volador"], description:"Muy común en bosques y selvas. Aletea al nivel del suelo para levantar la gravilla."),
    Pokemon(name: "Pidgeotto", number: 17, imageName: "17", types: ["Normal", "Volador"], description:"Muy protector de su amplio territorio, este Pokémon picoteará ferozmente a todo intruso. "),
    Pokemon(name: "Pidgeot", number: 18, imageName: "18", types: ["Normal", "Volador"], description:"Cuando caza, vuela muy deprisa a ras del agua, y sorprende a inocentes presas como Magikarp."),
    Pokemon(name: "Rattata", number: 19, imageName: "19", types: ["Normal"], description:"Cuando ataca lo muerde todo. Pequeño y muy rápido, es muy fácil de ver en muchos sitios."),
    Pokemon(name: "Raticate", number: 20, imageName: "20", types: ["Normal"], description:"Utiliza sus bigotes para equilibrarse. Parece que si son cortados va más despacio.")
]
