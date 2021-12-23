//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by Prosvetova Lina on 23.12.2021.
//

import UIKit

enum ItemInfoType {
  case repos, gists, followers, following
}


class GFItemInfoView: UIView {

  let symbolImageView = UIImageView()
    let tittleLabel = GFTitleLabel(textAlignment: .left, fontSize: 14)
    let countLabel = GFTitleLabel(textAlignment: .center, fontSize: 14)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
       addSubview(symbolImageView)
        addSubview(tittleLabel)
        addSubview(countLabel)
        symbolImageView.translatesAutoresizingMaskIntoConstraints = false
        symbolImageView.contentMode = .scaleAspectFill
        symbolImageView.tintColor = .label
        
        NSLayoutConstraint.activate([
            symbolImageView.topAnchor.constraint(equalTo: self.topAnchor),
            symbolImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            symbolImageView.widthAnchor.constraint(equalToConstant: 20),
            symbolImageView.heightAnchor.constraint(equalToConstant: 20),
            
            tittleLabel.centerYAnchor.constraint(equalTo: symbolImageView.centerYAnchor),
            tittleLabel.leadingAnchor.constraint(equalTo: symbolImageView.trailingAnchor, constant: 12),
            tittleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            tittleLabel.heightAnchor.constraint(equalToConstant: 18),
            
            countLabel.topAnchor.constraint(equalTo: symbolImageView.bottomAnchor, constant: 4),
            countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            countLabel.heightAnchor.constraint(equalToConstant: 18)
            
        ])
    }
    
    
    func set(itemInfoType: ItemInfoType, withCount count: Int) {
        switch itemInfoType {
        case .repos:
            symbolImageView.image = UIImage(systemName: SFSymbols.repos)
            tittleLabel.text = "Public Repos"
        case .gists:
            symbolImageView.image = UIImage(systemName: SFSymbols.gists)
            tittleLabel.text = "Public Gists"
        case .followers:
            symbolImageView.image = UIImage(systemName: SFSymbols.followers)
            tittleLabel.text = "Followers"
        case .following:
            symbolImageView.image = UIImage(systemName: SFSymbols.following)
            tittleLabel.text = "Following"
        }
        
        countLabel.text = String(count)
    }

}
