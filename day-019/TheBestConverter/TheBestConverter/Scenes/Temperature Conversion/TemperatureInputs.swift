//
//  TemperatureInputs.swift
//  TheBestConverter
//
//  Created by Brian Sipple on 10/12/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI

struct TemperatureInputs: View {
    @Binding var topConversionOption: TemperatureOption
    @Binding var bottomConversionOption: TemperatureOption
    
    @Binding var topConversionText: String
    @Binding var bottomConversionText: String
    
    var body: some View {
        Group {
            Section(
                header: Text(topConversionOption.fullName)
                    .fontWeight(.bold)
                    .padding(.top, 22)
            ) {
                TextField(
                    topConversionOption.fullName,
                    text: $topConversionText
                )
                    .frame(height: 64)
                    .font(.title)
            }

            Section(
                header: Text(bottomConversionOption.fullName)
                    .fontWeight(.bold)
            ) {
                TextField(
                    bottomConversionOption.fullName,
                    text: $bottomConversionText
                )
                    .frame(height: 64)
                    .font(.title)
            }
        }
    }
}


struct TemperatureInputs_Previews: PreviewProvider {
    static var previews: some View {
        TemperatureInputs(
            topConversionOption: .constant(.kelvin),
            bottomConversionOption: .constant(.celsius),
            topConversionText: .constant("0"),
            bottomConversionText: .constant("0")
        )
    }
}
