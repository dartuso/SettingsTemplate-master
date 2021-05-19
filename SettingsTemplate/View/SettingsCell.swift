//
//  SettingsCell.swift
//  SettingsTemplate
//


import UIKit

class SettingsCell: UITableViewCell {
    
    var sectionType: HasSlider?{
        didSet{
            guard let sectionType = sectionType else {return }
            textLabel?.text = sectionType.description
            sliderControl.isHidden = !sectionType.containsSlider
            
        }
    }
    
    
    // MARK: - Properties
    lazy var sliderControl: UISlider = {
        let arrowImg = UISlider()
        arrowImg.setValue(0, animated: true)
        arrowImg.minimumValue = 0
        arrowImg.maximumValue = 100
        arrowImg.tintColor = UIColor(red: 55/255, green: 120/225, blue: 250/255, alpha: 1)
        arrowImg.translatesAutoresizingMaskIntoConstraints = false
        arrowImg.addTarget(self, action: #selector(handleChange), for: .valueChanged)
        return arrowImg
    }()
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(sliderControl)
        sliderControl.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        sliderControl.rightAnchor.constraint(equalTo: rightAnchor, constant: -100).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func handleChange(sender: UISlider){
        print(sender.value)
    }
}
