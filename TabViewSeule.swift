//
//  TabViewSeule.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//

import SwiftUI

struct TabViewSeule: View {
    @ObservedObject var taskStore: TaskStore
    
    var body: some View {
    
        TabView{
            
            Interface1(taskStore: taskStore)
                .tabItem  {
                    Image(systemName: "faceid")
                   Text("Home")
                      
                   
                }
            
            
            Interface2()
                .tabItem {
                    Image(systemName: "pencil.tip")
                    Text("Create")
                   
                }
            
          Interface3()
                .tabItem {
                    Image(systemName: "envelope")
                    Text("Inbox")
                   
                }
            
      
            ToDoList()
                .tabItem {
                    Image(systemName: "list.star")
                    Text("To Do")
                   
                }
            
            
            Interface6Bis(taskStore: taskStore)
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                        
                }
        }
        .font(.headline)
        .accentColor(.black)
        
    
    }
}

struct TabViewSeule_Previews: PreviewProvider {
    static var previews: some View {
        TabViewSeule(taskStore: TaskStore())
    }
}
