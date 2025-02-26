//
//  ContentView.swift
//  HelloWorld
//
//  Created by alumno on 19/02/25.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    fileprivate func speak(text: String) {
        // Action
        let utterance = AVSpeechUtterance(string: text)
        utterance.voice = AVSpeechSynthesisVoice(language: "es-MX")
        let synthetizer = AVSpeechSynthesizer()
        synthetizer.speak(utterance)
    }
    
    var body: some View {
        VStack {
            Button { speak(text: "Hola mundo cruel")
            } label: { // Label
                Text("Hola mundo cruel!")
                    .fontWeight(.medium)
                .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(15)
            
            Button { // Action
                speak(text: "Triste mundo cruel")
            } label: { // Label
                Text("Triste mundo cruel!")
                    .fontWeight(.medium)
                    .font(.system(.title, design: .rounded))
            }
            .padding()
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(15)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
