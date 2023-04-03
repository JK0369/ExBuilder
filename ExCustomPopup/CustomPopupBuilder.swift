//
//  CustomPopupBuilder.swift
//  ExCustomPopup
//
//  Created by 김종권 on 2023/04/03.
//

import UIKit

class CustomPopupBuilder {
    private var contentBackgroundColor = UIColor.white
    private var labelText = "iOS 앱 개발 알아가기 jake"
    private var labelColor = UIColor.black
    private var closeButtonText = "닫기"
    private var closeButtonNormalColor = UIColor.systemBlue
    private var closeButtonHighlightedColor = UIColor.blue
    
    func set(contentBackgroundColor: UIColor) -> Self {
        self.contentBackgroundColor = contentBackgroundColor
        return self
    }
    
    func set(labelText: String) -> Self {
        self.labelText = labelText
        return self
    }
    
    func set(labelColor: UIColor) -> Self {
        self.labelColor = labelColor
        return self
    }
    
    func set(buttonText: String) -> Self {
        self.closeButtonText = buttonText
        return self
    }
    
    func set(buttonNormalColor: UIColor) -> Self {
        self.closeButtonNormalColor = buttonNormalColor
        return self
    }
    
    func set(buttonHighlightedColor: UIColor) -> Self {
        self.closeButtonHighlightedColor = buttonHighlightedColor
        return self
    }
    
    func build() -> CustomPopupViewController {
        let vc = CustomPopupViewController()
        vc.contentBackgroundColor = contentBackgroundColor
        vc.labelText = labelText
        vc.labelColor = labelColor
        vc.buttonText = closeButtonText
        vc.buttonNormalColor = closeButtonNormalColor
        vc.buttonHighlightedColor = closeButtonHighlightedColor
        return vc
    }
}
