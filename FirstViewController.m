//
//  FirstViewController.m
//  Weather forecast
//
//  Created by Thibault Lenclos on 09/01/13.
//  Copyright (c) 2013 Thibault Lenclos. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor colorWithPatternImage: [UIImage imageNamed:@"background.png"]];
    
    // Time
    NSDate *date = [NSDate date];
    
    NSDateFormatter * dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterBehaviorDefault];
    [dateFormatter setDateFormat:@"dd/MM/yyyy"];
    
    NSCalendar *gregorianCal = [[NSCalendar alloc] initWithCalendarIdentifier:NSGregorianCalendar];
    NSDateComponents *dataComps = [gregorianCal components: (NSHourCalendarUnit | NSMinuteCalendarUnit) fromDate: date];
    
    self.date.text = [dateFormatter stringFromDate:date];
    self.time.text = [NSString stringWithFormat:@"%d:%@", [dataComps hour], [NSString stringWithFormat:@"%02d", [dataComps minute]]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
