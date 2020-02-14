//
//  ViewController.swift
//  GoogleMapTutorial
//
//  Created by Felix 12 on 08/01/20.
//  Copyright © 2020 Felix-IT. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController, GMSAutocompleteResultsViewController {

    @IBOutlet weak var mapView: MKMapView!
    var resultsViewController:  GMSAutocompleteResultsViewController?
    var searchController: UISearchController?
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
    }
    func setupSearchController() {
        //resultsViewController = GMSAutocompleteResultsViewController()
        searchController = UISearchController(searchResultsController: resultsViewController)
        searchController?.searchResultsUpdater = resultsViewController

        let searchBar = searchController!.searchBar
        searchBar.sizeToFit()
        searchBar.placeholder = "Search for places"
        navigationItem.titleView = searchController?.searchBar
        definesPresentationContext = true
        searchController?.hidesNavigationBarDuringPresentation = false
    }
}
extension ViewController: GMSAutocompleteResultsViewControllerDelegate {
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didAutocompleteWith place: GMSPlace) {
        
    }
    
    func resultsController(_ resultsController: GMSAutocompleteResultsViewController, didFailAutocompleteWithError error: Error) {
        
    }
}
