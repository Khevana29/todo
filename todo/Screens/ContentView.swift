//
//  ContentView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-01.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("onboarding") var isOnBoardingViewActive : Bool = true
    var body: some View {
        ZStack{
            if(isOnBoardingViewActive){
                OnBordingView()
            }
            else{
                HomeView()
            }
        } //ZStack
        
    }
}

#Preview {
    ContentView()
}
