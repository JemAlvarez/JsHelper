import SwiftUI

@available(iOS 15, *)
public struct EmojiPickerView: View {
    @Binding var emoji: String
    let hasHaptic: Bool
    @FocusState var isEmojiFieldFocused
    
    public init(emoji: Binding<String>, hasHaptic: Bool = true) {
        self._emoji = emoji
        self.hasHaptic = hasHaptic
    }
    
    public var body: some View {
        ZStack{
            Text(emoji)
                .onTapGesture {
                    if hasHaptic {
                        haptic()
                    }
                    isEmojiFieldFocused.toggle()
                }
            
            EmojiTextField(emoji: $emoji)
                .focused($isEmojiFieldFocused)
                .opacity(0)
                .frame(width: 0, height: 0)
        }
    }
}
