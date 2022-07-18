//
//  Character.swift
//  OPLogbook
//
//  Created by Alvin Matthew Pratama on 16/07/22.
//

import Foundation

internal struct Character: Decodable, Equatable {
    internal let id: String
    internal let name: String
    internal let nickname: String
    internal let epithet: String
    internal let bounty: Double
    internal let birthday: String
    internal let origin: String
    internal let description: String
    internal let affiliation: CharacterAffiliation
    internal let images: CharacterImages
    internal let attributes: [CharacterAttribute]
}

internal struct CharacterAffiliation: Decodable, Equatable {
    internal let id: String
    internal let name: String
    internal let imageName: String
    
    private enum CodingKeys: String, CodingKey {
        case id, name
        case imageName = "image_name"
    }
}

internal struct CharacterImages: Decodable, Equatable {
    @FailableDecodable
    internal var gridURL: URL?
    @FailableDecodable
    internal var bannerURL: URL?
    
    private enum CodingKeys: String, CodingKey {
        case gridURL = "grid_url"
        case bannerURL = "banner_url"
    }
}

internal struct CharacterAttribute: Decodable, Equatable {
    internal enum AttributeType: String, Decodable, Equatable {
        case tile
        case slider
    }
    
    @FailableDecodable
    internal var type: AttributeType?
    internal let title: String
    internal let items: [CharacterAttributeItem]
}

internal struct CharacterAttributeItem: Decodable, Equatable {
    @FailableDecodable
    internal var imageURL: URL?
    internal let title: String
    internal let shortDescription: String
    
    private enum CodingKeys: String, CodingKey {
        case imageURL = "image_url"
        case title
        case shortDescription = "short_description"
    }
}
