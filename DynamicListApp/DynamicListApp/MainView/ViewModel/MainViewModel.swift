//
//  MainViewModel.swift
//  DynamicListApp
//
//  Created by Daniel Cazorro Frias  on 26/1/24.
//

import Foundation

class MainViewModel {
    
    // MARK: - Properties
    
    // Array que contiene los números
    private var numbers: [Int] = []
    
    // MARK: - Public Methods
    
    // Retorna la cantidad de números en el array
    func numberOfRows() -> Int {
        return numbers.count
    }
    
    // Retorna el número en la posición especificada por el índice
    func number(at index: Int) -> String {
        let number = numbers[index]
        
        // Si el número es muy grande, devuelve un string en su lugar
        if number >= Int.max {
            return "Out of memory"
        } else {
            return "\(number)"
        }
    }
    
    // Duplica el número en la posición especificada por el índice
    func didSelectRow(at index: Int) {
        let number = numbers[index]
        
        // Si el número multiplicado por 2 es muy grande, no se realiza la multiplicación
        if number <= Int.max / 2 {
            numbers[index] *= 2
        }
    }
    
    // Agrega un nuevo número al array
    func addNumber() {
        // El nuevo número será igual a la cantidad de números en el array + 1
        let newNumber = numbers.count + 1
        numbers.append(newNumber)
    }
}

