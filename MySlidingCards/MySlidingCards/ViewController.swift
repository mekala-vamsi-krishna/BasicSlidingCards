//
//  ViewController.swift
//  MySlidingCards
//
//  Created by Mekala Vamsi Krishna on 16/09/21.
//

import UIKit
import CardSlider

struct Item: CardSliderItem {
    var image: UIImage
    var rating: Int?
    var title: String
    var subtitle: String?
    var description: String?
}

class ViewController: UIViewController, CardSliderDataSource {
    
    

    @IBOutlet var myButton: UIButton!
    
    var data = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        data.append(Item(image: UIImage(named: "2.o")!,
                         rating: nil,
                         title: "2.o",
                         subtitle: "Shankar",
                         description: "you can add bookmarks in the app"))
        data.append(Item(image: UIImage(named: "baahubali")!,
                         rating: nil,
                         title: "Baahubali: The Beggining",
                         subtitle: "S.S. Rajamouli",
                         description: "you can add bookmarks in the app"))
        data.append(Item(image: UIImage(named: "tenet")!,
                         rating: nil,
                         title: "tenet",
                         subtitle: "Christopher Nolan",
                         description: "you can add bookmarks in the app"))
        data.append(Item(image: UIImage(named: "interstellar")!,
                         rating: nil,
                         title: "interstellar",
                         subtitle: "Christopher Nolan",
                         description: "you can add bookmarks in the app"))
        data.append(Item(image: UIImage(named: "baahubali 2")!,
                         rating: nil,
                         title: "Baahubali: The Conclusion",
                         subtitle: "S.S. Rajamouli",
                         description: "you can add bookmarks in the app"))
        
        
        myButton.backgroundColor = .link
        myButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func didTapButton() {
        guard let dataSource = self as? CardSliderDataSource else {
            return
        }
        
        let vc = CardSliderViewController.with(dataSource: self)
        vc.title = "Welcome!"
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    func item(for index: Int) -> CardSliderItem {
        return data[index]
    }
    
    func numberOfItems() -> Int {
        return data.count
    }

}

