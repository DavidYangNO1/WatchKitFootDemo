//
//  LeagueNotification.h
//  footbaldemo
//
//  Created by DavidYang on 15/5/15.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import <WatchKit/WatchKit.h>

@interface LeagueNotification : WKUserNotificationInterfaceController
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *detailMsg;
@property (weak, nonatomic) IBOutlet WKInterfaceLabel *titlelbl;

@end
