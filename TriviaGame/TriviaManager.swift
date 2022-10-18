//
//  TriviaManager.swift
//  TriviaGame
//
//  Created by marco rodriguez on 18/10/22.
//

import Foundation

class TriviaManager: ObservableObject {
    
    //private(set) means only can set in this class
    private(set) var trivia: [Trivia.Result] = []
    @Published private(set) var lenght = 0
    
    init() {
        Task.init {
            await fetchTrivia() //debido a que la funcion es asíncrona debemos mandar llamar dentro de Tast.init seguido de await a dicha funcion
        }
    }
    
    func fetchTrivia() async {
        guard let url = URL(string: "https://opentdb.com/api.php?amount=20") else { return }
        let urlRequest = URLRequest(url: url)
        
        do {
            let (data,response) = try await URLSession.shared.data(for: urlRequest)
            
            guard (response as? HTTPURLResponse)?.statusCode == 200 else { fatalError("Server not available.") }
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase //Quita los guines bajos
            
            let decodedData = try decoder.decode(Trivia.self, from: data)
            
            DispatchQueue.main.async {
                self.trivia = decodedData.results
                self.lenght = self.trivia.count
            }
            
        } catch  {
            print("Error fetching data, ",error.localizedDescription)
        }
    }
}
