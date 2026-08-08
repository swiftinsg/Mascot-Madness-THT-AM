import SwiftUI

var torso: some BodyPart {
    Torso {
        ZStack {
            
            // 2. The Jacket and Shirt layout combined together
            HStack(spacing: 0) {
                // Left Jacket panel
                Rectangle()
                    .fill(.red)
                    .frame(width: 45, height: 200)
                
                // White T-Shirt (Center Layer)
                ZStack {
                    Rectangle()
                        .fill(.white)
                        .frame(width: 110, height: 200)
                    
                    // "I ❤️ SG" Shirt Graphics
                    VStack(spacing: 8) {
                        HStack(spacing: 6) {
                            Text("I")
                                .font(.system(size: 24, weight: .bold))
                                .foregroundStyle(.black)
                            
                            Image(systemName: "heart.fill")
                                .font(.system(size: 22))
                                .foregroundStyle(.red)
                        }
                        
                        Text("SG")
                            .font(.system(size: 28, weight: .black))
                            .foregroundStyle(.black)
                    }
                }
                
                // Right Jacket panel
                Rectangle()
                    .fill(.red)
                    .frame(width: 45, height: 200)
            }
            .frame(width: 200, height: 200)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    torso
}
