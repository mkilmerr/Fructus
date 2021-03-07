//
//  ApplicationLinkLabelView.swift
//  Fructus
//
//  Created by Marcos Kilmer on 07/03/21.
//

import SwiftUI

struct ApplicationLinkLabelView: View {
    
    var link:String
    var name:String
    
    var body: some View {
        HStack {
            Link(name, destination:URL(string: "https://github.com/mkilmerr")!)
            Image(systemName: "arrow.up.right.square")
                .foregroundColor(.blue)
        }
    }
}

struct ApplicationLinkLabelView_Previews: PreviewProvider {
    static var previews: some View {
        ApplicationLinkLabelView(link: "www.kilmer.com.br", name: "kilmer")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
