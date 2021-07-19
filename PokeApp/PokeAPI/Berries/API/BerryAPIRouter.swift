//
//  BerryAPIRouter.swift
//  PokéApp
//
//  Created by Jacob Lattie on 7/18/21.
//

import Foundation

extension APIRouter {
    enum Berry {
        
        case getBerry(withId: Int)
        case getBerryFirmness(withId: Int)
        case getBerryFlavor(withId: Int)
        
        var method: HTTPMethod {
            switch self {
            default:
                return .get
            }
        }
        
        var path: String {
            switch self {
            case let .getBerry(id):
                return "berry/\(id)"
            case let .getBerryFirmness(id):
                return "berry-firmness/\(id)"
            case let .getBerryFlavor(id):
                return "berry-flavor/\(id)"
            }
        }
        
        func asUrlRequest() -> URLRequest {
            let url = URL(string: APIRouter.baseUrl + path)! // TODO:- Fix
            var urlRequest = URLRequest(url: url)
            urlRequest.httpMethod = method.rawValue
            // TODO:- HTTP Headers and Body
            return urlRequest
        }
    }
}
