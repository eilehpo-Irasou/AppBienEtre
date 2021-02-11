//
//  Interface2.swift
//  AppBienEtre
//
//  Created by Ophelie Castaner on 02/02/2021.
//

import SwiftUI

struct Interface2: View {
   // @State private var goMusic = false
    @State private var goCreateQuote = false
    @State private var MyQoute = ""

    var body: some View {
       
       
            
        
        ZStack{
           
            LinearGradient(gradient: Gradient(colors: [Color.BienBleu2, Color.BienBleu]), startPoint: .bottomLeading, endPoint: .topTrailing)
           
                .edgesIgnoringSafeArea(.top)
            
            
        
            VStack{
                
                HStack {
                    Text("Quote.")
                        .foregroundColor(.white)
                        .font(.title).bold()
                        Spacer()
                    
                    Button(action: {}, label: {
                        Text("OK")
                            .foregroundColor(.white)
                    })
                }.padding(.top, 10)
                .padding(.horizontal)
                
               Spacer()
                
                
                
                //1er quote
            
                 
                    HStack{
                Written3(my_text: "The secret of change is to focus all of your energy.", quote1: "❝", quote2: "❝" )
                    }
                    .frame(height:300)
                    .foregroundColor(.black)
                    .overlay( TextField("Write here ", text: $MyQoute)
                                
                                //  .textFieldStyle(RoundedBorderTextFieldStyle())
                                
                                  .frame(maxWidth :280, maxHeight : 100)
                                
                                .font(.custom("San Francisco", size:20))
                                .multilineTextAlignment(.center)
                                  .padding(40)
                                
                                  .background(Color.white.opacity(0.7))
                                //.foregroundColor(.black)
                                  .cornerRadius(15)
                    ).padding(.bottom, 30)
            HStack(spacing: 30){
                
            
                // 1er BOUTTON "écrire"
                Button(action: {
                    self.goCreateQuote.toggle()
        
                }, label:
                        {
                           
                    Image(systemName: "pencil.tip")
                        })
                .sheet(isPresented : $goCreateQuote)
                            {
                            Interface3()
                           // QuoteRow()
                        }
        
                .padding(9)
                .frame(width:50 , height: 50)
                    .font(.system(size:20))
                    .foregroundColor(.black)
                .background(Color.white)
                
              //  .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(50)
             
                
               
                
                // 2eme BOUTTON"musique "
                
                Button(action: {
                    //self.goMusic.toggle()
                    
                }, label:
                        {
                    Image(systemName: "music.note")
                            
                            
                        })/*.sheet(isPresented : $goMusic)
                            {
                            Music()
                        }*/
                    .padding(9)
                .frame(width:50 , height: 50)
                    .font(.system(size:20))
                    .foregroundColor(.black) .foregroundColor(.black)
                .background(Color.white)
         //       .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(50)
                
                // 3EME BOUTTON "partager "
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label:
                        {
                    Image(systemName: "square.and.arrow.up")
                        
                     
                }).padding(9)
                    .frame(width:50 , height: 50)
                    .font(.system(size:20))
                    .foregroundColor(.black) .foregroundColor(.black)
                    .background(Color.white)
                //    .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                        .cornerRadius(50)
                
                
                
                //4EME BOUTTON "hasard "
                Button(action: {
                  
                }, label:
                        {
                    Image(systemName: "die.face.5")
                        
                }).padding(9)
                .frame(width:50 , height: 50)
                    .font(.system(size:20))
                    .foregroundColor(.black) .foregroundColor(.black)
                .background(Color.white)
              //  .background(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
                                    .cornerRadius(50)
               // Image(systemName: "music.note")
                
                
            } // HStack fin
            
             Spacer()
                
            }
        
        }//ZSTACK FIN
        }
    }



struct Written3 : View
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
                    .padding(.bottom,150)
            } .frame(maxWidth: .infinity, alignment: .leading)
            
       
           // Text("\(my_text)")
                
                
            
            
            
            VStack{
                Text("\(quote2)")
                    .font(.system(size:40))
                    .foregroundColor(.black).opacity(0.5)
                
            }.frame(maxWidth: .infinity, alignment: .trailing)
            
            
        }
    }
}







struct Interface2_Previews: PreviewProvider {
    static var previews: some View {
        Interface2()
    }
}
