//
//  ContentView.swift
//  swiftuifirstproject
//
//  Created by Gizem Malçok on 9.06.2023.
//

import SwiftUI

struct ProgressExampleView: View {
    var body: some View {
        VStack {
            ProgressView(value:5, total: 20.0)
                .padding()
            HStack{
                Spacer()
                VStack (alignment: .leading){
                    Text("Seconds Elapsed")
                    Label("300", systemImage: "bolt.fill")
                                  
                         }
                Spacer()
                VStack (alignment: .trailing){
                    Text("Seconds Remaining")
                    Label("300", systemImage: "bolt.fill")
                }
   
                     
                
            } .accessibilityElement(children: .ignore)
                .accessibilityLabel("Time remaining")
                .accessibilityValue("10 minutes")
            Circle()
                .strokeBorder(lineWidth: 10).padding()
            HStack {
                           Text("Speaker 1 of 3")
                Spacer()
                Button(action: {}){  Image(systemName: "forward.fill")}
                    .accessibilityLabel("Next speaker")
                       }
        }.padding()
    }
}

struct ProgressExampleView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressExampleView()
    }
}
