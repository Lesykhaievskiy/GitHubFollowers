//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Олексій Гаєвський on 06.03.2024.
//

import UIKit


class GFRepoItemVC: GFItemInfoVC {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureItems()
    }
    
    
    private func configureItems() {
        itemInfoOne.set(itemInfoType: .repos, withCount: user.publicRepos)
        itemInfoTwo.set(itemInfoType: .gists, withCount: user.publicGists)
        
        actionButton.set(backgroundColor: .systemPurple, title: "GitHub Profile")
    }
    
    
    override func actionButtonTapped() {
        delegate.didTapitHubProfile(for: user)
    }
}
