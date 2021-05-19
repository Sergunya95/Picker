//
//  ContentView.swift
//  Picker
//
//  Created by apple on 5/16/21.
//

import SwiftUI

struct ContentView: View {
    @State var selection = 0
    @State var isOn = false
    
    var settingsTime = [ "1 min",
                         "2 min",
                         "3 min",
                         "5 min"]
    
    var colors = [ "Red",
                   "Green",
                   "Blue",
                   "Pink"]
    
    var body: some View {
        
        NavigationView {
            Form {
                
                Picker(selection: $selection,
                       label: Text("Time"),
                       content: {
                        ForEach(0..<settingsTime.count) {
                            Text(self.settingsTime[$0])
                        }
                       })
                
                Toggle(isOn: $isOn, label: {
                    Text("Airplane mode").foregroundColor(isOn ? .black : .orange)
                })
                
                Picker(selection: $selection,
                       label: Text("Color").foregroundColor(.red),
                       content: {
                        ForEach(0..<colors.count) {
                            Text(self.colors[$0])
                        }
                       })
                
            }.navigationBarTitle("Settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
