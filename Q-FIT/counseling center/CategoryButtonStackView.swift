import UIKit

class CategoryButtonStackView: UIStackView {
    // 필요한 초기화 및 스타일 설정을 여기에 추가할 수 있습니다.
        override init(frame: CGRect) {
            super.init(frame: frame)
            setupStackView()
        }
        
        required init(coder: NSCoder) {
            super.init(coder: coder)
            setupStackView()
        }
        
        private func setupStackView() {
            self.axis = .horizontal // 수평으로 버튼을 배치하도록 설정
            self.alignment = .fill
            self.distribution = .fill
            self.spacing = 10 // 버튼 사이의 간격 설정
        }
        
        // 버튼을 추가하는 메서드
        func addButton(withTitle title: String) {
            let button = UIButton()
            button.setTitle(title, for: .normal)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            button.titleLabel?.adjustsFontSizeToFitWidth = true
            button.titleLabel?.minimumScaleFactor = 0.5 // 텍스트 크기 최소 축소 비율 (옵션)
            button.contentEdgeInsets = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
            button.backgroundColor = UIColor.blue
            button.setTitleColor(UIColor.white, for: .normal)
            
            // 버튼의 높이를 고정
            button.heightAnchor.constraint(equalToConstant: 40).isActive = true
            
            addArrangedSubview(button)
        }
    func addButtons(withTitles titles: [String]) {
        for title in titles {
            addButton(withTitle: title)
        }
    }

}
