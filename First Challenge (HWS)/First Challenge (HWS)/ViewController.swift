//
//  ViewController.swift
//  First Challenge (HWS)
//
//  Created by Ali Görkem Aksöz on 26.11.2022.
//

import UIKit

class ListViewController: UITableViewController {
    
    var pictures =  [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Flags"
        
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("@3x.png"){
                pictures.append(item)
            }
        }
        
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        pictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Picture", for: indexPath)
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController{
           vc.selectedImage = pictures[indexPath.row]
           navigationController?.pushViewController(vc, animated: true)
        }
    }
    

}

