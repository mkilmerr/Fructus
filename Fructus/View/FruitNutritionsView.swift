//
//  FruitNutritionsView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 06/03/21.
//

import SwiftUI

struct FruitNutritionsView: View {
    //MARK:- Properties
    
    var fruit:Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins","Minerals"]
    
    //MARK:- Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutrional value per 100g") {
                ForEach(0..<nutrients.count, id : \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack(){
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        } //MARK:- Group
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        //MARK:- Text
                      
                    } //MARK:- HStack
                } //MARK:- orEach(
            } //MARK:- DisclosureGroup
        } //MARK:- GroupBox
    }
}

//MARK:- Preview
struct FruitNutritionsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutritionsView(fruit: fruitsData[4])
            .previewLayout(.fixed(width: 320, height: 320))
    }
}
