//
//  CustomSquareView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-02.
//

import SwiftUI

struct CustomSquareView: View {
    
    @State var shapeWidth : Int
    @State var shapeHeight : Int
    @State var shapeColor : Color
    
    @State var title : String
    @State var image : String
    
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30)
                .frame(width: 250, height: 200)
                .foregroundColor(Color("lightBlue"))
                .overlay{
                    VStack{
                        HStack{
                            Image(systemName: image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 30, height: 30)
                                .foregroundColor(.gray)
                            
                            Spacer()
                            
                            Image(systemName: "arrow.forward")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.gray)
                            
                        }
                        .padding(.horizontal,30)
                        .padding(.vertical)
                        
                       
                        
                        Text(title)
                            .font(.system(size: 27))
                            .fontWeight(.medium)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,45)
                            .frame(alignment: .leading)
                        
                            
                    
                    
                        
                    }
                }
        }//ZStack
    }
}


#Preview {
    CustomSquareView(shapeWidth: 250, shapeHeight: 200, shapeColor: Color("lightBlue"), title: "Mobile app Design", image: "person.crop.circle.fill")
       
}
