//
//  ContentView.swift
//  Shared
//
//  Created by CHIRANJIT SARKAR on 01/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        #if os(iOS)
        Sidebar()
        
        #else
        Sidebar()
            .frame(minWidth: 1000, minHeight: 600)
        #endif
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
