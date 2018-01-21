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
@end
