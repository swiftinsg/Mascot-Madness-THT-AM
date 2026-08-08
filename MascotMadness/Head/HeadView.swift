import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
           
            Circle()
                .frame(width: 200, height: 200)
                .foregroundStyle(.red)

            Text("⭐️  ⭐️")
                .font(.system(size: 55))
                .offset(y: -15)

            Text("🌙")
                .font(.system(size: 35))
                .offset(y: 55)
            Text("🇸🇬")
                .font(.system(size:40))

            
                
        }
    }
}


#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
