//
//  CourseDetailsViewController.swift
//  Pursuit You
//
//  Created by Apple SSD2 on 04/10/19.
//  Copyright © 2019 Apple SSD2. All rights reserved.
//

import UIKit

class CourseDetailsViewController: UIViewController {

    @IBOutlet weak var courseDetails_Tblview: UITableView!
    
    @IBOutlet weak var courseDetails_heightConstrains: NSLayoutConstraint!
//    let section = ["lession 1", "Lession 2", "Lession 3"]
//
//    let items = [["System Introdution", "System Introdution", "Assigment","Assigment"],["System Introdution", "System Introdution", "Assigment","Assigment"],["System Introdution", "System Introdution", "Assigment","Assigment"]]
    
    let sectionTitles = ["lession 1", "Lession 2", "Lession 3"]
    
    let foodItems = [["System Introdution", "System Introdution", "Assigment","Assigment"],["System Introdution", "System Introdution", "Assigment","Assigment"],["System Introdution", "System Introdution", "Assigment","Assigment"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseDetails_Tblview.tableFooterView = UIView()

        let nibHeaderName = UINib(nibName: "CourseProgressHeaderView", bundle: nil)
        courseDetails_Tblview.register(nibHeaderName, forHeaderFooterViewReuseIdentifier: "CourseProgressHeaderView")
        
        let nibFooterName = UINib(nibName: "CourseProgressFooterView", bundle: nil)
        courseDetails_Tblview.register(nibFooterName, forHeaderFooterViewReuseIdentifier: "CourseProgressFooterView")
        
        courseDetails_Tblview.register(UINib(nibName: "CourseProgressTableViewCell", bundle: nil), forCellReuseIdentifier: "CourseProgressTableViewCell")
        courseDetails_Tblview.reloadData()
         //self.courseDetails_heightConstrains.constant = 30*4+30
       // viewHeight_constraints.constant = 500
        
    }
    
    override func viewDidLayoutSubviews() {
        courseDetails_Tblview.frame.size = courseDetails_Tblview.contentSize
        courseDetails_heightConstrains.constant = 850
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = true
    }
    
    @IBAction func actionBackBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension CourseDetailsViewController : UITableViewDataSource{
    
    //    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    //
    //        let headerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CourseProgressHeaderView") as! CourseProgressHeaderView
    //
    //        return headerView
    //    }
    //
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        let footerView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "CourseProgressFooterView") as! CourseProgressFooterView
//        
//        return footerView
//    }
//    
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return 150
//    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return sectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return foodItems[section].count
    }
    
     func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return sectionTitles[section]
    }
    
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//
//        return self.section[section]
//
//    }
    
//    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//        return self.section.count
//
//    }
    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//
//        return self.items[section].count
//
//    }
//
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CourseProgressTableViewCell") as! CourseProgressTableViewCell
        //cell.lession_nameLbl.text = self.items[indexPath.section][indexPath.row]
        cell.lession_nameLbl?.text = foodItems[indexPath.section][indexPath.row]

        
        return cell
    }
}

extension CourseDetailsViewController : UITableViewDelegate{
    
}
