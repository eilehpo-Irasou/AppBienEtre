//
//  ToDoListe.swift
//  AppBienEtre
//
//  Created by Jesus Bizarro on 04/02/2021.
//

import SwiftUI
import Combine
struct ToDoListe: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newTodo : String = ""
    
    var searchBar : some View {
        HStack{
            TextField("Enter in a new task", text:self.$newTodo)
            Button(action:self.addNewToDo,label: {
                Text("Add New")
            })
            
        }//fin HStack
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1),toDoItem: newTodo))
        self.newTodo = ""
    }
    
    var body: some View {
        NavigationView{
            VStack {
                
                searchBar.padding()
                List {
                    ForEach(self.taskStore.tasks) {
                        task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                    .onDelete(perform: self.delete)
                }.navigationTitle("Tasks")
                .navigationBarItems(trailing: EditButton())
                
            }
            
        }
}//body
    func move(from source : IndexSet, to destination : Int){
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
        
    }
    func delete(at offsets  : IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
    
    }

struct ToDoListe_Previews: PreviewProvider {
    static var previews: some View {
        ToDoListe()
    }
}
