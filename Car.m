//
//  Car.m
//  Vehicles
//
//  Created by Yongwoo Huh on 2018-01-21.
//  Copyright © 2018 Designated Nerd Software. All rights reserved.
//

#import "Car.h"

@interface Car ()

- (NSString *)start;
@end

@implementation Car

- (instancetype)init
{
    self = [super init];
    if (self) {
        // Since all cars have fou sheels, we can safely set this for every initialized instace of a car.
        super.numberOfWheels = 4;
    }
    return self;
}
#pragma mark - Private method implementations
- (NSString *)start
{
    return [NSString stringWithFormat:@"Start power source %@.", self.powerSource];
}

#pragma mark - Superclass Overrides
- (NSString *)goForward
{
    return [NSString stringWithFormat:@"%@ %@ Then depress gas pedal.", [self start], [self changeGears:@"Forward"]];
}
- (NSString *)goBackward
{
    return [NSString stringWithFormat:@"%@ %@ Check your rear view mirror. Then depress gas pedal.", [self start], [self changeGears:@"Reverse"]];
    
}
- (NSString *)stopMoving
{
    return [NSString stringWithFormat:@"Depress brake pedal. %@", [self changeGears:@"Park"]];
}
- (NSString *)makeNoise
{
    return @"Beep beep!";
}

- (NSString *)vehicleDetailsString
{
    // Get basic details from superclass
    NSString *basicDetails = [super vehicleDetailsString];
    
    // Initializae mutable string
    NSMutableString *carDetailsBuilder = [NSMutableString string];
    [carDetailsBuilder appendString:@"\n\nCar-Specific Details:\n\n"];
    
    // String helpers for boolleans
    NSString *yes = @"Yes\n";
    NSString *no = @"No\n";
    
    // Add info about car-specific features.
    [carDetailsBuilder appendString:@"Has sunroof: "];
    if (self.hasSunroof) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Hatchback: "];
    if (self.isHatchback) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendString:@"Is Convertible: "];
    if (self.isConverialbe) {
        [carDetailsBuilder appendString:yes];
    } else {
        [carDetailsBuilder appendString:no];
    }
    
    [carDetailsBuilder appendFormat:@"Nuber of doors: %ld", self.numberOfDoors];
    
    // Create the final string by combining basic and car-speific details.
    NSString *carDetails = [basicDetails stringByAppendingString:carDetailsBuilder];
    
    return carDetails;
}
@end
