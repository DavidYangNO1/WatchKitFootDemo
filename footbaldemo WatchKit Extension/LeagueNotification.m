//
//  LeagueNotification.m
//  footbaldemo
//
//  Created by DavidYang on 15/5/15.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import "LeagueNotification.h"

@implementation LeagueNotification


- (void)willActivate {
    // This method is called when the controller is about to be visible to the wearer.
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when the controller is no longer visible.
    NSLog(@"%@ did deactivate", self);
}

- (void)didReceiveRemoteNotification:(NSDictionary *)remoteNotification withCompletion:(void (^)(WKUserNotificationInterfaceType))completionHandler {

    NSString * detailMsg = remoteNotification[@"detailKey"];
    [_detailMsg setText:detailMsg];
    
    NSString * title = remoteNotification[@"aps"][@"alert"][@"body"];
    [_titlelbl setText:title];
    completionHandler(WKUserNotificationInterfaceTypeCustom);
}

@end
