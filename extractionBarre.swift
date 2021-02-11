//
//  extractionBarre.swift
//  AppBienEtre
//
//  Created by Lixia Divin on 09/02/2021.
//

import SwiftUI

struct extractionBarre: View {
    
    //  attendre les INTs
    var happy : Int
    var moyen : Int
    var nohappy : Int
   
    var total: Double { return Double(happy) + Double(moyen) + Double(nohappy) }
    var happy2: Double { return Double(happy) / Double(totalOk) }
    var moyen2: Double { return Double(moyen) / Double(totalOk) }
    var nohappy2: Double { return Double(nohappy) / Double(totalOk) }
    var totalOk: Double { return total == 0 ? 1 : total  }
    
    
    
    
    
    var body: some View {
        
        HStack(spacing:40){
            
           
            UniBarre(Emoji_Head : "😄", pourcentage: happy2)
               // .padding(.trailing,40)
                .frame(maxHeight: 10)
            
                
        
            UniBarre(Emoji_Head : "😐",pourcentage: moyen2)
               // .padding(.leading,30)
                .frame( maxHeight: 100)
            UniBarre(Emoji_Head : "☹️", pourcentage: nohappy2)
                //.padding(.leading,90)
                .frame( maxHeight: 10)
               
               
            
        }
    }
}




struct extractionBarre_Previews: PreviewProvider {
    static var previews: some View {
        extractionBarre(happy:0, moyen: 0, nohappy: 0)
    }
}

