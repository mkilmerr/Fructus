//
//  FruitRowView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 05/03/21.
//

import SwiftUI

struct FruitRowView: View {
    //MARK:- Properties
    
    var fruit:Fruit
    
    //MARK:- Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .cornerRadius(8)
            //MARK:- Image
            
            VStack(alignment: .leading, spacing: 8) {
                Text(fruit.title)
                    .fontWeight(.bold)
                    .font(.title2)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            } //MARK:- VStack
        } //MARK:- HStack
    }
}

//MARK:- Preview
struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
