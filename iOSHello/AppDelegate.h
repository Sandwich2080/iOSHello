//
//  AppDelegate.h
//  iOSHello
//
//  Created by zdh on 2020/3/2.
//  Copyright © 2020 zdh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

