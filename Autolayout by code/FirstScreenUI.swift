import UIKit

final class FirstScreenUI: UIView {
    
    
    private let simpsonLogo: UIImageView = {
        let simpsonImage = UIImageView()
        simpsonImage.contentMode = .scaleAspectFit // change the image default ratio
        simpsonImage.image = UIImage(named: "The-Simpsons") // add the image itself png or jpg
        simpsonImage.translatesAutoresizingMaskIntoConstraints = false
        return simpsonImage
    }()
    
    
    
    let mainTitle: UILabel = {
        let titleText = UILabel()
        titleText.numberOfLines = 0
        titleText.textAlignment = .center
        titleText.text = "By Matt Groening and Sam Simon"
        titleText.font = UIFont(name: "Helvetica", size: 16)
        titleText.textColor = .white
        titleText.translatesAutoresizingMaskIntoConstraints = false
        return titleText
    }()
    
    
    
    private var customButton: UIButton = {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.title = "Get a Quote"

        
        let button = UIButton(type:  .system)
        button.addTarget(self, action: #selector(showMessge), for: .touchUpInside)
        button.configuration = buttonConfiguration
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
       
        
    }()
    
    
    
    // the instance of the view
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        bindingView()
        constraintsConfiguration()
    }
    
    
    private func bindingView() {
        [ simpsonLogo, mainTitle, customButton ].forEach(addSubview)
    }
    
    
    private func constraintsConfiguration(){
        NSLayoutConstraint.activate([
            simpsonLogo.centerXAnchor.constraint(equalTo: centerXAnchor),  // centrado en la vista
            simpsonLogo.topAnchor.constraint(equalTo: layoutMarginsGuide.topAnchor),
            simpsonLogo.heightAnchor.constraint(equalToConstant: 300),
            simpsonLogo.widthAnchor.constraint(equalToConstant: 300),
            
            customButton.centerXAnchor.constraint(equalTo: centerXAnchor), // centrado en la vista
            customButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            customButton.heightAnchor.constraint(equalToConstant: 40),
            customButton.widthAnchor.constraint(equalToConstant: 200),
            
            
            mainTitle.bottomAnchor.constraint(equalTo: customButton.topAnchor, constant:  -42),
            mainTitle.leadingAnchor.constraint(equalTo: leadingAnchor),  // like the max-width of css
            mainTitle.trailingAnchor.constraint(equalTo: trailingAnchor), // like the max-width of css
            mainTitle.centerXAnchor.constraint(equalTo: centerXAnchor), // centrado en la vista
            
        ])
    }
    
    
    
    @objc func showMessge() {
        print("Skip onboarding")
    }
    
}
