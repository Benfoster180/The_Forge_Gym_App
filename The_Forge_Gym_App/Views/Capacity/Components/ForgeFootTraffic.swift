//
//  ForgeFootTraffic.swift
//  The_Forge_Gym_App
//
//  Created by Ben Foster on 20/07/2026.
//

import SwiftUI
import Charts

struct ForgeFootTraffic: View {

    let weeklyTraffic: [FootTrafficData]

    @State private var selectedDay: String = ""

    private var selectedTraffic: FootTrafficData? {
        weeklyTraffic.first { traffic in
            traffic.day == selectedDay
        }
    }

    var body: some View {
        VStack(spacing: 18) {

            Text("FOOT TRAFFIC FORECAST")
                .font(.system(size: 15, weight: .bold))
                .tracking(2)
                .foregroundColor(Color("ForgeYellow"))
       


            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 10) {

                    ForEach(weeklyTraffic) { day in

                        Button {

                            selectedDay = day.day

                        } label: {

                            Text(day.day.prefix(3))
                                .font(.caption)
                                .fontWeight(.bold)
                                .frame(width: 40, height: 30)
                                .background(
                                    selectedDay == day.day
                                    ? Color("ForgeYellow")
                                    : Color.white.opacity(0.1)
                                )
                                .foregroundColor(
                                    selectedDay == day.day
                                    ? .black
                                    : .white
                                )
                                .clipShape(
                                    RoundedRectangle(cornerRadius: 8)
                                )
                        }
                    }
                }
            }


            if let traffic = selectedTraffic {

                Chart {

                    ForEach(
                        traffic.hourlyTraffic.indices,
                        id: \.self
                    ) { hour in

                        BarMark(
                            x: .value("Hour", hour),
                            y: .value(
                                "Members",
                                traffic.hourlyTraffic[hour]
                            )
                        )
                        .cornerRadius(5)
                        .foregroundStyle(Color("ForgeYellow"))
                    }
                }
                .chartXAxis {
                    AxisMarks(values: [0, 6, 12, 18, 23]) { value in
                        
                        AxisGridLine()
                            .foregroundStyle(.clear)
                        
  
                        
                        AxisValueLabel()
                            .foregroundStyle(Color("ForgeYellow"))
                    }
                }
                .chartYAxis(.hidden)
                .frame(height: 120)
            }

        }
        .padding(15)
        .frame(maxWidth: .infinity)
     
        .onAppear {
            setToday()
        }
    }


    private func setToday() {

        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"

        let today = formatter.string(from: Date())

        if weeklyTraffic.contains(where: { $0.day == today }) {
            selectedDay = today
        } else {
            selectedDay = weeklyTraffic.first?.day ?? ""
        }
    }
}


#Preview {

    ZStack {

        Color("ForgeBlack")
            .ignoresSafeArea()

        ForgeFootTraffic(
            weeklyTraffic: MockFootTrafficData.weeklyTraffic
        )
        .padding()
    }
}
