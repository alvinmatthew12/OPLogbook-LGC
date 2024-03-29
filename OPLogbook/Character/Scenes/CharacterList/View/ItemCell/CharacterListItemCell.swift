//
//  CharacterListItemCell.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 17/07/22.
//

import UIKit

internal final class CharacterListItemCell: ListViewCell {
    internal static let nib = UINib(nibName: "CharacterListItemCell", bundle: nil)
    internal static let identifier = String(describing: CharacterListItemCell.self)
    internal static var reusableCell = ListViewReuseableCell(
        UINib(nibName: CharacterListItemCell.identifier, bundle: nil),
        identifier: CharacterListItemCell.identifier
    )
    
    @IBOutlet private weak var containerView: UIView!
    @IBOutlet internal weak var imageView: OPImageView!
    @IBOutlet private weak var label: UILabel!
    
    override internal func awakeFromNib() {
        super.awakeFromNib()
        
        let width: CGFloat = UIScreen.main.bounds.size.width
        let padding: CGFloat = 30 + 12.5 // LR padding + interitem spacing
        let itemWidth: CGFloat = (width / 2) - padding
        let itemHeight: CGFloat = itemWidth + 35
        containerView.heightAnchor.constraint(equalToConstant: itemHeight).isActive = true
        
        containerView.layer.cornerRadius = 20
        imageView.imageShape = .rect(cornerRadius: 15)
        imageView.contentMode = .center
    }
    
    internal func setupData(_ data: Character) {
        imageView.backgroundColor = data.color
        imageView.loadAndCrop(url: data.imageURL, targetSize: CGSize(width: 375, height: 250))
        label.text = data.nickname
    }
}
