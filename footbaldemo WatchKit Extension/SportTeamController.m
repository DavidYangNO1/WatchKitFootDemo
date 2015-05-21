//
//  SportTeamController.m
//  footbaldemo
//
//  Created by Yang David on 15/5/15.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import "SportTeamController.h"
#import "SportTeamVM.h"

@interface SportTeamController ()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *sportTeamTable;

@property (strong, nonatomic) NSArray *elementsList;

@end

@implementation SportTeamController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    
    LeagueModel * model = (LeagueModel*)context;
    [self setTitle:model.leagueName];
    [self loadTableRowsByType:model.leaguetype];
   
    
    // Configure interface objects here.
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    [super willActivate];
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    [super didDeactivate];
}

/*
- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    
    LeagueModel *model = self.elementsList[rowIndex];
    
    [self pushControllerWithName:model.leagueIdentityController context:model];
    
}
*/

-(void)loadTableRowsByType:(LeagueType)type{
    
    _elementsList =[SportTeamVM loadDataByType:type];
    [_sportTeamTable setNumberOfRows:_elementsList.count withRowType:@"default"];
    
    __weak __typeof(self)weakSelf = self;
    [_elementsList enumerateObjectsUsingBlock:^(SportTeam *model, NSUInteger idx, BOOL *stop){
        
        SportTeamVM * vm = [weakSelf.sportTeamTable rowControllerAtIndex:idx];
        [vm configByModel:model];
    }];
    
}

@end



