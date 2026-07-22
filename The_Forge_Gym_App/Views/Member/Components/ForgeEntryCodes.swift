//
//  ForgeEntryCodes.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 17/07/2026.
//

import SwiftUI
import CoreImage.CIFilterBuiltins

struct QRCodeView: View {

    let context = CIContext()
    let filter = CIFilter.qrCodeGenerator()

    var body: some View {

        Image(uiImage: generateQRCode(from: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"))
            .resizable()
            .interpolation(.none)
            .scaledToFit()
            .frame(width: 200, height: 200)

    }

    func generateQRCode(from string: String) -> UIImage {

        let data = Data(string.utf8)

        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("H", forKey: "inputCorrectionLevel")

        if let outputImage = filter.outputImage,
           let cgImage = context.createCGImage(
                outputImage,
                from: outputImage.extent
           ) {
            return UIImage(cgImage: cgImage)
        }

        return UIImage(systemName: "xmark")!
    }
}

#Preview {
    QRCodeView()
}
