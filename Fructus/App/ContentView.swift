//
//  ContentView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct ContentView: View {
    
    let fruitData = fruitsData
    
    @State private var isShowSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruitData.shuffled()) { item in
                    NavigationLink(destination:FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical,4)
                    } //MARK:- NavigationLink
                    
                }
            } //MARK:- List
            .navigationTitle("Fruits 🍓🍎🍊")
            .navigationBarItems(
            trailing:
                Button(action: {
                    isShowSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }
            )
            .sheet(isPresented: $isShowSettings) {
                SettingsView()
            }
            
        } //MARK:- Navigation
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
