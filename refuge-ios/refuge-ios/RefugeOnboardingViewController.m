//
//  RefugeOnboardingViewController.m
//  refuge-ios
//
//  Created by Harlan Kellaway on 2/16/15.
//  Copyright (c) 2015 Refuge Restrooms. All rights reserved.
//

#import "RefugeOnboardingViewController.h"

#import <EAIntroView/EAIntroView.h>
#import "UIColor+Refuge.h"

static NSString * const kSegueNameDismissOnboarding = @"RefugeRestroomDissmissOnboardingSegue";
static NSString * const kOnboardPageName1 = @"RefugeOnboardPage1";
static NSString * const kOnboardPageName2 = @"RefugeOnboardPage2";
static NSString * const kOnboardPageName3 = @"RefugeOnboardPage3";
static NSString * const kOnboardPageName4 = @"RefugeOnboardPage4";

@interface RefugeOnboardingViewController ()

@property (nonatomic, strong) EAIntroView *onboardingView;

@end

@implementation RefugeOnboardingViewController

#pragma mark - View life-cycle

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSArray *pages = [self createPages];
    self.onboardingView = [[EAIntroView alloc] initWithFrame:self.view.bounds andPages:pages];
    self.onboardingView.skipButton.hidden = YES;
    self.onboardingView.delegate = self;
    
    [self.onboardingView showInView:self.view animateDuration:0.3];
}

#pragma mark - Public methods

#pragma mark EAIntroViewDelegate methods

- (void)introDidFinish:(EAIntroView *)introView
{
    [self performSegueWithIdentifier:kSegueNameDismissOnboarding sender:self];
}

#pragma mark - Private methods

- (NSArray *)createPages
{
    EAIntroPage *page1 = [EAIntroPage pageWithCustomViewFromNibNamed:kOnboardPageName1];
    EAIntroPage *page2 = [EAIntroPage pageWithCustomViewFromNibNamed:kOnboardPageName2];
    
    EAIntroPage *page3 = [EAIntroPage page];
    page3.title = @"This is page 3";
    page3.desc = @"Description";
    page3.bgImage = [UIImage imageNamed:@"refuge-onboard3.png"];
    
    EAIntroPage *page4 = [EAIntroPage page];
    page4.title = @"This is page 4";
    page4.desc = @"Description";
    page4.bgImage = [UIImage imageNamed:@"refuge-onboard4.png"];
    
    return @[page1, page2, page3, page4];
}

// makes status bar white
- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

@end
