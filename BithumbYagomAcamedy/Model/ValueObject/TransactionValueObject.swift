//
//  TransactionValueObject.swift
//  BithumbYagomAcamedy
//
//  Created by Jinyoung Kim on 2022/02/24.
//

import Foundation

struct TranscationValueObject: Decodable {
    let status: String
    let transaction: [TransactionData]
    
    enum CodingKeys: String, CodingKey {
        case status
        case transaction = "data"
    }
}

struct TransactionData: Decodable {
    let transactionDate: String
    let type: String
    let unitsTraded: String
    let price: String
    let total: String
}