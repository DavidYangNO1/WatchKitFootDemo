//
//  LeagueModel.h
//  footbaldemo
//
//  Created by Yang David on 15/5/14.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, LeagueType)  {
    LeagueTypeEngland,
    LeagueTypeSpanish,
    LeagueTypeGermany,
};


@interface LeagueModel : NSObject

@property(nonatomic,copy) NSString * leagueImageName;

@property(nonatomic,copy) NSString * leagueName;

@property(nonatomic,copy) NSString * leagueIdentityController;

@property(nonatomic,assign) LeagueType leaguetype;

@end
