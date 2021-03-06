//
//  ContentView.swift
//  War-Card-Game
//
//  Created by Pavan Mikkilineni on 27/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard="card5"
    @State private var cpuCard="card6"
    @State private var playerScore=0
    @State private var cpuScore=0
    
    var body: some View {
        ZStack{
            Image("background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let playerRand=Int.random(in:2...14)
                    let cpuRand=Int.random(in: 2...14)
                    
                    playerCard="card"+String(playerRand)
                    cpuCard="card"+String(cpuRand)
                    
                    if playerRand>cpuRand {
                        playerScore+=1
                    }
                    else if playerRand<cpuRand {
                        cpuScore+=1
                    }
                    
                }, label: {
                    Image("dealbutton")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.bottom,10.0)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.bottom,10.0)
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
