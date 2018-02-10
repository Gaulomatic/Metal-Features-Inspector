//
//  main.swift
//  MetalFeaturesInspector
//
//  Created by Tobias Punke on 10.02.18.
//  Copyright © 2018 Tobias Punke. All rights reserved.
//


import Foundation
import Metal

print("Metal Features Inspector")
print("Copyright (c) 2018 Tobias Punke")

var __Devices: [MTLDevice] = MTLCopyAllDevices()
var __Index: Int32 = 0

for __Device: MTLDevice in __Devices
{
    print("")
    print("Device ID: " + String(__Index))
    print("Device Name: " + __Device.name)
    
    print("IsHeadless: " + String(__Device.isHeadless))
    print("IsLowPower: " + String(__Device.isLowPower))
    print("IsRemovable: " + String(__Device.isRemovable))
    
    print("ProgrammableSamplePositionsSupported: " + String(__Device.areProgrammableSamplePositionsSupported))
    print("RasterOrderGroupsSupported: " + String(__Device.areRasterOrderGroupsSupported))
    print("Depth24Stencil8PixelFormatSupported: " + String(__Device.isDepth24Stencil8PixelFormatSupported))
    print("MaxThreadgroupMemoryLength: " + String(__Device.maxThreadgroupMemoryLength))
    print("RecommendedMaxWorkingSetSize: " + String(__Device.recommendedMaxWorkingSetSize))
    
    print("SupportsFeatureSet 'macOS_GPUFamily1_v1': " + String(__Device.supportsFeatureSet(MTLFeatureSet.macOS_GPUFamily1_v1)))
    print("SupportsFeatureSet 'macOS_GPUFamily1_v2': " + String(__Device.supportsFeatureSet(MTLFeatureSet.macOS_GPUFamily1_v2)))
    print("SupportsFeatureSet 'macOS_GPUFamily1_v3': " + String(__Device.supportsFeatureSet(MTLFeatureSet.macOS_GPUFamily1_v3)))
    print("SupportsFeatureSet 'macOS_ReadWriteTextureTier2': " + String(__Device.supportsFeatureSet(MTLFeatureSet.macOS_ReadWriteTextureTier2)))
    
    print("SupportsFeatureSet 'osx_GPUFamily1_v1': " + String(__Device.supportsFeatureSet(MTLFeatureSet.osx_GPUFamily1_v1)))
    print("SupportsFeatureSet 'osx_GPUFamily1_v1': " + String(__Device.supportsFeatureSet(MTLFeatureSet.osx_GPUFamily1_v2)))
    print("SupportsFeatureSet 'osx_ReadWriteTextureTier2': " + String(__Device.supportsFeatureSet(MTLFeatureSet.osx_ReadWriteTextureTier2)))
    
    print("")
}
