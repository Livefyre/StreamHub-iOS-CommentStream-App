//
//  LFSContentToolbar.m
//  CommentStream
//
//  Created by Eugene Scherba on 9/25/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import "LFSContentToolbar.h"
#import "UIColor+CommentStream.h"

@implementation LFSContentToolbar

- (void)drawRect:(CGRect)rect
{
    [[UIColor colorForToolbarEdge] setStroke];
    
    CGPoint origin = rect.origin;
    CGSize size = rect.size;
    
    // top 1px line
    UIBezierPath *lineTop = [[UIBezierPath alloc] init];
    [lineTop moveToPoint:origin];
    [lineTop addLineToPoint:CGPointMake(origin.x + size.width, origin.y)];
    lineTop.lineWidth = 1.f;
    [lineTop stroke];
    
    // bottom 1px line
    UIBezierPath *lineBottom = [[UIBezierPath alloc] init];
    [lineBottom moveToPoint:CGPointMake(origin.x, origin.y + size.height)];
    [lineBottom addLineToPoint:CGPointMake(origin.x + size.width,
                                           origin.y + size.height)];
    lineBottom.lineWidth = 1.f;
    [lineBottom stroke];
}

#pragma mark - Private methods
- (void)applyTranslucentBackground
{
    self.backgroundColor = [UIColor clearColor];
    self.opaque = NO;
    self.translucent = YES;
}

#pragma mark - Lifecycle
- (id)initWithFrame:(CGRect) frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self applyTranslucentBackground];
    }
    return self;
}

// for loading from storyboard or Xib
-(id)initWithCoder:(NSCoder *)aDecoder
{
    self = [super initWithCoder:aDecoder];
    if (self) {
        // Initialization code
        [self applyTranslucentBackground];
    }
    return self;
}

@end
