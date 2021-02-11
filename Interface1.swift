//
//  Interface1.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//

/*
 
 FICHIER RESERVE POUR L'INTERFACE 1
 */

import SwiftUI
struct Interface1: View {
    
    @ObservedObject var taskStore: TaskStore
    @State private var selection = 1
    @State private var changeColors = Color(.orange)
    @State private var showingAlert = false
    var body: some View {
        
        
        ZStack {
            
            if selection == 1 {
                LinearGradient(gradient: Gradient(colors: [Color.BienBleu2, Color.BienBleu]), startPoint: .bottomLeading, endPoint: .topTrailing)
            } else if selection == 2 {
                LinearGradient(gradient: Gradient(colors: [Color.CMoyenC, Color.CMoyenF]), startPoint: .bottomLeading, endPoint: .topTrailing)
            } else {
                LinearGradient(gradient: Gradient(colors: [Color.NotHappyC, Color.NotHappyF]), startPoint: .bottomLeading, endPoint: .topTrailing)
            }
        
        
            
            VStack
            {
                
              /*  Text("nohappy = \(taskStore.nohappy)")
                Text("happy = \(taskStore.happy)")
                Text("moyen = \(taskStore.moyen)") */
                
                HStack{
                    
                         Text(" How are you today ? ")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                  
                
                }.padding(1)
                
                HStack{
                    TabView(selection:$selection) {
                        
                        ForEach(1...3,id:\.self){ index in
                            Button(action: {addMood(index: index)
                                showingAlert.toggle()
                            }, label: {
                                Image("Image\(index)")
                                    .resizable()
                                    .frame(width: 100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center)
                                    .padding(.horizontal, 10)
                                
                                
                                
                                
                                
                            }     )
                            
                            
                        }
                        
                        
                    }
                    
                    .frame(height: 350)
                    // .padding(.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10)
                    .tabViewStyle(PageTabViewStyle())
                    .animation(.easeOut)
                    .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .never))


                }.alert(isPresented: $showingAlert) {
                    Alert(title: Text("Voted"), message: Text("We Checked your mood"), dismissButton: .default(Text("Ok!")))}
              

                /*    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                 Text("save")
                 })*/
                

            }
            
        }// fin hstack pour how are you
        
        
        .edgesIgnoringSafeArea(.top)

    }// fin zstack
  
    
    
    func addMood(index: Int) {
        // ajouter une humeur
        switch index {
        case 1:
          taskStore.happy += 1
        case 2:
          taskStore.moyen += 1
        case 3:
         taskStore.nohappy += 1
        default:
            break
        }
        
        print(index, "index")
        
        print(taskStore.nohappy,"no happy")
        print(taskStore.moyen, "moyen")
        print(taskStore.nohappy, "nohappy")
        
        print("dodo")
        
        
        
        //taskStore.moods.append(mood)
    }
}


struct Interface1_Previews: PreviewProvider {
    static var previews: some View {
        Interface1(taskStore: TaskStore())
    }
}



/*
 
 
 var body: some View {
     
     ZStack
     {
         
         VStack
         {
             HStack{
                 Text("How are you feeling ?")
                     .font(.title)
                     .font(.custom("San Francisco", size: 25))
                     .multilineTextAlignment(.center)
             }.padding()
             
             //
             HStack{
                 
                 TabView(selection:$selection) {
                     
                     ForEach(1...3,id:\.self) { index in
                         Button(action: {addMood(index: index)}, label: {
                             Image("Image\(index)")
                                 .resizable()
                                 .frame(width:selection == index ? 200 : 100,height: selection == index ? 200 : 100)
                                 .padding(.horizontal, 10)
                                 //.background(Color.red)
                                 .cornerRadius(20)
                                 .offset(y: -15)
                                 .tag(index)
                         })
                         
                     }
                     
                 }
                 .frame(height: 350)
                 // .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                 .tabViewStyle(PageTabViewStyle())
                 .animation(.easeOut)
                 .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
                 
             }
             
             
             /*    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
              Text("save")
              })*/
             
             
         }
         
     }// fin hstack pour how are you
 }// fin zstack
 */
