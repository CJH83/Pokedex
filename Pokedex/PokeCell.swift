//
//  PokeCell.swift
//  Pokedex
//
//  Created by Chris Harrison on 19/12/2015.
//  Copyright © 2015 Chris Harrison. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
  
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
        
    var pokemon: Pokemon!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
    }
    
    
        
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
            
        nameLabel.text = self.pokemon.name.capitalizedString
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
            
    }
    
    
    
}


