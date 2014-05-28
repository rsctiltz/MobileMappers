//
//  ViewController.m
//  MobileMappers1
//
//  Created by Ryan Tiltz on 5/28/14.
//  Copyright (c) 2014 Ryan Tiltz. All rights reserved.
//

#import "ViewController.h"
#import <MapKit/MapKit.h>

@interface ViewController () <MKMapViewDelegate>
@property (weak, nonatomic) IBOutlet MKMapView *mapView;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.mobileMakersAnnotation = [[MKPointAnnotation alloc] init];
    self.mobileMakersAnnotation.coordinate = CLLocationCoordinate2DMake(41.89373984, -87.63532979);
    self.mobileMakersAnnotation.title = @"Mobile Makers HQ";
    [self.mapView addAnnotation:self.mobileMakersAnnotation];
}

-(MKAnnotationView *)mapView:(MKMapView *)mapView viewForAnnotation:(id<MKAnnotation>)annotation
{
    MKPinAnnotationView *pin = [[MKPinAnnotationView alloc] initWithAnnotation:annotation reuseIdentifier:nil];
    pin.image = [UIImage imageNamed:@"mobilemakers"];
    pin.canShowCallout = YES;
    pin.rightCalloutAccessoryView = [UIButton buttonWithType:UIButtonTypeDetailDisclosure];
    return pin;
}
@end
