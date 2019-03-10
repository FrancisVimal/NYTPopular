//
//  ViewController.swift
//  NYTTopNews
//
//  Created by francisvimal on 09/03/19.
//  Copyright © 2019 francisvimal. All rights reserved.
//

import UIKit
import SDWebImage

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    
    
    @IBOutlet weak var popularTable: UITableView!
    
  //initialise viewModel For Popular News
    let popularNews = mostPopularVM()
  //create Results model variable array to store the serialized data
    var NYTResults = [Result]()
    
    var utils = Utils()

    override func viewDidLoad() {
        super.viewDidLoad()
       // get popular news
        popularNews.getPopular()
        
        //show the result
        self.popularNews.onGetPopularSuccess = {result in
          self.NYTResults = result.results
        self.popularTable.reloadData()
        }
        
        //show  error
        self.popularNews.onGetPopularError = {result in
            self.utils.showAlert(text: result, view: self)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.NYTResults.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        // naviagte to detail view on click on cell
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let landingVC = storyboard.instantiateViewController(withIdentifier: "NYDetailVC") as! NYDetailVC
        if let detailImage = self.NYTResults[indexPath.row].media[0].mediametadata[0].url
        {
            landingVC.imageURL = detailImage
        }
        if let descriptionText = self.NYTResults[indexPath.row].abstractField
        {
           landingVC.descriptionText = descriptionText
        }
        self.navigationController?.pushViewController(landingVC, animated: true)
        
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = popularTable.dequeueReusableCell(withIdentifier: "popularTableCell", for: indexPath) as! popularTableCell
        
        if let image = self.NYTResults[indexPath.row].media[0].mediametadata[0].url
        {
           cell.popImage.sd_setImage(with: URL(string: image))
        }
        if let titleData = self.NYTResults[indexPath.row].title
        {
            cell.title.text = titleData
        }
        if let bylineData = self.NYTResults[indexPath.row].byline
        {
            cell.byLine.text = bylineData
        }
        if let dateData = self.NYTResults[indexPath.row].publishedDate
        {
            cell.date.text =  dateData
        }

        return cell
    }

}

