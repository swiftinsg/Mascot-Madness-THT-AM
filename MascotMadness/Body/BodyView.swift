import SwiftUI

var torso: some BodyPart {
    Torso {
        ZStack {
            Image("Torso")
                
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    torso
}
