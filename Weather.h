//
//  Weather.h
//  Weather forecast
//
//  Created by Thibault Lenclos on 18/03/13.
//  Copyright (c) 2013 Thibault Lenclos. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Weather : NSObject

@property NSString* place;
@property float temperature;
@property float humidity;
@property float windSpeed;
@property int pressure;
@property NSString* iconName;
@property NSDate* day;

@end
