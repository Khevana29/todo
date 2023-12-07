//
//  TabView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-03.
//

import SwiftUI

struct TabView: View {
   
    @State var index : Int
    
    
    var body: some View {
        
       
        
        VStack{
          
            customTabBar(index: self.$index)
           
        }//VStack
       
        
    }
}

#Preview {
    TabView(index: 2)
        
}

struct customTabBar : View{
  
    @Binding var index : Int
    
    var body: some View{
        HStack{
            
            Button(action: {
                self.index = 0
                
                print("Button pressed")
            })
            {
                Image(systemName: self.index == 0 ? "house.fill" : "house")
                    .font(.system(size: 25))
                   
            }
            .foregroundColor(Color("buttonColor")).opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
          
            
            Spacer(minLength: 0)
            
          
                
               
                
                Button(action : {
                    
                    print("pressed")
                    
                    
                }){
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                         .font(.system(size: 20))
                        .frame(width: 70, height: 70)
                        .foregroundColor(Color("buttonColor"))
                }
                .offset(y: -25)
      
            
            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                self.index = 1
                print("Button pressed")
               
            })
            {
                Image(systemName: self.index == 1 ? "bookmark.fill" : "bookmark")
                    .font(.system(size: 25))
                    
                    
            }
            .foregroundColor(Color("buttonColor")).opacity(0.8)
           
            
        }//HStack
        .padding(.horizontal,35)
        .background(Color("tabBarColor"))
    }
}


