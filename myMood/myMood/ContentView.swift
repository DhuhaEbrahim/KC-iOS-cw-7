//
//  ContentView.swift
//  myMood
//
//  Created by dhuha kaweyani on 17/08/2022.
//

import SwiftUI

struct ContentView: View {
    var emojis = ["😀", "😕", "😡", "😱", "😈", "🤧","🫠", "😴"]
    @State var yourMood = ""
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            VStack{
                Text("اختار الايموجي اللي يعبر عنك اليوم !").font(.system(size:34, design: .serif)).multilineTextAlignment(.center).padding(60).foregroundColor(.red)
                
                Text("\(yourMood)").padding().font(.system(size: 200)).frame(width: 300.0, height: 300.0)
                
                ScrollView(.horizontal){
                    HStack(){
                        ForEach(emojis, id: \.self){
                            emoji in
                            
                            Text("\(emoji)").font(.system(size: 60)).padding().background(.red.opacity(0.5)).clipShape(Circle())
                                .onTapGesture {
                                    yourMood = emoji
                                    
                                }
                            
                            
                            
                            
                        }
                    }
                    
                }
            }
            
            
            
            
        
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
