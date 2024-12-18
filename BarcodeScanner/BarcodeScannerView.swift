//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Jibryll Brinkley on 12/17/24.
//

import SwiftUI
import AVFoundation

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                    .foregroundStyle(.black.gradient)
                
                Spacer().frame(height: 70)
                
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
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
