//
//  Interface3.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//

/*
 Fichier pour interface 3
 */



import SwiftUI

struct Interface3: View {
    @State private var clickButton = false
    @State private var ModalShare = false
    var body: some View {
        ZStack
        {
            LinearGradient(gradient: Gradient(colors: [Color.BienBleu2, Color.BienBleu]), startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.top)
            VStack{
                HStack{
                Text("Favorites.")
                    .foregroundColor(.white)
                    .font(.title).bold()
                    .padding(.trailing,140)
          
                    
                    Image(systemName: "square.and.arrow.up")
                        //  .position(x:260,y:50)
                        .font(.system(size:35))
                        .foregroundColor(.white)
                    
                    //Code pour le coeur
                    Button(action: { self.clickButton.toggle() }) {
                        Image(systemName: clickButton ?
                                "suit.heart" : "suit.heart.fill")
                    }.foregroundColor(.white)
                    //   .position(x: 140, y: 50)
                    .font(.system(size:35))
                    .padding(.trailing,20)
                    
                    
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                VStack{
                    Spacer()
                    ScrollView(.vertical){
                        
                        
                        VStack{
                            
                            Written2(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "Live life to the fullest and focus on the positive.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "You are never too old to set another goal or dream a new dream.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "If opportunity doesn’t knock, build a door.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "Hardships often prepare ordinary people for an extraordinary destiny.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "Success is the sum of small efforts repeated day in and day out.", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "", quote1: "❝", quote2: "❝")
                            
                            Written2(my_text: "", quote1: "❝", quote2: "❝")
                            
                        }
                        
                    }.padding(.vertical)
                    .frame(height: 700)
                    Spacer()
                    
                    
                }//.position(x : 210 , y : 20 )
                
            }
            
            
        }
    }
    
    
    
    struct Written2 : View
    {
        var my_text : String
        var quote1 : String
        var quote2 : String
        
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
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(15)
                
                VStack{
                    Text("\(quote2)")
                        .font(.system(size:40))
                        .foregroundColor(.black).opacity(0.5)
                    
                }.frame(maxWidth: .infinity, alignment: .trailing)
                
                
            }
        }
    }
    
}

struct Interface3_Previews: PreviewProvider {
    static var previews: some View {
        Interface3()
    }
}
