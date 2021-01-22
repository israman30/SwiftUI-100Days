//
//  ContentView.swift
//  DatePicker-2
//
//  Created by Israel Manzo on 1/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct Home: View {
    
    @State private var date = Date()
    @State private var dateType: DateType?
    @State private var expanded = false
    @State private var year = false
    
    var body: some View {
        GeometryReader { _ in
            VStack {
                if dateType != nil {
                    ZStack {
                        VStack(spacing: 15) {
                            ZStack {
                                HStack {
                                    Spacer()
                                    Text(dateType?.Month ?? "")
                                        .font(.title)
                                        .foregroundColor(.white)
                                    Spacer()
                                }
                                .padding(.vertical)
                                HStack {
                                    Button(action: {
                                        self.date = Calendar.current.date(byAdding: .month, value: -1, to: self.date)!
                                        self.upateDate()
                                    }, label: {
                                        Image(systemName: "arrow.left")
                                    })
                                    Spacer()
                                    
                                    Button(action: {
                                        self.date = Calendar.current.date(byAdding: .month, value: 1, to: self.date)!
                                        self.upateDate()
                                    }, label: {
                                        Image(systemName: "arrow.right")
                                    })
                                }
                                .foregroundColor(.white)
                                .padding(.horizontal, 30)
                            }
                            .background(Color.red)
                            
                            Text(dateType?.Date ?? "")
                                .font(.system(size: 65))
                                .fontWeight(.bold)
                            
                            Text(dateType?.Day ?? "")
                                .font(.title)
                            
                            Divider()
                            
                            ZStack {
                                Text(dateType?.Year ?? "")
                                    .font(.title)
                                    
                                HStack {
                                    Spacer()
                                    Button(action: {
                                        withAnimation(.default) {
                                            self.expanded.toggle()
                                        }
                                    }, label: {
                                        Image("left")
                                            .renderingMode(.original)
                                            .resizable()
                                            .frame(width: 15, height: 20)
                                            .rotationEffect(.init(degrees: self.expanded ? 270 : 90))
                                    })
                                    .padding(.trailing, 30)
                                }
                            }
                            
                            
                            if self.expanded {
                                Toggle(isOn: self.$year, label: {
                                    Text("Year")
                                        .font(.title)
                                })
                                .padding(.trailing, 15)
                                .padding(.leading, 25)
                            }
                        }
                        .padding(.bottom, self.expanded ? 15 : 12)
                        
                        HStack {
                            Button(action: {
                                self.date = Calendar.current.date(byAdding: self.year ? .year : .day, value: -1, to: self.date)!
                                self.upateDate()
                            }, label: {
                                Image(systemName: "arrow.left")
                            })
                            Spacer()
                            
                            Button(action: {
                                self.date = Calendar.current.date(byAdding: self.year ? .year : .day, value: 1, to: self.date)!
                                self.upateDate()
                            }, label: {
                                Image(systemName: "arrow.right")
                            })
                        }
                        .foregroundColor(.black)
                        .padding(.horizontal, 30)
                    }
                    .frame(width: UIScreen.main.bounds.width / 1.5)
                    .background(Color.white)
                    .cornerRadius(15)
                }
            }
        }
        .background(Color.black.opacity(0.06)
        .edgesIgnoringSafeArea(.all))
        .onTapGesture {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd-MMM-YYYY"
            print(formatter.string(from: self.date))
        }
        .onAppear {
            self.upateDate()
        }
    }
    
    func upateDate() {
        let current = Calendar.current
        let date = current.component(.day, from: self.date)
        let monthNumber = current.component(.month, from:self.date)
        let month = current.monthSymbols[monthNumber - 1]
        let year = current.component(.year, from: self.date)
        let weekNumber = current.component(.weekday, from: self.date)
        let day = current.weekdaySymbols[weekNumber - 1]
        dateType = DateType(Day: day, Date: "\(date)", Year: "\(year)", Month: month)
    }
}

struct DateType {
    var Day: String
    var Date: String
    var Year: String
    var Month: String
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
