//
//  SportTeamVM.m
//  footbaldemo
//
//  Created by Yang David on 15/5/15.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import "SportTeamVM.h"

@implementation SportTeamVM


-(void)configByModel:(SportTeam*)teamModel
{
    [self.hostImg setImageNamed:teamModel.hostTeamName];
    [self.gestImg setImageNamed:teamModel.guestTeamName];
    [self.scoreLbl setText:teamModel.teamScore];
}

+(NSArray*)loadDataByType:(LeagueType)type{
    
    NSMutableArray * dataSource =[NSMutableArray array];
    
    switch (type) {
        case LeagueTypeEngland:
            dataSource =[self loadEnglishLeagueScore];
            break;
        
        case LeagueTypeSpanish:
            dataSource =[self loadEnglishLeagueScore];
            break;
        case LeagueTypeGermany:
            dataSource =[self loadEnglishLeagueScore];
            break;
    }
    
    return dataSource;

}


#pragma 测试数据

+(NSMutableArray*)loadEnglishLeagueScore{
    
    NSMutableArray * dataSource =[NSMutableArray array];
    
    SportTeam * model =[[SportTeam alloc] init];
    model.hostTeamName = @"1.png";
    model.guestTeamName=@"2.png";
    model.teamScore=@"2:0";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"5.png";
    model.guestTeamName=@"6.png";
    model.teamScore=@"0:2";
    [dataSource addObject:model];

    model =[[SportTeam alloc] init];
    model.hostTeamName = @"3.png";
    model.guestTeamName=@"4.png";
    model.teamScore=@"4:0";
    [dataSource addObject:model];

    return dataSource;
}

+(NSMutableArray*)loadSpanishLeagueScore{
    
    NSMutableArray * dataSource =[NSMutableArray array];
    
    SportTeam * model =[[SportTeam alloc] init];
    model.hostTeamName = @"5.png";
    model.guestTeamName=@"6.pn";
    model.teamScore=@"1:3";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"7.pn";
    model.guestTeamName=@"8.pn";
    model.teamScore=@"0:4";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"1.pn";
    model.guestTeamName=@"2.pn";
    model.teamScore=@"2:0";
    [dataSource addObject:model];

   
    
    return dataSource;

}

+(NSMutableArray*)loadGermanyLeagueScore{

    NSMutableArray * dataSource =[NSMutableArray array];
    
    SportTeam * model =[[SportTeam alloc] init];
    model.hostTeamName = @"1.png";
    model.guestTeamName=@"3.png";
    model.teamScore=@"2:3";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"5.png";
    model.guestTeamName=@"6.png";
    model.teamScore=@"2:1";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"2.png";
    model.guestTeamName=@"4.png";
    model.teamScore=@"2:4";
    [dataSource addObject:model];
    
    model =[[SportTeam alloc] init];
    model.hostTeamName = @"8.png";
    model.guestTeamName=@"7.png";
    model.teamScore=@"2:1";
    [dataSource addObject:model];
    
    return dataSource;

}


@end
