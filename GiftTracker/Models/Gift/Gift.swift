//
//  Gift.swift
//  GiftTracker
//
//  Created by Salman Burhan on 2/21/24.
//

import Foundation
import SwiftData

@Model
final class Gift {
  @Attribute var id: UUID
  @Attribute var name: String
  @Attribute var status: GiftStatus
  @Attribute var purchaseDate: Date?
  @Attribute var notes: String?

  init(
    id: UUID = UUID(),
    name: String,
    status: GiftStatus,
    purchaseDate: Date? = nil,
    notes: String? = nil
  ) {
    self.id = id
    self.name = name
    self.status = status
    self.purchaseDate = purchaseDate
    self.notes = notes
  }
}
