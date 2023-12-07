//
//  GridView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-02.
//

import SwiftUI

struct GridView: View {
    @State var title : String
    @State var image : String
    
    var data : [Int] = Array(1...4)
     var colors : [Color] = [Color("lightBlue"), Color("lightPink"), Color("lightGreen")]
    
    private  let adaptiveColumns = [
        GridItem(.adaptive(minimum: 170))
    ]
    
    private let numberColumns = [
    
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: numberColumns, spacing: 20){
                    ForEach(data, id: \.self){ number in
                        
                        ZStack{
                            Rectangle()
                                .frame(width: 170, height: 170)
                                .foregroundColor(colors[number%3])
                                .cornerRadius(30)
                            VStack{
                                
                                HStack{
                                    
                                    Image(systemName: image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 25, height: 25)
                                        .foregroundColor(.gray)
                                    
                                    Spacer()
                                    
                                    Image(systemName: "arrow.forward")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 20, height: 20)
                                        .foregroundColor(.gray)
                                    
                                }
                                .padding(.horizontal,25)
                               
                                
                              
                                
                                
                                Text(title)
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundColor(.black)
                                    .multilineTextAlignment(.leading)
                                    .padding(.trailing,45)
                                    .padding(.vertical, 15)
                                   
                                    .frame(alignment: .leading)
                                
                                
                                
                                
                            } //VStack
                        } //ZStack
                        } // For Each
                      
                    } //LasyGrid
                }
            } // Scroll View
           
        } // NavigationView
    }


struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(title: "Hi khevana", image: "person.circle")
    }
}
