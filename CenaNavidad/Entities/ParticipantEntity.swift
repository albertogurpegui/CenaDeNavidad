//
//  ParticipantEntitie.swift
//  CenaNavidad
//
//  Created by Alberto gurpegui on 3/1/19.
//  Copyright © 2019 Alberto gurpegui. All rights reserved.
//

import UIKit
import RealmSwift

class ParticipantEntity: Object {
    
    @objc dynamic var id = ""
    @objc dynamic var name = ""
    @objc dynamic var paid = false
    @objc dynamic var creationDate = Date()
    
    
    override static func primaryKey() -> String?{
        return "id"
    }
    
    convenience init(participant: Participant) {
        self.init()
        self.id = participant.id
        self.name = participant.name
        self.paid = participant.paid
        self.creationDate = participant.creationDate
    }
    
    func participantModel() -> Participant {
        let model = Participant()
        model.id = id
        model.name = name
        model.paid = paid
        model.creationDate = creationDate
        return model
    }

}
