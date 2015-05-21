//
//  InterfaceController.m
//  footbaldemo WatchKit Extension
//
//  Created by Yang David on 15/5/14.
//  Copyright (c) 2015年 Yang David. All rights reserved.
//

#import "InterfaceController.h"
#import "LeagueVM.h"

@interface InterfaceController()

@property (weak, nonatomic) IBOutlet WKInterfaceTable *leagueTable;

@property (strong, nonatomic) NSArray *elementsList;

@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    [self setTitle:@"联赛"];
    [self loadTableRows];
    
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


- (void)handleActionWithIdentifier:(NSString *)identifier forRemoteNotification:(NSDictionary *)remoteNotification{
    
    NSLog(@"handleActionWithIdentifier forRemoteNotification");
    NSLog(@"identifier is %@",identifier);
    NSLog(@"remoteNotification is %@",remoteNotification);
}


- (void)table:(WKInterfaceTable *)table didSelectRowAtIndex:(NSInteger)rowIndex {
    
    LeagueModel *model = self.elementsList[rowIndex];
    
    [self pushControllerWithName:model.leagueIdentityController context:model];
    
}


-(void)loadTableRows{
    
    _elementsList =[LeagueVM loadData];
    [_leagueTable setNumberOfRows:_elementsList.count withRowType:@"default"];

    __weak __typeof(self)weakSelf = self;
    [_elementsList enumerateObjectsUsingBlock:^(LeagueModel *model, NSUInteger idx, BOOL *stop){
        
        LeagueVM * vm = [weakSelf.leagueTable rowControllerAtIndex:idx];
        [vm configByModel:model];
    }];
    
}

@end



