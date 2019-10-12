//
//  ContentView.swift
//  TheBestConverter
//
//  Created by Brian Sipple on 10/11/19.
//  Copyright © 2019 CypherPoet. All rights reserved.
//

import SwiftUI


struct MainView: View {
    @State private var currentConversionSet: ConversionSet = .temperature
    

    var body: some View {
        
        VStack {
            
            // ConversionSet Header
            VStack {
                Text("Conversion Category:")
                
                Picker("Unit", selection: $currentConversionSet) {
                    ForEach(ConversionSet.allCases, id: \.self) { conversionSet in
                        conversionSet.pickerImage
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            .padding()
            .background(Color.pink)
            

            conversionView
            
            Spacer()
        }
    }
    
    
    private var conversionView: some View {
        switch currentConversionSet {
        case .btc:
            return AnyView(BitcoinConversionView())
        case .temperature:
            return AnyView(TemperatureConversionView())
        }
    }
}



struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
