//
//  MockRefugeRestroomManagerDelegate.m
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/5/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import "MockRefugeRestroomManagerDelegate.h"

@implementation MockRefugeRestroomManagerDelegate

- (void)didFetchRestrooms
{
    self.wasNotifiedOfFetchedRestrooms = YES;
}

- (void)fetchingRestroomsFailedWithError:(NSError *)error
{
    self.fetchError = error;
}

- (void)savingRestroomsFailedWithError:(NSError *)error
{
    self.saveError = error;
}

@end
