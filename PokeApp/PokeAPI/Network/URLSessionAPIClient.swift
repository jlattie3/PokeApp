//
//  URLSessionAPIClient.swift
//  PokéApp
//
//  Created by Jacob Lattie on 7/18/21.
//

import Foundation

enum HTTPMethod: String {
    case get
}

enum HTTPError: Error, LocalizedError {
    case invalidRequest
    case invalidData
}

class URLSessionAPIClient {
    public static let urlSessionAPIClient = URLSessionAPIClient()
    
    private let decoder = JSONDecoder()
    private var defaultTask: URLSessionDataTask?
    
    func request<T: Codable>(_ urlRequest: URLRequest, completion: @escaping (Result<T, Error>) -> Void) {
        defaultTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            guard let data = data else {
                completion(.failure(HTTPError.invalidData))
                return
            }
            if let error = error {
                completion(.failure(error))
            }
            completion( Result{ try JSONDecoder().decode(T.self, from: data)} )
        }
        defaultTask?.resume()
    }
}

class APIRouter {
    static let baseUrl: String = "https://pokeapi.co/api/v2/"
}

