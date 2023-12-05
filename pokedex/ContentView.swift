//
//  ContentView.swift
//  pokedex
//
//  Created by Angelo Chavez on 3/12/23.
//

import SwiftUI

struct ContentView: View {

    
    var body: some View {
       
            ZStack{
                
                Color.red.edgesIgnoringSafeArea(.all)
                
                HStack {
                    
                    VStack {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 50, height: 50)
                            .overlay(Circle().stroke(Color.black, lineWidth: 6))
                            .padding(.top, 0)
                            .padding(.leading, -180)
                        
                        Spacer()
                    }
                    VStack {
                        Circle()
                            .fill(Color.yellow)
                            .frame(width: 30, height: 50)
                            .overlay(Circle().stroke(Color.black, lineWidth: 6))
                            .padding(.top, -10)
                            .padding(.leading, -130)
                        
                        Spacer()
                    }
                    
                    VStack {
                        Circle()
                            .fill(Color.green)
                            .frame(width: 30, height: 50)
                            .overlay(Circle().stroke(Color.black, lineWidth: 6))
                            .padding(.top, -10)
                            .padding(.leading, -100)
                        
                        Spacer()
                        
                    }
                    
                }
                
                VStack(alignment: .center) {
                    // Imagen en el centro
                    Spacer()
   
                    Image("1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                        .opacity(0.09) // Ajusta la opacidad del reflejo
                        .rotationEffect(.degrees(180)) // Voltea la imagen verticalmente
                        .scaleEffect(x: -1, y: 1)
                        .offset(x: -60, y: -300) // Ajusta la posición vertical del reflejo
                       
                }
                Text("Bulbasour")
                    .foregroundColor(.white) // Cambiar el color del texto a azul
                    .font(.system(size: 30))
                    .bold()
                    .cornerRadius(5)
                    .offset(x: -50, y: -70)
                Spacer()
                
                }
               
            }
            
        }
        
    #Preview {
        ContentView()
    }
    

