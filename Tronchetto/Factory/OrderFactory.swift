//
//  OrderFactory.swift
//  Tronchetto
//
//  Created by Ingryd Cordeiro Duarte on 05/03/25.
//

//MARK: Pedidos
protocol Order {
    var orderName: String { get }
    func acceptOrder()
    func prepareOrder()
    func automaticMessage(message: String)
}
