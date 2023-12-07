//
//  TaskListView.swift
//  todo
//
//  Created by Khevana Patel on 2023-12-03.
//

import SwiftUI

struct TaskListView: View {
    
    @State var items : [String] = [
        "Getting Started with MostlyiOS",
        "Like Share Share",
        "Source Code on my Github",
        
        
        
    ]
        
    var body: some View {
        
        
        VStack{
            ForEach(items, id: \.self){
                item  in ListRowView(title: item)
                    .fontWeight(.medium)
                    .padding() // Add some padding to the list item
                    .background(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 1))
                    .padding(.vertical,2)
                   
            }
            
        }
        
        
        
    }
    
    
    
    
    
    
    
    struct TaskListView_Previews: PreviewProvider {
        static var previews: some View {
            TaskListView()
        }
        
    }
}



