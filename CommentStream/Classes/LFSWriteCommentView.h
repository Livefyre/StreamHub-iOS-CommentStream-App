//
//  LFSWriteCommentView.h
//  CommentStream
//
//  Created by Eugene Scherba on 10/16/13.
//  Copyright (c) 2013 Adobe. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "LFSResource.h"

@protocol LFSWriteCommentViewDelegate;

@interface LFSWriteCommentView : UIView <UITextViewDelegate>

@property (nonatomic, strong) LFSResource* profileLocal;
@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, assign) id<LFSWriteCommentViewDelegate>delegate;

@property (nonatomic, assign) UIImage *attachmentImage;
-(void)setAttachmentImageWithURL:(NSURL*)url;
-(void)updateUserFromProfile:(LFSResource*) profile;
@end


@protocol LFSWriteCommentViewDelegate <NSObject>

-(void)didClickAddPhotoButton;

@end
