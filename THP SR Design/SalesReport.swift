//
//  SalesReport.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 14/11/22.
//

import SwiftUI

struct Home: View {
    
    init () {
        
    }
    
    var body: some View {
        ZStack {
            GeometryReader { geometry in
                VStack {
                    //  MARK: - Product Selection
                    Section {
                        Button {
                            withAnimation{
//                                isShowCustomer.toggle()
                            }
                        } label: {
                            HStack {
                                Text("  \(" Select Cust")") // self.selectedProdName
                                    .font(.system(size: 14))
//                                    .accentColor(Color.colorHeadText)
                                    .frame(height: 40)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .clipped(antialiased: true)
                                Image(systemName: "chevron.down")
                                    .padding(.trailing, 5)
                                    .foregroundColor(Color.gray)
                            }
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.gray, lineWidth: 1)
                            )
                        }
                    }
                    .padding(5)
                    .padding(.bottom, 03)
                    
                    
                    // MARK: - Date
//                    Section {
//                        HStack(spacing: 2) {
//                            DatePickerTextField(placeholder: "Delivery Date", date: $date, helper : helpr)
//                                .accentColor(Color.colorHeadText)
//                                .multilineTextAlignment(.center)
//                                .frame(height: 40)
//    //                            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
//                                .border(.gray)
//                                .cornerRadius(2)
//                                .onChange(of: date, perform: { newValue in
//                                    print("called")
//                                    let dateFormatter = DateFormatter()
//                                    dateFormatter.calendar = Calendar(identifier: .gregorian)  // Calendar type
//                                    dateFormatter.dateFormat = "dd-MM-yyyy"
//                                    let deliveryDate = dateFormatter.string(from: date ?? Date())
//                                    print("deliveryDate :: \(deliveryDate)")
//                                    selectedDeliveryDate = deliveryDate
//                                    print("selectedDeliveryDate :: \(selectedDeliveryDate)")
//                                    //viewModel.isShowWebView = false // << here !!
//                                })
//
//                            DatePickerTextField(placeholder: "Delivery Date", date: $date, helper : helpr)
//                                .accentColor(Color.colorHeadText)
//                                .multilineTextAlignment(.center)
//                                .frame(height: 40)
//    //                            .frame(maxWidth: .infinity, maxHeight: 40, alignment: .center)
//                                .border(.gray)
//                                .cornerRadius(2)
//                                .onChange(of: date, perform: { newValue in
//                                    print("called")
//                                    let dateFormatter = DateFormatter()
//                                    dateFormatter.calendar = Calendar(identifier: .gregorian)  // Calendar type
//                                    dateFormatter.dateFormat = "dd-MM-yyyy"
//                                    let deliveryDate = dateFormatter.string(from: date ?? Date())
//                                    print("deliveryDate :: \(deliveryDate)")
//                                    selectedDeliveryDate = deliveryDate
//                                    print("selectedDeliveryDate :: \(selectedDeliveryDate)")
//                                    //viewModel.isShowWebView = false // << here !!
//                                })
//                        }
//                    }
                    
                    VStack(alignment: .center, spacing: 2){
                        
                        // MARK: - Sync Button
                        Button {
                            // MARK: - Search
                            
                        } label: {
                            VStack {
                                Text("SEARCH")
                                    .font(.headline)
                                    .frame(maxWidth: .infinity, maxHeight: 30)
                                    .background(Color.green)
                                    .foregroundColor(Color.white)
                                    .cornerRadius(2)
                                    .padding(.leading, 40)
                                    .padding(.trailing, 40)
                                
//                                if sync.loader {
//                                    ProgressView("Please wait".localized)
//                                        .scaleEffect(2)
//                                        .font(.system(size:8))
//                                }
                            }
                        }
                        Spacer()
                    }
                    
                }
            }
        }
    }
}

struct SalesReport_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
