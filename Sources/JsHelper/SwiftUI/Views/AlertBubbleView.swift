//

import SwiftUI

//MARK: - iOS 15
@available(iOS 15, *)
public struct AlertBubbleView<B: ShapeStyle>: View {
    @Binding var showing: Bool
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey?
    let systemImage: String?
    let background: B
    let animation: Animation
    let deadline: DispatchTime

    /// - Parameters showing: State for showing the bubble
    /// - Parameters title: Localized string for the title
    /// - Parameters subtitle: Optional localized string for the subtitle
    /// - Parameters systemImage: Optional SF Symbol
    /// - Parameters animation: Animation, default .spring()
    /// - Parameters deadline: Time to display the alert, default 3 seconds
    public init(
        showing: Binding<Bool>,
        title: LocalizedStringKey,
        subtitle: LocalizedStringKey?,
        systemImage: String?,
        background: B,
        animation: Animation = .spring(),
        deadline: DispatchTime = .now() + 3
    ) {
        self._showing = showing
        self.title = title
        self.subtitle = subtitle
        self.systemImage = systemImage
        self.background = background
        self.animation = animation
        self.deadline = deadline
    }
    
    public var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                VStack {
                    Text(title)
                        .font(.headline)
                        .lineLimit(1)
                    
                    if let subtitle = subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                            .opacity(.opacityHigh)
                            .lineLimit(1)
                    }
                }
                .padding(.vertical, 7)
                .padding(.horizontal, 40)
                .background(background)
                .clipShape(RoundedRectangle(cornerRadius: 99, style: .continuous))
                
                if let systemImage = systemImage {
                    Image(systemName: systemImage)
                        .imageScale(.large)
                        .padding(10)
                }
            }
            .padding()
            .offset(y: showing ? 0 : -200)
            .animation(animation, value: showing)
            
            Spacer()
        }
        .onChange(of: showing) { _ in
            if showing {
                DispatchQueue.main.asyncAfter(deadline: deadline) {
                    self.showing = false
                }
            }
        }
    }
}

//MARK: - iOS 14
@available(iOS 14, *)
public struct AlertBubbleView14: View {
    @Binding var showing: Bool
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey?
    let systemImage: String?
    let background: Color
    let animation: Animation
    let deadline: DispatchTime

    /// - Parameters showing: State for showing the bubble
    /// - Parameters title: Localized string for the title
    /// - Parameters subtitle: Optional localized string for the subtitle
    /// - Parameters systemImage: Optional SF Symbol
    /// - Parameters animation: Animation, default .spring()
    /// - Parameters deadline: Time to display the alert, default 3 seconds
    public init(
        showing: Binding<Bool>,
        title: LocalizedStringKey,
        subtitle: LocalizedStringKey?,
        systemImage: String?,
        background: Color,
        animation: Animation = .spring(),
        deadline: DispatchTime = .now() + 3
    ) {
        self._showing = showing
        self.title = title
        self.subtitle = subtitle
        self.systemImage = systemImage
        self.background = background
        self.animation = animation
        self.deadline = deadline
    }
    
    public var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                VStack {
                    Text(title)
                        .font(.headline)
                        .lineLimit(1)
                    
                    if let subtitle = subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                            .opacity(.opacityHigh)
                            .lineLimit(1)
                    }
                }
                .padding(.vertical, 7)
                .padding(.horizontal, 40)
                .background(background)
                .clipShape(RoundedRectangle(cornerRadius: 99, style: .continuous))
                
                if let systemImage = systemImage {
                    Image(systemName: systemImage)
                        .imageScale(.large)
                        .padding(10)
                }
            }
            .padding()
            .offset(y: showing ? 0 : -200)
            .animation(animation, value: showing)
            
            Spacer()
        }
        .onChange(of: showing) { _ in
            if showing {
                DispatchQueue.main.asyncAfter(deadline: deadline) {
                    self.showing = false
                }
            }
        }
    }
}


//MARK: - iOS 13
@available(iOS 13, *)
public struct AlertBubbleView13: View {
    @Binding var showing: Bool
    let title: LocalizedStringKey
    let subtitle: LocalizedStringKey?
    let systemImage: String?
    let backgroundColor: Color
    let animation: Animation

    /// - Parameters showing: State for showing the bubble
    /// - Parameters title: Localized string for the title
    /// - Parameters subtitle: Optional localized string for the subtitle
    /// - Parameters systemImage: Optional SF Symbol
    /// - Parameters animation: Animation, default .spring()
    /// - Parameters deadline: Time to display the alert, default 3 seconds
    public init(
        showing: Binding<Bool>,
        title: LocalizedStringKey,
        subtitle: LocalizedStringKey?,
        systemImage: String?,
        backgroundColor: Color,
        animation: Animation = .spring()
    ) {
        self._showing = showing
        self.title = title
        self.subtitle = subtitle
        self.systemImage = systemImage
        self.backgroundColor = backgroundColor
        self.animation = animation
    }
    
    public var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                VStack {
                    Text(title)
                        .font(.headline)
                        .lineLimit(1)
                    
                    if let subtitle = subtitle {
                        Text(subtitle)
                            .font(.subheadline)
                            .opacity(.opacityHigh)
                            .lineLimit(1)
                    }
                }
                .padding(.vertical, 7)
                .padding(.horizontal, 40)
                .background(backgroundColor)
                .clipShape(RoundedRectangle(cornerRadius: 99, style: .continuous))
                
                if let systemImage = systemImage {
                    Image(systemName: systemImage)
                        .imageScale(.large)
                        .padding(10)
                }
            }
            .padding()
            .offset(y: showing ? 0 : -200)
            .animation(animation, value: showing)
            
            Spacer()
        }
    }
}
