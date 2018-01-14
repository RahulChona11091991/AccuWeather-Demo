//
//  WFSearchLocationTableViewCell.swift
//  WeatherForcast
//
//  Created by Rahul Chona on 11/01/18.
//  Copyright © 2018 Rahul Chona. All rights reserved.
//

import UIKit

class WFSearchLocationTableViewCell: UITableViewCell {

    //MARK: - IBOUTLETS -
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var rankLabel: UILabel!
    @IBOutlet weak var administrativeAreaLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!
    @IBOutlet weak var countryLabel: UILabel!
    @IBOutlet weak var baseView: UIView!
    
    func configCell(autoCompleteBaseInstance : AutoCompleteBaseClass) {
        self.cityNameLabel?.text = "Localized Name: \(autoCompleteBaseInstance.localizedName ?? "")"
        self.typeLabel?.text = "Type: \(autoCompleteBaseInstance.type ?? "")"
        self.rankLabel?.text = "Rank: \(autoCompleteBaseInstance.rank ?? 0)"
        self.administrativeAreaLabel?.text = "Administrative Area: \(autoCompleteBaseInstance.administrativeArea?.localizedName ?? "")"
        self.versionLabel?.text = "Version: \(autoCompleteBaseInstance.version ?? 0)"
        self.countryLabel?.text = "Country: \(autoCompleteBaseInstance.country?.localizedName ?? "")"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
