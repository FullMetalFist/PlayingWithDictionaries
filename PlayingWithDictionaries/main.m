//
//  main.m
//  PlayingWithDictionaries
//
//  Created by Michael Vilabrera on 6/16/14.
//  Copyright (c) 2014 Giving Tree. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
 British, American
 
 aeroplane, airplane
 
 behaviour, behavior
 
 cancelled, canceled
 
 defence, defense
 
 enrolment, enrollment
 */

@interface PlayingWithDictionaries : NSObject

+ (NSDictionary *)englishDict;

@end

@implementation PlayingWithDictionaries

+ (NSDictionary *)englishDict
{
    NSDictionary *aeroplane = @{@"aeroplane":@"a powered fixed-wing aircraft that is propelled forward by thrust from a jet engine or propeller."};
    NSDictionary *airplane = @{@"airplane":@"a powered fixed-wing aircraft that is propelled forward by thrust from a jet engine or propeller."};
    NSDictionary *behaviour = @{@"behaviour":@"the range of actions and mannerisms made by organisms, systems, or artificial entities in conjunction with themselves or their environment, which includes the other systems or organisms around as well as the (inanimate) physical environment."};
    NSDictionary *behavior = @{@"behavior":@"the range of actions and mannerisms made by organisms, systems, or artificial entities in conjunction with themselves or their environment, which includes the other systems or organisms around as well as the (inanimate) physical environment."};
    NSDictionary *cancelled = @{@"cancelled":@"To invalidate or annul something."};
    NSDictionary *canceled = @{@"canceled":@"To invalidate or annul something."};
    NSDictionary *defence = @{@"defence":@"The action of defending, of protecting from attack, danger or injury."};
    NSDictionary *defense = @{@"defense":@"The action of defending, of protecting from attack, danger or injury."};
    NSDictionary *enrolment = @{@"enrolment":@"The act of enrolling or the state of being enrolled"};
    NSDictionary *enrollment = @{@"enrollment":@"The act of enrolling or the state of being enrolled"};
    NSDictionary *british = @{@"aeroplane":aeroplane,@"behaviour":behaviour,@"cancelled":cancelled,@"defence":defence,@"enrolment":enrolment};
    NSDictionary *american = @{@"airplane":airplane,@"behavior":behavior,@"canceled":canceled,@"defense":defense,@"enrollment":enrollment};
    NSDictionary *english = @{@"british":british , @"american":american};
    return english;
}

@end



int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        NSDictionary *theDict = [PlayingWithDictionaries englishDict];
        NSString *someMuricanWord = [[NSString alloc] init];
        NSString *someBritWord = [[NSString alloc] init];
        NSLog(@"%@",theDict);

        someMuricanWord = [[theDict objectForKey:@"american"] objectForKey:@"airplane"];
        someBritWord = theDict[@"british"][@"behaviour"];
        NSLog(@"%@", someBritWord);
        NSLog(@"%@", someMuricanWord);
    }
    return 0;
}

