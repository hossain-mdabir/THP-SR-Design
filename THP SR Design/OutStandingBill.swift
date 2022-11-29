//
//  OutStandingBill.swift
//  THP SR Design
//
//  Created by Md Abir Hossain on 14/11/22.
//

import SwiftUI

struct OutStandingBill: View {
    
    @State var selectedStateName = "Select State"
    @State var selectedCustName = "Select Customer"
    @State var searchByInvoice = ""
    
    
    //  MARK: - Date Picker
    @State private var selectedDate = Date()
    @State private var tillNextWeek = Date.now + 518400
    
    
    // PopUp Boolean
    @State var isShowState: Bool = false
    @State var isShowCustomer: Bool = false
    
    var body: some View {
        ZStack {
            GeometryReader{ geometry in
                VStack {
                    
                    Section {
                        HStack(spacing: 2) {
                            //  MARK: - Customer Selection
                            Button {
                                withAnimation{
                                    isShowState.toggle()
                                }
                            } label: {
                                HStack {
                                    Text("  \(self.selectedStateName)")
                                        .font(.system(size: 14))
//                                        .accentColor(Color.colorHeadText)
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
                            
                            // Customer PopUp
                            Button {
                                withAnimation{
                                    isShowCustomer.toggle()
                                }
                            } label: {
                                HStack {
                                    Text("  \(self.selectedCustName)")
                                        .font(.system(size: 14))
//                                        .accentColor(Color.colorHeadText)
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
                    }
                    
                    
                    Section {
                        HStack(alignment: .center, spacing: 2) {
                            // Left Date
                            VStack(alignment: .center) {
                                DatePicker("Delivary date", selection: $selectedDate, in: Date.now...tillNextWeek, displayedComponents: .date)
                                    .environment(\.calendar,Calendar(identifier: .gregorian))
                                
                            }
                            .labelsHidden()
//                            .accentColor(Color.colorButtonBackground)
                            .frame(height: 40, alignment: .leading)
//                            .frame(width: geometry.size.width * threeSegmentFirstWidth)
                            .onChange(of: selectedDate, perform: { _ in
                                print(selectedDate)
                            })
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.gray, lineWidth: 1)
                            )
                            
                            
                            // Right Date
                            VStack(alignment: .center) {
                                DatePicker("Delivary date", selection: $selectedDate, in: Date.now...tillNextWeek, displayedComponents: .date)
                                    .environment(\.calendar,Calendar(identifier: .gregorian))
                                
                            }
                            .labelsHidden()
//                            .accentColor(Color.colorButtonBackground)
                            .frame(height: 40, alignment: .leading)
//                            .frame(width: geometry.size.width * threeSegmentFirstWidth)
                            .onChange(of: selectedDate, perform: { _ in
                                print(selectedDate)
                            })
                            .overlay(
                                RoundedRectangle(cornerRadius: 5)
                                    .stroke(.gray, lineWidth: 1)
                            )
                        }
                    }
                    
                    
                    Section {
                        HStack(spacing: 2) {
                            TextField("Search by Invoice Number", text: $searchByInvoice)
//                                .foregroundColor(Color.colorHeadText)
                                .multilineTextAlignment(.center)
                                .frame(height: 40)
                                .border(.gray)
                                .cornerRadius(2)
                            
                            // MARK: - Search Button
                            Button {
                                
                                // )
                                
                            } label: {
                                Text("SEARCH")
                                    .font(.headline)
                                    .frame(height: 40)
                                    .padding(.leading, 20)
                                    .padding(.trailing, 20)
                                    .background(Color.green)
                                    .foregroundColor(.white)
                                    .cornerRadius(2)
                            }
                        }
                    }
                    
//                    if getTrackingData.loader {
//                        ProgressView("Please wait".localized)
//                            .scaleEffect(2)
//                            .font(.system(size:8))
//                            .padding(.top, 50)
//                    }
                }
            }
        }
    }
}

struct OutStandingBill_Previews: PreviewProvider {
    static var previews: some View {
        OutStandingBill()
    }
}
