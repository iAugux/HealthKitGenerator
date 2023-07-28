// Created by Augus on 7/28/23
// Copyright © 2023 Augus <iAugux@gmail.com>

import SwiftUI
import HealthKit
import SwiftDate

struct PreviewDemoView: View {
    var body: some View {
        Button {
            let hkTypes = HKObjectTypes()
            let sampleData = HKSampleData()
            sampleData.sampleTypes = hkTypes.writables
            sampleData.permission(successBlock: {
                sampleData.writeDataSince(since: Date() - 1.years)
            })
        } label: {
            Text("Generate")
        }
    }
}

#Preview {
    PreviewDemoView()
}
