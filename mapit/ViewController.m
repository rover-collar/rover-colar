//
//  ViewController.m
//  mapit
//
//  Created by ZZY on 2/15/14.
//  Copyright (c) 2014 ZZY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

//my location
#define my_LATITUDE
#define my_LONGTITUDE

//SPAN
#define THE_SPAN 0.01f;


@implementation ViewController
@synthesize myMapview;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// reate the region
    MKCoordinateRegion myRegion;
    
    //center
    CLLocationCoordinate2D center;
    center.latitude = my_LATITUDE 42.992883;
    center.longitude = my_LONGTITUDE -78.784673;
    
    //span
    MKCoordinateSpan span;
    span.latitudeDelta = THE_SPAN;
    span.longitudeDelta = THE_SPAN;
    
    myRegion.center =center;
    myRegion.span = span;
    
    //set our mapview
    [myMapview setRegion:myRegion animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
