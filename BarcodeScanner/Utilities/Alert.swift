//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Jibryll Brinkley on 12/18/24.
//

import SwiftUI

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
