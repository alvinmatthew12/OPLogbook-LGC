//
//  CharacterDetailImageCell.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 17/07/22.
//

import UIKit

internal final class CharacterDetailImageCell: ListViewCell {
    internal static let identifier = String(describing: CharacterDetailImageCell.self)
    internal static let reusableCell = ListViewReuseableCell(
        CharacterDetailImageCell.self,
        identifier: CharacterDetailImageCell.identifier
    )
    
    private let imageView = OPImageView()
    
    override internal init(frame: CGRect) {
        super.init(frame: frame)
        
        imageView.contentMode = .scaleAspectFill
        imageView.fixInView(self)
        contentView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
    
    internal func setup(url: URL?, backgroundColor: UIColor) {
        imageView.backgroundColor = backgroundColor
        let width: CGFloat = UIScreen.main.bounds.size.width
        imageView.loadAndCrop(url: url, targetSize: CGSize(width: width, height: 250))
    }

    required internal init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
