import SwiftUI

var legs: some BodyPart {
    Legs {
        VStack(spacing: 0) {
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(.yellow)

            HStack(spacing: 0) {
                Image("leftLeg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 200)

                Image("rightLeg")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 200)
            }
            .frame(width: 200)
        }
    }
}

#Preview(traits: .fixedLayout(width: 300, height: 400)) {
    legs
}
