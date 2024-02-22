//
//  Recipient.swift
//  GiftTracker
//
//  Created by Salman Burhan on 2/21/24.
//

import Foundation
import SwiftData

final class Recipient {
  @Attribute var id: UUID
  @Attribute var firstName: String
  @Attribute var lastName: String
  @Attribute var relationship: String
  
  @Relationship(deleteRule: .cascade)
  var gifts: [Gift]
  
  init(
    id: UUID = UUID(),
    firstName: String,
    lastName: String,
    relationship: String,
    gifts: [Gift]
  ) {
    self.id = id
    self.firstName = firstName
    self.lastName = lastName
    self.relationship = relationship
    self.gifts = gifts
  }
}
