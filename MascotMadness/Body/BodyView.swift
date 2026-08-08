import SwiftUI

var torso: some BodyPart {
    Torso {
        ZStack {
            Image("Torso")
            
            HStack(spacing: 6) {
                Text("🇸🇬")
                Text("🇸🇬")
                Text("🇸🇬")
                Text("🇸🇬")
            }
            .font(.system(size: 14))
            .frame(width: 160)
            .offset(y: 40)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    torso
}
