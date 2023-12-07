//
//  ContentView.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//

import SwiftUI

struct ContentView: View {
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
            
//            ScrollView(.vertical) {
//                    VStack(alignment: .leading) {
//                        ForEach(pokemonData) { pokemon in
//                                            HStack{
//                                                Image(pokemon.imageName)
//                                                    .resizable()
//                                                    .frame(width: 60, height: 60)
//                                                    .aspectRatio(contentMode: .fill)
//                                                VStack(alignment: .leading){
//                                                    Text(pokemon.name)
//                                                        .font(.title)
//                                                    Text("Types: \(pokemon.types.first ?? "")")
//                                                        .font(.subheadline)
//                                                        .bold()
//                                                }
//                                                Spacer()
//                                            }
//                                .background(.blue, in: RoundedRectangle(cornerRadius: 20))
//                                .padding(5)
//                            
//                        }
//                    }
//    
//            }.scrollIndicators(.never)

    
    struct PokemonDetailView: View {
        var pokemon: Pokemon

        var body: some View {
            Text("\(pokemon.name)")
                .font(.title)
                .bold()
            HStack (alignment: .center){
                Image(pokemon.imageName)
                    .resizable()
                    .frame(width: 200, height: 200)
                    .scaledToFit()
                    .scaleEffect(anchor: .top)
                VStack(alignment: .center){
                    
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
          
            
            Image(pokemon.imageName)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .scaledToFit()
                    .opacity(0.09)
            .overlay(
            HStack(alignment: .center) {
      
            Text("\(pokemon.description)")
                    .bold()
                
            }
            )
          
            
                
                Image("Pokeball")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .scaledToFit()
                    .scaleEffect(anchor: .center)
                
          
            
            
//            ZStack {
//                       
//                        Circle()
//                            .fill(Color.white)
//                        
//                        Circle()
//                            .fill(Color.red)
//                            .frame(width: 150, height: 75)
//                            .offset(y: -37.5)
//                        
//                        Circle()
//                            .fill(Color.white)
//                            .frame(width: 150, height: 75)
//                            .offset(y: 37.5)
//                        
//                        Circle()
//                            .fill(Color.white)
//                            .overlay(
//                                Circle()
//                                    .stroke(Color.black, lineWidth: 5)
//                            )
//                            .frame(width: 50, height: 50)
//                    }
//                    .frame(width: 150, height: 150)
                   
            Spacer()
        }
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
    ContentView()
}




//Image("1")
//    .resizable()
//    .scaledToFit()
//    .frame(width: 200, height: 200)// Ajusta la posición vertical del reflejo
//Image("1")
//    .resizable()
//    .scaledToFit()
//    .frame(width: 200, height: 200)
//    .opacity(0.09) // Ajusta la opacidad del reflejo
//    .rotationEffect(.degrees(180)) // Voltea la imagen verticalmente
//    .scaleEffect(x: -1, y: 1) // Ajusta la posición vertical del reflejo
//
//Text("Bulbasour")
//    .foregroundColor(.white) // Cambiar el color del texto a azul
//    .font(.system(size: 30))
//    .bold()
//    .cornerRadius(5)
