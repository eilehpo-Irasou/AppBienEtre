//
//  UniBarre.swift
//  AppBienEtre
//
//  Created by Lixia Divin on 09/02/2021.
//

import SwiftUI

struct UniBarre: View {
    
    let height1 : CGFloat = 210
    var height2: CGFloat { return height1 * CGFloat(pourcentage) }
    var pourcentageEntier: Int { return Int(pourcentage * 100) }
    
    var Emoji_Head : String
    
    var pourcentage: Double
    
    var body: some View {
        VStack{
        
            Text("\(Emoji_Head)")
            ZStack(alignment: .bottom){
                Capsule().frame(width:30, height: height1)
                    .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                
                Capsule().frame(width:30, height: height2)
                    .foregroundColor(Color.blue)
                   // .foregroundColor(Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)))
                    
                
                
                
            }
            Text("\(pourcentageEntier)%")
        }
        
    }
}

struct UniBarre_Previews: PreviewProvider {
    static var previews: some View {
        UniBarre( Emoji_Head : "😄",pourcentage: 0.6)
        
    }
}
