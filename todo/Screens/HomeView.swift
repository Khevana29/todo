//
//  HomeView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-02.
//

import SwiftUI

struct HomeView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive : Bool = false
    
    var body: some View {
        VStack {
            ScrollView{
                
                
                VStack{
                    HStack{
                        
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 70,height:70)
                            .padding()
                            .foregroundColor(.gray)
                            
                        
                        Spacer()
                        
                        ZStack{
                            Circle()
                                .stroke(Color.gray, lineWidth: 2)
                                .opacity(0.5)
                            
                               
                               .frame(width: 60,height:60)
                            
                            Image(systemName: "square.grid.3x3.fill")
                                .resizable()
                                .frame(width: 25,height: 25)
                                .foregroundStyle(.gray)
                                .padding()
                                  
                        }
                      
                        
                       
                        
                        
                        
                        
                    }
                    .padding()
                    VStack(alignment:.leading)
                    {
                        
                        Text("Hi Alena")
                            .font(.system(size: 50))
                            .fontWeight(.bold)
                            .foregroundColor(Color("homeTitleColor"))
                        
                        
                        Text("95% tasks are completed")
                            .font(.title2)
                            .foregroundColor(.gray)
                        
                        
                        
                        GridView(title: "Mobile app Design", image: "person.circle")
                        
                        
                            Text("Ongoing Tasks")
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.leading)
                            //                            .frame(alignment: .leading)
                       
                            TaskListView()
                      
                    
                       
                        
                    } // VStack
                    .frame(maxWidth: .infinity,alignment: .leading)
                    .padding()
                    
                 
                    
                  
                        
                        
                    
                }
                
            }
          
            TabView(index: 0)
//           .background(Color("tabBarColor"))
        }
       
        
       
    }
}

// Preview
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
