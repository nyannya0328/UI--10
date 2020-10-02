//
//  ContentView.swift
//  UI-10
//
//  Created by にゃんにゃん丸 on 2020/10/02.
//

import SwiftUI

struct ContentView: View {
    var section1 = ["1","2","3","4","5"]
    var section2 = ["6","7","8","9","10"]
    
    var body: some View {
        NavigationView{
            
         
            
            
            List{
                
                Section(header: Text("One")){
                
                    ForEach(0..<section1.count){
                    Text(self.section1[$0])
                }
                
                
                
                }
                Section(header: HStack{Image("image").resizable().frame(width: 40, height: 40).clipShape(Circle())
                            Text("Two")}.foregroundColor(.primary), footer: Image("image1").resizable().aspectRatio(contentMode: .fill)){
                
                    ForEach(0..<section2.count){
                    Text(self.section2[$0])
                }
                
                
                
                }
                
                
                
                
                
            }
            .navigationBarTitle("UI-10")
           
         
            
            
        }
        .environment(\.colorScheme,.dark)
        
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
