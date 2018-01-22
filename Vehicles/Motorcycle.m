//
//  Motorcycle.m
//  Vehicles
//
//  Created by Yongwoo Huh on 2018-01-21.
//  Copyright © 2018 Designated Nerd Software. All rights reserved.
//

#import "Motorcycle.h"
#import "Vehicle.h"

@implementation Motorcycle

#pragma mark - Initialization
- (instancetype)init
{
    self = [super init];
    if (self) {
        super.numberOfWheels = 2;
        super.powerSource = @"gas engine";
    }
    return self;
}

#pragma mark - Superclass Overrides
- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ Open throttle.", [self changeGears:@"Forward"]];
}
- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ Walk %@ backwards using feet.", [self changeGears:@"Neutral"], self.modelName];
}
- (NSString *)stopMoving
{
    return @"Squeeze brakes.";
}
- (NSString *)makeNoise
{
    return self.engineNoise;
}
- (NSString *)vehicleDetailsString
{
    // Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    // Initialize mutable string
    NSMutableString *motorcycleDetailsBuilder = [NSMutableString string];
    [motorcycleDetailsBuilder appendString:@"\n\nMotorcycle-Specific Details:\n\n"];
    
    // Add info about motorcycle-specific features.
    [motorcycleDetailsBuilder appendFormat:@"Engine Noise: %@", self.engineNoise];
    
    // Create the final string by combining basic and motorcycle-specific details
    NSString *motorcycleDetails = [basicDetails stringByAppendingString:motorcycleDetailsBuilder];
    
    return motorcycleDetails;
}
@end
