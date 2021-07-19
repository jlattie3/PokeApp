//
//  BerryAPIClient.swift
//  PokéApp
//
//  Created by Jacob Lattie on 7/18/21.
//

import Foundation

class BerryAPIClient {
    private let session = URLSessionAPIClient()
    
    func getBerry(withId id: Int, completion: @escaping (Result<Berry, Error>) -> Void) {
        session.request(APIRouter.Berry.getBerry(withId: id).asUrlRequest(), completion: completion)
    }
}
