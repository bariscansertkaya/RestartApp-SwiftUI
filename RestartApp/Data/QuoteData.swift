//
//  QuoteData.swift
//  RestartApp
//
//  Created by Barış Can Sertkaya on 23.03.2023.
//

import Foundation

struct QuoteItem: Identifiable {
    var id = UUID()
    var quote: String
}

let testData = [
    QuoteItem(quote: "Aşk, öyle engin bir denizdir ki, ne başlangıcı ne de sonu vardır."),
    QuoteItem(quote: "Bir mum, diğer mumu tutuşturmakla ışığından bir şey kaybetmez."),
    QuoteItem(quote: "Bize gözün değil, gönlün gördüğü yürek gerek."),
    QuoteItem(quote: "Yürek yorulunca ter gözden akar."),
    QuoteItem(quote: "Gönül almayı bilmeyene ömür emanet edilmez."),
    QuoteItem(quote: "Mum olmak kolay değildir. Işık saçmak için önce yanmak gerek."),
    QuoteItem(quote: "Kalp deniz, dil kıyıdır. Denizde ne varsa kıyıya o vurur."),
    QuoteItem(quote: "Aşıkların gönüllerinin yanışıyla gözyaşları olmasaydı dünyada su da olmazdı ateş de."),
    QuoteItem(quote: "Her kim aşk ile yanıp tutuşmamışsa o, uçamayan kanatsız kuş gibidir."),
    QuoteItem(quote: "Seni seveni zehir olsa yut. Seni sevmeyeni bal olsa da unut.")
]
