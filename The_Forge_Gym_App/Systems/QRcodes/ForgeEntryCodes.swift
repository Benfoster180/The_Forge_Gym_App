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

        VStack(spacing: 20) {

            Text("MEMBER ENTRY")
                .font(.caption)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
                .foregroundStyle(.white)
                .tracking(2)

            ZStack {

                RoundedRectangle(cornerRadius: 28)
                    .fill(.white)
                    .frame(width: 240, height: 240)
                    .shadow(color: .black.opacity(0.25), radius: 15, y: 8)

                Image(uiImage: generateQRCode(from: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"))
                    .resizable()
                    .interpolation(.none)
                    .scaledToFit()
                    .frame(width: 180, height: 180)

                Image("ForgeLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 38, height: 38)
                    .padding(10)
                    .background(.ultraThinMaterial)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(.white.opacity(0.3), lineWidth: 1)
                    )
                    .shadow(radius: 8)
            }

            Text("Scan at Reception")
                .font(.headline)
                .foregroundStyle(.white)

            Text("Valid while membership is active")
                .font(.caption)
                .foregroundStyle(.gray)
        }
        .padding(30)
        .background(
            RoundedRectangle(cornerRadius: 32)
                .fill(Color("ForgeBlack"))
                .overlay(
                    RoundedRectangle(cornerRadius: 32)
                        .stroke(.white.opacity(0.08), lineWidth: 1)
                )
        )
    }

    func generateQRCode(from string: String) -> UIImage {

        let data = Data(string.utf8)
        filter.setValue(data, forKey: "inputMessage")
        filter.setValue("H", forKey: "inputCorrectionLevel")

        if let outputImage = filter.outputImage,
           let cgImage = context.createCGImage(outputImage, from: outputImage.extent) {
            return UIImage(cgImage: cgImage)
        }

        return UIImage(systemName: "xmark")!
    }
}

#Preview {
    QRCodeView()
}
