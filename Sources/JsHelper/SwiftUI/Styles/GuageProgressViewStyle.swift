import SwiftUI

@available(iOS 13, *)
public struct GaugeProgressViewStyle: ProgressViewStyle {
    let strokeColor: Color
    let strokeWidth: Int
    let size: (width: CGFloat, height: CGFloat)
    let backgroundColor: Color?
    
    public init(
        strokeColor: Color,
        strokeWidth: Int,
        size: (width: CGFloat, height: CGFloat),
        backgroundColor: Color? = nil
    ) {
        self.strokeColor = strokeColor
        self.strokeWidth = strokeWidth
        self.size = size
        self.backgroundColor = backgroundColor
    }

    public func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0

        return ZStack {
            if let backgroundColor = backgroundColor {
                Circle()
                    .stroke(backgroundColor, style: StrokeStyle(lineWidth: CGFloat(strokeWidth), lineCap: .round))
                    .background(Circle().fill(backgroundColor))
            } else {
                Circle()
                    .stroke(strokeColor.opacity(0.3), style: StrokeStyle(lineWidth: CGFloat(strokeWidth), lineCap: .round))
            }
            
            Circle()
                .trim(from: 0, to: CGFloat(fractionCompleted))
                .stroke(strokeColor, style: StrokeStyle(lineWidth: CGFloat(strokeWidth), lineCap: .round))
                .rotationEffect(.degrees(-90))
        }
        .frame(width: size.width, height: size.height)
    }
}
