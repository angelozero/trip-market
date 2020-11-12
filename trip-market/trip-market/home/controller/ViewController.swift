//
//  ViewController.swift
//  trip-market
//
//  Created by Angelo Ferreira on 11/11/20.
//  Copyright © 2020 Angelo Ferreira. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    @IBOutlet weak var tripTable: UITableView!
    
    @IBOutlet weak var viewPlanets: UIView!
    
    @IBOutlet weak var viewPacks: UIView!
    
    let tripList: Array<Trip> = TripDAO().getAllTrips()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tripTable.delegate = self
        self.tripTable.dataSource = self
        self.viewPacks.layer.cornerRadius = 10
        self.viewPlanets.layer.cornerRadius = 10
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tripList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TripTableViewCell
        
        let tripIndex = tripList[indexPath.row]
        
        cell.labelTitle.text = tripIndex.title
        cell.labelDays.text = "\(tripIndex.days) days"
        cell.labelPrice.text = "$ \(tripIndex.price)"
        cell.imagePlanets.image = UIImage(named: tripIndex.imagePath)
        
        cell.imagePlanets.layer.cornerRadius = 10
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
}

