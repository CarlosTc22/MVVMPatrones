//
//  HomeCellTableViewCell.swift
//  AppPatronesCarlosTorrejon
//
//  Created by Juan Carlos Torrejón Cañedo on 7/10/23.
//

import UIKit

class HomeCellTableViewCell: UITableViewCell {

    
    @IBOutlet weak var viewCellHome: UIView!
    @IBOutlet weak var nameCellHome: UILabel!
    @IBOutlet weak var imageCellHome: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        viewCellHome.layer.cornerRadius = 4.0
    }

    override func prepareForReuse() {
        nameCellHome.text = nil
        imageCellHome.image = nil
    }
    
    
    func updateViews(data: AppleModel?) {
        update(name: data?.name)
        update(image: data?.image)
    }
    
    private func update(name: String?) {
        nameCellHome.text = name ?? ""
    }
    
    private func update(image: String?) {
        imageCellHome.image = UIImage(named: image ?? "")
    }
}
