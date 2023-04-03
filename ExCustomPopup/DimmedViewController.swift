//
//  DimmedViewController.swift
//  ExCustomPopup
//
//  Created by 김종권 on 2023/02/26.
//

import UIKit
import SnapKit

class DimmedViewController: UIViewController {
    private let dimmedView = UIView()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        modalTransitionStyle = .coverVertical
        modalPresentationStyle = .overFullScreen
    }
    
    required public init?(coder: NSCoder) {
        fatalError()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let presentingViewController else { return }
        dimmedView.backgroundColor = .black
        dimmedView.alpha = 0
        presentingViewController.view.addSubview(dimmedView)
        
        dimmedView.snp.makeConstraints {
            $0.edges.equalToSuperview()
        }
        
        UIView.animate(withDuration: 0.3) {
            self.dimmedView.alpha = 0.25
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        UIView.animate(withDuration: 0.3) {
            self.dimmedView.alpha = 0
        } completion: { _ in
            self.dimmedView.removeFromSuperview()
        }
    }
}
