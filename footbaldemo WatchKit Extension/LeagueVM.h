//
//  LeagueVM.h
//  footbaldemo
//
//  Created by Yang David on 15/5/14.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "LeagueModel.h"

@import WatchKit;

@interface LeagueVM : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage *leagueimg;

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *leaguelbl;


-(void)configByModel:(LeagueModel*)model;

+(NSArray*)loadData;

@end
