//
//  ContentView.swift
//  Emoji
//
//  Created by Abdullah Aiban on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    var emojiArray = ["😀", "😎", "🥲", "😵‍💫", "🤣", "🤔", "😡"]
    @State var emojiSelected = ""
    var body: some View {
        VStack {
            Text("اختار الايموجي اللي يعبر عنك اليوم")
                .font(.system(size: 45))
                .multilineTextAlignment(.center)
            Divider()
            Text("\(emojiSelected)")
                .font(.system(size: 100))
            ScrollView(.horizontal){
                HStack{
                    ForEach(emojiArray, id: \.self) {
                        emoji in
                        Text(emoji)
                            .font(.system(size: 50))
                            .frame(width: 80, height: 80)
                            .background(Color.yellow.opacity(0.8))
                            .clipShape(Circle())
                            .padding()
                            .onTapGesture {
                                emojiSelected = ("\(emoji)")
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
    }
}
