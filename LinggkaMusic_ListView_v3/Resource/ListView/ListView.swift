//
//  ListView.swift
//  SQLITE_MUSIC
//
//  Created by Tuuu on 7/23/16.
//  Copyright © 2016 TuNguyen. All rights reserved.
//

import UIKit

class ListView: UITableView {
    
    var items = [Label]()
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        self.delegate = self
        self.dataSource = self
    }
    
}

extension ListView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 50
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
    }
    
}

extension ListView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.dequeueReusableCell(withIdentifier: "Cell")
        let currentItem = items[indexPath.row]
        cell?.textLabel?.text = currentItem.displayName
        cell?.textLabel?.textAlignment = .center
        return cell!
        
    }
    
}
