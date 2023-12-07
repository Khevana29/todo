//
//  OnBordingView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-01.
//

import SwiftUI

struct OnBordingView: View {
    
    @AppStorage("onboarding") var isOnBoardingViewActive : Bool = true
    @State  var isAnimating: Bool = false
    
    
    
    var body: some View {
        
      
        
        ZStack{
            Color("backgroundColor")
                 .edgesIgnoringSafeArea(.all)
           
             VStack{
                 Spacer()
                 
                 ZStack{
                     
                     
//                     CustomShapeView()
                     
                     Image("image-2")
                         .resizable()
                         .scaledToFit()
                         .padding(.horizontal,50)
                         .offset(y: isAnimating ? -25 : 25)
                         .animation(
                            Animation
                                .easeInOut(duration: 4)
                                .repeatForever()
                            , value: isAnimating
                         )
                     
                 }//ZStack
                 
                 
                 Spacer()
                 
                 Text("Manage your\n Daily Task.")
                     .fontWeight(.bold)
                     .font(.system(size: 34))
                     .foregroundColor(Color("titleColor"))
                     .font(.title)
                     .multilineTextAlignment(.center)
                     
//                     .padding(.vertical,20)
                 
                 Text("By using this application you will\n be able to manage your daily tasks.")
                     .font(.body)
                     .multilineTextAlignment(.center)
                     .foregroundColor(.gray)
                     .padding()
                 
                
                 ZStack{
                     Button(
                        action: {
                           print("Button Pressed")
                         isOnBoardingViewActive = false
                     })
                         
                  {
                     Text("Get Started")
                         .font(.system(.title3,design: .rounded ))
                         .fontWeight(.bold)
                      
                     
                 }
                 .buttonStyle(.borderedProminent)
                 .buttonBorderShape(.capsule)
                 .controlSize(.large)
                 .shadow(color: Color.accentColor.opacity(0.5), radius: 10, x: 0, y: 10)
                 .padding()
                 
                 }//ZStack
                    
             } 
             
             .onAppear(
             perform: {
                 DispatchQueue.main.asyncAfter(deadline: .now() ,
                 execute:{
                     isAnimating = true
                     
                     
                 })
                     
                 })
//VStack
        }//ZStack
       
           
        
       
    }
}

struct OnBordingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBordingView()
    }
}
