//
//  ContentView.swift
//  SwipebleViewExample
//
//  Created by Ilya on 10.10.20.
//

import SwiftUI
import SwipeableView

struct Example {
    static var leftActions = [
        Action(title: "Note", iconName: "pencil", bgColor: .note, action: {}),
        Action(title: "Edit doc", iconName: "doc.text", bgColor: .edit, action: {}),
        Action(title: "New doc", iconName: "doc.text.fill", bgColor: .done, action: {}),
    ]
    
    static var leftActions2 = [
        Action(title: "Note", iconName: "pencil", bgColor: .note, action: {}),
        Action(title: "Edit doc", iconName: "doc.text", bgColor: .edit, action: {}),
    ]
    
    static var rightActions = [
        Action(title: "Delete", iconName: "trash", bgColor: .delete, action: {})
    ]
    static var rightActions2 = [
        Action(title: "New doc", iconName: "doc.text.fill", bgColor: .done, action: {}),
        Action(title: "Delete", iconName: "trash", bgColor: .delete, action: {})
    ]
}


struct ContentView: View {
    var container = SwManager()
    var body: some View {
        GeometryReader { reader in
            // ScrollView {
            VStack (alignment: .center, spacing: 10){
                //Spacer()
                HStack {
                    Text("Independed view")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                HStack {
                    Text("Rectangular style")
                        .font(.callout)
                    Spacer()
                }
                SwipeableView(content: {
                    Text("Swipe to see actions")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(Color.init(red: 0.85, green: 0.85, blue: 0.9))
                    
                },
                leftActions: Example.leftActions,
                rightActions: Example.rightActions,
                rounded: false)
                .frame(height: 90)
                
                HStack {
                    Text("Views in a container")
                        .font(.title2)
                        .bold()
                    Spacer()
                }
                
                HStack {
                    Text("Rounded style")
                        .font(.callout)
                    Spacer()
                }
                
                
                SwipeableView(content: {
                    HStack {
                        Spacer()
                        Text("Swipe to see actions")
                        
                        Spacer()
                    }
                    .frame(maxHeight: .infinity)
                    .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
                    .cornerRadius(10)
                    
                },
                leftActions: Example.leftActions,
                rightActions: Example.rightActions,
                rounded: true,
                container: container)
                .frame(height: 140)
                
                
                SwipeableView(content: {
                    HStack {
                        Spacer()
                        Text("Swipe to see actions")
                        
                        Spacer()
                    }
                    .frame(maxHeight: .infinity)
                    .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
                    .cornerRadius(10)
                    
                },
                leftActions: Example.rightActions2,
                rightActions: Example.leftActions2,
                rounded: true,
                container: container)
                .frame(height: 100)
                
                
                
                
                Spacer()
            }.padding()
            //}
            
        }.padding(5)
        .background(Color.white)
        
        .navigationTitle("Swipeable-View")
        
        
        
        .ignoresSafeArea(.all)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
