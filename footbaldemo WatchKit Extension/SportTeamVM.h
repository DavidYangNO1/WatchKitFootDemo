//
//  SportTeamVM.h
//  footbaldemo
//
//  Created by Yang David on 15/5/15.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SportTeam.h"
#import "LeagueModel.h"

@import WatchKit;

@interface SportTeamVM : NSObject

@property (weak, nonatomic) IBOutlet WKInterfaceImage *hostImg;

@property (weak, nonatomic) IBOutlet WKInterfaceLabel *scoreLbl;

@property (weak, nonatomic) IBOutlet WKInterfaceImage *gestImg;

-(void)configByModel:(SportTeam*)teamModel;

+(NSArray*)loadDataByType:(LeagueType)type;

@end
