//
//  CustomPopupViewController.swift
//  ExCustomPopup
//
//  Created by 김종권 on 2023/02/26.
//

import UIKit
import SnapKit

final class CustomPopupViewController: DimmedViewController {
    private let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    private let stackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.spacing = 12
        view.backgroundColor = .white
        return view
    }()
    private let label: UILabel = {
        let label = UILabel()
        return label
    }()
    private let closeButton: UIButton = {
        let button = UIButton()
        button.addTarget(self, action: #selector(close), for: .touchUpInside)
        return button
    }()
    
    var contentBackgroundColor: UIColor? {
        get { containerView.backgroundColor }
        set { containerView.backgroundColor = newValue }
    }
    var labelText: String? {
        get { label.text }
        set { label.text = newValue }
    }
    var labelColor: UIColor {
        get { label.textColor }
        set { label.textColor = newValue }
    }
    var buttonText: String? {
        get { closeButton.title(for: .normal) }
        set { closeButton.setTitle(newValue, for: .normal) }
    }
    var buttonNormalColor: UIColor? {
        get { closeButton.titleColor(for: .normal) }
        set { closeButton.setTitleColor(newValue, for: .normal) }
    }
    var buttonHighlightedColor: UIColor? {
        get { closeButton.titleColor(for: .highlighted) }
        set { closeButton.setTitleColor(newValue, for: .highlighted) }
    }
    
    override init() {
        super.init()
        setUp()
    }

    required init?(coder: NSCoder) {
        fatalError()
    }
    
    deinit {
        print("DEINIT")
    }

    private func setUp() {
        view.addSubview(containerView)
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(closeButton)
        
        containerView.snp.makeConstraints {
            $0.leading.trailing.equalToSuperview().inset(20)
            $0.centerY.equalToSuperview()
        }
        stackView.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.leading.top.greaterThanOrEqualToSuperview()
            $0.bottom.trailing.lessThanOrEqualToSuperview()
        }
    }
    
    @objc private func close() {
        dismiss(animated: true)
    }
}

