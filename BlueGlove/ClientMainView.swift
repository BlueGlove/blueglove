//
//  ClientMainView.swift
//  BlueGlove
//
//  Created by Phillip Pang on 11/15/16.
//  Copyright © 2016 Phillip Pang. All rights reserved.
//

import UIKit

class ClientMainView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var QRImageView: UIImageView!

    @IBOutlet weak var beaconUUIDLabel: UILabel!
    @IBOutlet weak var beaconMajorLabel: UILabel!
    @IBOutlet weak var beaconMinorLabel: UILabel!
    
    
    var QRImage: UIImage? {
            get { return QRImageView.image }
            set { QRImageView.image = newValue }
    }
    var mainBeacon: BluBeaconInfo? {
        get { return self.mainBeacon }
        set {
            beaconUUIDLabel.text = newValue?.proximityUUID.description
            beaconMajorLabel.text = newValue?.major?.description(withLocale: nil)
            beaconMinorLabel.text = newValue?.minor?.description(withLocale: nil)
        }
    }

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initSubviews()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
    }
    
    func initSubviews() {
        // standard initialization logic
        let nib = UINib(nibName: "ClientMainView", bundle: nil)
        nib.instantiate(withOwner: self, options: nil)
        contentView.frame = bounds
        addSubview(contentView)
            
            // custom initialization logic

    }

}
