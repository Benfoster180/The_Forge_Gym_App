//
//  ForgeParkingCode.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 18/07/2026.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins

struct ForgeBarcodeView: View {
    let member: Member
    var body: some View {
        Image(uiImage: generateBarcode(from: member.carReg))
            .interpolation(.none)
            .resizable()
            .scaledToFit()
            .frame(width: 250, height: 80)
        
        Text(member.carReg)
            .font(.headline)
            .foregroundColor(.white)
    }
    
    func generateBarcode(from value: String) -> UIImage {
        let context = CIContext()
        let filter = CIFilter.code128BarcodeGenerator()
        
        filter.message = Data(value.utf8)
        if let output = filter.outputImage {
                    let scaled = output.transformed(
                        by: CGAffineTransform(scaleX: 3, y: 3)
                    )
                    
                    if let cgImage = context.createCGImage(
                        scaled,
                        from: scaled.extent
                    ) {
                        return UIImage(cgImage: cgImage)
                    }
                }
                
                return UIImage()
            }
        }

#Preview {
    ForgeBarcodeView(member: MockUserData.member)
}
