//
//  Interface6Bis.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 10/02/2021.
//

import Foundation
//
//  Interface6.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//

import SwiftUI

struct Interface6Bis: View {
    
    @ObservedObject var taskStore: TaskStore
    @State private var SelectedTab : Int = 1
    
    var body: some View {
        ZStack{
            
            LinearGradient(gradient: Gradient(colors: [Color.BienBleu2, Color.BienBleu]), startPoint: .bottomLeading, endPoint: .topTrailing)
            
                .edgesIgnoringSafeArea(.top)
            
        ScrollView(.vertical){
        VStack
        {
            
            Spacer()
            VStack{
               
                Image("Profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.gray,lineWidth: 2))
                    .frame(width: 150, height:150)
                    .padding(.top, 10)
                
                Text("Ashley").font(.title)
                    .padding(.bottom, 50)
              
                Spacer()
                    .padding(.bottom,20)
                Picker(selection: $SelectedTab, label: /*@START_MENU_TOKEN@*/Text("Picker")/*@END_MENU_TOKEN@*/, content: {
                    Text("Weekly Mood").tag(1)
                    Text("Fav Quotes").tag(2)
                }).pickerStyle(SegmentedPickerStyle())
                .padding(.bottom, 90)
                .padding(.horizontal, 10)
              //  Text("\(SelectedTab)")
                Spacer()
                //Text("Weekly Mood")
              
               //Spacer()
                
                if SelectedTab == 1 {
                   /* Image(systemName: "waveform.path.ecg")
                        .resizable()
                        .frame(width: 40, height:40)
                        .frame(maxWidth: 360, alignment: .trailing)
                        .opacity(0.6)*/
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                    extractionBarre(happy: taskStore.happy, moyen: taskStore.moyen, nohappy: taskStore.nohappy)}
                
                else {
                    
                  
                    
                    //Spacer()
                    ScrollView(.vertical){
                        VStack{
                            
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                        
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            Written2Bis(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝", choosing_color: .white)
                            
                        }
                        
                    }.padding(.vertical)
                    .frame(height: 600)
                    Spacer()
                    
                    
                }
               
                }
              
            }// end 2èmeVStack
            
            VStack{
                
              //.position(x : 210 , y : 20 )
          //  Text("nohappy = \(taskStore.nohappy)")
            //Text("happy = \(taskStore.happy)")
           // Text("moyen = \(taskStore.moyen)")
           
        }
        }
        
    }
    }
}



struct Written2Bis : View
{
    var my_text : String
    var quote1 : String
    var quote2 : String
    var choosing_color : Color
    
    var body : some View
    {
        
        VStack{
            
            VStack{
                Text("\(quote1)")
                    .font(.system(size:40))
                    .foregroundColor(.black).opacity(0.5)
                
            } .frame(maxWidth: .infinity, alignment: .leading)
            
            
            
            Text("\(my_text)")
                .frame(maxWidth :280, maxHeight : 100)
                .font(.custom("San Francisco", size: 20)).opacity(1)
                .multilineTextAlignment(.center)
                .padding(40)
                .background(choosing_color.opacity(0.7))
                .cornerRadius(15)
            
            
            
            VStack{
                Text("\(quote2)")
                    .font(.system(size:40))
                    .foregroundColor(.black).opacity(0.5)
                
            }.frame(maxWidth: .infinity, alignment: .trailing)
            
            
        }
    }
}
struct Interface6Bis_Previews: PreviewProvider {
    static var previews: some View {
        Interface6Bis(taskStore: TaskStore())
    }
}



/*
 
 //
 //  Interface6.swift
 //  AppBienEtre
 //
 //  Created by Ophelie Castaner on 02/02/2021.
 //
 
 import SwiftUI
 
 struct Interface6: View {
 
 @State private var textquote = ""
 var body: some View {
 
 
 VStack
 {
 VStack{
 
 Image("Profile")
 .resizable()
 .aspectRatio(contentMode: .fit)
 .clipShape(Circle())
 .overlay(Circle().stroke(Color.gray,lineWidth: 2))
 .frame(width: 150, height:150)
 
 Text("Name").font(.title)
 }// end 2èmeVStack
 
 
 List {
 
 QuoteRow()
 QuoteRow()
 QuoteRow()
 
 
 
 
 }//end list
 .padding()
 
 }// end 1èreVStack
 }// end body
 }
 
 
 
 struct Interface6_Previews: PreviewProvider {
 static var previews: some View {
 Interface6()
 }
 }
 
 
 
 
 */
