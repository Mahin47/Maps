//
//  ViewController.m
//  Maps
//
//  Created by Mahin Nur Islam on 1/20/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize mapView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//    self.mapView = [[MKMapView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height)];
//    [self.mapView setShowsUserLocation:YES];
//    [self.mapView setDelegate:self];
//    [self.view addSubview:self.mapView];
    MKCoordinateRegion region0 = {{0.0, 0.0}, {0.0, 0.0}};
    region0.center.latitude = 24.4536664;
    region0.center.longitude = 90.54776879999997;
    PinPlace *pin0 = [[PinPlace alloc]init];
    pin0.title = @"Owner";
    //pin0.subtitle = @"";
    pin0.coordinate = region0.center;
    [mapView addAnnotation:pin0];
    MKCoordinateRegion region = {{0.0, 0.0}, {0.0, 0.0}};
    region.center.latitude = 24.7441;
    region.center.longitude = 90.4094;
    PinPlace *pin = [[PinPlace alloc]init];
    pin.title = @"Mymensingh Medical College";
    pin.subtitle = @"Mymensingh";
    pin.coordinate = region.center;
    [mapView addAnnotation:pin];
    MKCoordinateRegion region1 = {{0.0, 0.0}, {0.0, 0.0}};
    region1.center.latitude = 23.7254;
    region1.center.longitude = 90.3970;
    PinPlace *pin1 = [[PinPlace alloc]init];
    pin1.title = @"Dhaka Medical College";
    pin1.subtitle = @"Dhaka";
    pin1.coordinate = region1.center;
    [mapView addAnnotation:pin1];
    MKCoordinateRegion region2 = {{0.0, 0.0}, {0.0, 0.0}};
    region2.center.latitude = 22.6872;
    region2.center.longitude = 90.3613;
    PinPlace *pin2 = [[PinPlace alloc]init];
    pin2.title = @"Sher-E-Bangla Medical College ";
    pin2.subtitle = @"Barisal";
    pin2.coordinate = region2.center;
    [mapView addAnnotation:pin2];
    MKCoordinateRegion region3 = {{0.0, 0.0}, {0.0, 0.0}};
    region3.center.latitude = 23.7111;
    region3.center.longitude = 90.4010;
    PinPlace *pin3 = [[PinPlace alloc]init];
    pin3.title = @" Sir Salimullah Medical College (SSMC)";
    pin3.subtitle = @"Dhaka";
    pin3.coordinate = region3.center;
    [mapView addAnnotation:pin3];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)mapView:(MKMapView *)mapView didUpdateUserLocation:(MKUserLocation *)userLocation{
    [self.mapView setRegion:MKCoordinateRegionMake(userLocation.coordinate, MKCoordinateSpanMake(0.1f, 0.1f)) animated:YES];
}



- (IBAction)maps:(id)sender {
    switch (((UISegmentedControl *)sender).selectedSegmentIndex) {
        case 0:
            mapView.mapType = MKMapTypeStandard;
            break;
        case 1:
            mapView.mapType = MKMapTypeSatellite;
            break;
        case 2:
            mapView.mapType = MKMapTypeHybrid;
            break;
            
        default:
            break;
    }
}

- (IBAction)location:(id)sender {
//    mapView.showsUserLocation = YES;
    [self.mapView setShowsUserLocation:YES];
    [self.view addSubview:self.mapView];
    [self.mapView setDelegate:self];
}


- (IBAction)direction:(id)sender {
    NSString *urlstring = @"http://maps.apple.com/maps?daddr=24.4536664,90.54776879999997";
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlstring]];
}
@end
