//
//  PinPlace.h
//  Maps
//
//  Created by Mahin Nur Islam on 1/20/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface PinPlace : NSObject<MKAnnotation>{
    NSString *title;
    NSString *subtitle;
    CLLocationCoordinate2D coordinate;
}

@property(nonatomic,copy)NSString *title;
@property(nonatomic,copy)NSString *subtitle;
@property(nonatomic,assign)CLLocationCoordinate2D coordinate;


@end
