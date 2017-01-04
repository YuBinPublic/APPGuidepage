//
//  AppDelegate.h
//  LHVideo
//
//  Created by 余斌 on 17/01/04.
//  Copyright © 2017年 余斌. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

