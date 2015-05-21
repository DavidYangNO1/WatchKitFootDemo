//
//  LeagueVM.m
//  footbaldemo
//
//  Created by Yang David on 15/5/14.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import "LeagueVM.h"


@implementation LeagueVM

-(void)configByModel:(LeagueModel*)model
{
    [self.leagueimg setImageNamed:model.leagueImageName];
    [self.leaguelbl setText:model.leagueName];
}

//测试数据
+(NSArray*)loadData{
    
    NSMutableArray * dataSource =[NSMutableArray array];
    
    LeagueModel * model =[[LeagueModel alloc] init];
    model.leagueImageName=@"germanyLeague";
    model.leagueName=@"德甲";
    model.leagueIdentityController=@"sportTeamController";
    model.leaguetype = LeagueTypeGermany;
    [dataSource addObject:model];
    
    model =[[LeagueModel alloc] init];
    model.leagueImageName=@"spanishLeague";
    model.leagueName=@"西甲";
    model.leagueIdentityController=@"sportTeamController";
    model.leaguetype = LeagueTypeSpanish;
    [dataSource addObject:model];
    
    model =[[LeagueModel alloc] init];
    model.leagueImageName=@"englandLeague";
    model.leagueName=@"英超";
    model.leagueIdentityController=@"sportTeamController";
    model.leaguetype = LeagueTypeEngland;
    [dataSource addObject:model];
    
    model =[[LeagueModel alloc] init];
    model.leagueImageName=@"spanishLeague";
    model.leagueName=@"西甲";
    model.leagueIdentityController=@"sportTeamController";
    model.leaguetype = LeagueTypeSpanish;
    [dataSource addObject:model];
    
    model =[[LeagueModel alloc] init];
    model.leagueImageName=@"englandLeague";
    model.leagueName=@"英超";
    model.leagueIdentityController=@"sportTeamController";
    model.leaguetype = LeagueTypeEngland;
    [dataSource addObject:model];

    
    
    return dataSource;
}
@end
