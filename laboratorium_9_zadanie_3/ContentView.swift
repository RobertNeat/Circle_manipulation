//  ContentView.swift
//  laboratorium_9_zadanie_3

import SwiftUI

struct ContentView: View {
    @State private var position = CGPoint(x: 100, y: 100)
 
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .position(position)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        position = value.location
                    }
            )
    }
}
 

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


 


