//
//  SettingsViewLabel.swift
//  Fructus
//
//  Created by Marcos Kilmer on 07/03/21.
//

import SwiftUI

struct SettingsViewLabel: View {
    var image:String
    var description:String
    
    var body: some View {
        HStack {
            Text(description)
            Spacer()
            Image(systemName: image)
        } //MARK:- HStack
    }
}

struct SettingsViewLabel_Previews: PreviewProvider {
    static var previews: some View {
        SettingsViewLabel(image: "info.circle", description: "hehehehheehhehehe")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
