//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Jibryll Brinkley on 12/17/24.
//

import SwiftUI
import AVFoundation

struct BarcodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Rectangle()
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .foregroundStyle(.black.gradient)
                
                Spacer().frame(height: 70)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Scanned Yet")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
                    .padding()
                    
                Spacer()
            }
            .navigationTitle("Barcode Scanner")
            .font(.largeTitle)
            
        }
        
    }
}

#Preview {
    BarcodeScannerView()
}
