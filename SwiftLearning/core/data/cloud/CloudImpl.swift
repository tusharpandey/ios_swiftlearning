import Foundation

func fetchFilms(completion : @escaping (Welcome)->()){
    let requestData = RequestData(url : NetworkConstants.URL.FETCH_FILM)
    getRequest(requestData: requestData){ response in
        let decoder = JSONDecoder()
        let data = response.data(using: .utf8)!
        let result : Welcome = try! decoder.decode(Welcome.self, from: data)
        completion(result)
    }
}
