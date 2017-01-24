//
//  AppDelegate.h
//  Maps
//
//  Created by Mahin Nur Islam on 1/20/17.
//  Copyright © 2017 Mahin Nur Islam. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

