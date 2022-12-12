//
//  ViewController.swift
//  Project 7
//
//  Created by Ali Görkem Aksöz on 5.12.2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var petitions = [Petition]()
    var filteredPetitions = [Petition]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Petitions"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .bookmarks, target: self, action: #selector(promptForCredit))
        
        let urlString:String
        
        if navigationController?.tabBarItem.tag == 0 {
            urlString  = "https://hackingwithswift.com/samples/petitions-1.json"
        } else {
            urlString = "https://hackingwithswift.com/samples/petitions-2.json"
        }
        
        DispatchQueue.global(qos: .userInitiated).async {
            [weak self] in
            if let url = URL(string: urlString) {
                if let data = try? Data(contentsOf: url){
                    self?.parse(json: data)
                    return
                }
            }
            DispatchQueue.main.async {
                [weak self] in
                self?.showError()
            }
        }
    }
    
    func promptForFilter() {
        let ac = UIAlertController(title: "Filter", message: nil, preferredStyle: .actionSheet)
        ac.addTextField()
        
        let filterAction = UIAlertAction(title: "Typte to word you want to filter", style: .default) {
            [weak self, weak ac] action in
            guard let keyword = ac?.textFields?[0].text else { return }
            self?.filter(keyword)
        }
    }
    
    func filter(_ keyword: String) {
        
    }
    
    @objc func promptForCredit() {
        let ac = UIAlertController(title: "Credit by", message: "We The People API of the Whitehouse", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func showError() {
        let ac = UIAlertController(title: "Loading error", message: "There was a problem loading the fee; check your connection and try again", preferredStyle: .alert)
        ac.addAction(UIAlertAction(title: "OK", style: .default))
        present(ac, animated: true)
    }
    
    func parse(json: Data) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json) {
            petitions = jsonPetitions.results
            DispatchQueue.main.async {
                [weak self] in
                self?.tableView.reloadData()
            }

        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let petition = petitions[indexPath.row]
        cell.textLabel?.text = petition.title
        cell.detailTextLabel?.text = petition.body
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController()
        vc.detailItem = petitions[indexPath.row]
        navigationController?.pushViewController(vc, animated: true)
    }
}

