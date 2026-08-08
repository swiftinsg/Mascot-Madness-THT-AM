import SwiftUI

var head: some BodyPart {
    Head {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color(red: 0.92, green: 0.16, blue: 0.15),
                                 Color(red: 0.78, green: 0.05, blue: 0.08)],
                        startPoint: .top,
                        endPoint: .center
                    )
                )

            Circle()
                .fill(
                    LinearGradient(
                        colors: [Color(white: 0.98),
                                 Color(white: 0.88)],
                        startPoint: .center,
                        endPoint: .bottom
                    )
                )
                .frame(height: 100)
                .offset(y: 50)

            Crescent()
                .fill(.white, style: FillStyle(eoFill: true))
                .frame(width: 34, height: 34)
                .offset(y: -58)

            HStack(spacing: 14) {
                ForEach(0..<5) { index in
                    Star(size: 9)
                        .offset(y: index == 2 ? 0 : 7)
                }
            }
            .offset(y: -50)

            HStack(spacing: 46) {
                Eye()
                Eye()
            }
            .offset(y: 40)

            HStack(spacing: 118) {
                Blush()
                Blush()
            }
            .offset(y: 82)

            Smile()
                .stroke(.black, lineWidth: 4)
                .frame(width: 44, height: 24)
                .offset(y: 90)

            Text("SG61")
                .font(.system(size: 22, weight: .bold))
                .foregroundStyle(.white)
                .shadow(color: .black.opacity(0.3), radius: 1)
                .offset(y: -90)
        }
        .frame(width: 200, height: 200)
    }
}

struct Eye: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.white)
                .frame(width: 36, height: 36)
                .overlay(Circle().stroke(.black.opacity(0.15), lineWidth: 2))
            Circle()
                .fill(.black)
                .frame(width: 16, height: 16)
            Circle()
                .fill(.white)
                .frame(width: 6, height: 6)
                .offset(x: 5, y: -5)
        }
    }
}

struct Blush: View {
    var body: some View {
        Circle()
            .fill(.pink.opacity(0.5))
            .frame(width: 24, height: 24)
    }
}

struct Crescent: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false)
        let overlap = CGPoint(x: rect.midX + rect.width * 0.3,
                              y: rect.midY - rect.height * 0.08)
        path.addArc(center: overlap,
                    radius: rect.width * 0.4,
                    startAngle: .degrees(0),
                    endAngle: .degrees(360),
                    clockwise: false)
        return path
    }
}

struct Star: View {
    var size: CGFloat

    var body: some View {
        Image(systemName: "star.fill")
            .resizable()
            .scaledToFit()
            .frame(width: size, height: size)
            .foregroundStyle(.white)
    }
}

struct Smile: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY),
                    radius: rect.width / 2,
                    startAngle: .degrees(15),
                    endAngle: .degrees(165),
                    clockwise: false)
        return path
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 200)) {
    head
}
