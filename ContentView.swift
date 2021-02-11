//
//  ContentView.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//


/******************
 
MAIN
 
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabViewSeule(taskStore: TaskStore())
        
        
   
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
