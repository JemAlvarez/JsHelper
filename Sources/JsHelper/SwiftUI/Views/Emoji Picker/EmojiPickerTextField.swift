import SwiftUI

@available(iOS 13, *)
struct EmojiTextField: UIViewRepresentable {
    @Binding var emoji: String
    var selectedEmoji: String {
        didSet {
            if let lastChar = selectedEmoji.last {
                if String(lastChar).hasEmoji() {
                    emoji = String(lastChar)
                }
            }
        }
    }
    var placeholder: String = ""
    
    init(emoji: Binding<String>) {
        self._emoji = emoji
        self.selectedEmoji = emoji.wrappedValue
    }
    
    func makeUIView(context: Context) -> UIEmojiTextField {
        let emojiTextField = UIEmojiTextField()
        emojiTextField.placeholder = placeholder
        emojiTextField.text = emoji
        emojiTextField.delegate = context.coordinator
        return emojiTextField
    }
    
    func updateUIView(_ uiView: UIEmojiTextField, context: Context) {
        uiView.text = selectedEmoji
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(parent: self)
    }
    
    class Coordinator: NSObject, UITextFieldDelegate {
        var parent: EmojiTextField
        
        init(parent: EmojiTextField) {
            self.parent = parent
        }
        
        func textFieldDidChangeSelection(_ textField: UITextField) {
            DispatchQueue.main.async { [weak self] in
                self?.parent.selectedEmoji = textField.text ?? ""
            }
        }
    }
}

class UIEmojiTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setEmoji() {
        _ = self.textInputMode
    }
    
    override var textInputContextIdentifier: String? {
           return ""
    }
    
    override var textInputMode: UITextInputMode? {
        for mode in UITextInputMode.activeInputModes {
            if mode.primaryLanguage == "emoji" {
                self.keyboardType = .default // do not remove this
                return mode
            }
        }
        return nil
    }
}
