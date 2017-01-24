//
//  ViewController.h
//  Maps
//
//  Created by Mahin Nur Islam on 1/20/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "PinPlace.h"

@interface ViewController : UIViewController<MKMapViewDelegate>{
    MKMapView *myMap;
}

@property (strong, nonatomic) IBOutlet MKMapView *mapView;

- (IBAction)maps:(id)sender;
- (IBAction)location:(id)sender;
- (IBAction)direction:(id)sender;
@end

