//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "../Controllers/JSQMessagesViewController.h"

//  Views
#import "../Views/JSQMessagesCollectionView.h"
#import "../Views/JSQMessagesCollectionViewCellIncoming.h"
#import "../Views/JSQMessagesCollectionViewCellOutgoing.h"
#import "../Views/JSQMessagesTypingIndicatorFooterView.h"
#import "../Views/JSQMessagesLoadEarlierHeaderView.h"
#import "../Views/JSQMessagesMediaPlaceholderView.h"

//  Layout
#import "../Layout/JSQMessagesBubbleSizeCalculating.h"
#import "../Layout/JSQMessagesBubblesSizeCalculator.h"
#import "../Layout/JSQMessagesCollectionViewFlowLayout.h"
#import "../Layout/JSQMessagesCollectionViewLayoutAttributes.h"
#import "../Layout/JSQMessagesCollectionViewFlowLayoutInvalidationContext.h"
#import "../Layout/JSQAudioMediaViewAttributes.h"

//  Toolbar
#import "../Views/JSQMessagesComposerTextView.h"
#import "../Views/JSQMessagesInputToolbar.h"
#import "../Views/JSQMessagesToolbarContentView.h"

//  Model
#import "../Model/JSQMessage.h"

#import "../Model/JSQMediaItem.h"
#import "../Model/JSQAudioMediaItem.h"
#import "../Model/JSQPhotoMediaItem.h"
#import "../Model/JSQLocationMediaItem.h"
#import "../Model/JSQVideoMediaItem.h"

#import "../Model/JSQMessagesBubbleImage.h"
#import "../Model/JSQMessagesAvatarImage.h"

#import "../Layout/JSQAudioMediaViewAttributes.h"

//  Protocols
#import "../Model/JSQMessageData.h"
#import "../Model/JSQMessageMediaData.h"
#import "../Model/JSQMessageAvatarImageDataSource.h"
#import "../Model/JSQMessageBubbleImageDataSource.h"
#import "../Model/JSQMessagesCollectionViewDataSource.h"
#import "../Model/JSQMessagesCollectionViewDelegateFlowLayout.h"

//  Factories
#import "../Factories/JSQMessagesAvatarImageFactory.h"
#import "../Factories/JSQMessagesBubbleImageFactory.h"
#import "../Factories/JSQMessagesMediaViewBubbleImageMasker.h"
#import "../Factories/JSQMessagesTimestampFormatter.h"
#import "../Factories/JSQMessagesToolbarButtonFactory.h"

//  Categories
#import "../Categories/NSString+JSQMessages.h"
#import "../Categories/UIColor+JSQMessages.h"
#import "../Categories/UIImage+JSQMessages.h"
#import "../Categories/UIView+JSQMessages.h"
#import "../Categories/NSBundle+JSQMessages.h"
