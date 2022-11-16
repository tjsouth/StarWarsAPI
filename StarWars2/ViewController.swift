//
//  ViewController.swift
//  StarWars2
//
//  Created by Tim South on 11/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var infoView: UITableView!
    
   
    var characters = [Character]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infoView.delegate = self
        infoView.dataSource = self
        
        getStarWarsAPI()
    }
    
    func getStarWarsAPI(){
        guard let url = URL(string: "https://swapi.py4e.com/api/people/") else{
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
      
        let task = URLSession.shared.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                
                
                
                let decoder = JSONDecoder()  //Docoder object
                
                do {
                    let parsedData = try? decoder.decode([Character].self, from: data) //Decoder object call
                    
                    print("Parsed Data:  \(parsedData)")
                    self.characters = parsedData!
                    parsedData!.forEach { i in
                        
                    }
                    
                    
               }catch {
                   print(error.localizedDescription)
                }
                
                
                
            }
        }
        task.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return characters.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = infoView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath) as! tableCell
        tableCell.nameLabel.text = characters[indexPath.row].name
        tableCell.eyeLabel.text = characters[indexPath.row].eyeColor
        tableCell.hairLabel.text = characters[indexPath.row].hairColor
        tableCell.homeWorld.text = characters[indexPath.row].homeworld
        return tableCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

