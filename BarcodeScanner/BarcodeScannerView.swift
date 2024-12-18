//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Jibryll Brinkley on 12/17/24.
//

import SwiftUI
import AVFoundation

struct AlertItem: Identifiable {
    
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid device input",
                                              message: "Something is wrong with the camera. We are unable to capture the input.",
                                              dismissButton: .default(Text("Dismiss")))
    
    static let invalidScannedValue = AlertItem(title: "Invalid scan type",
                                              message: "Value scanned is not valid.",
                                              dismissButton: .default(Text("Dismiss")))
}


struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    @State private var alertItem: AlertItem?
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                ScannerView(scannedCode: $scannedCode, alertItem: $alertItem)
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
            }
            .navigationTitle("Barcode Scanner")
            
            .alert(item: $alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
        
    }
}

#Preview {
    BarcodeScannerView()
}
