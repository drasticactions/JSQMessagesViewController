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

#import "JSQMessagesCellTextView.h"

@implementation JSQMessagesCellTextView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.textColor = [UIColor whiteColor];
    self.editable = NO;
    self.selectable = YES;
    self.userInteractionEnabled = YES;
    self.dataDetectorTypes = UIDataDetectorTypeNone;
    self.showsHorizontalScrollIndicator = NO;
    self.showsVerticalScrollIndicator = NO;
    self.scrollEnabled = NO;
    self.backgroundColor = [UIColor clearColor];
    self.contentInset = UIEdgeInsetsZero;
    self.scrollIndicatorInsets = UIEdgeInsetsZero;
    self.contentOffset = CGPointZero;
    self.textContainerInset = UIEdgeInsetsZero;
    self.textContainer.lineFragmentPadding = 0;
    self.linkTextAttributes = @{ NSForegroundColorAttributeName : [UIColor whiteColor],
                                 NSUnderlineStyleAttributeName : @(NSUnderlineStyleSingle | NSUnderlinePatternSolid) };
}

- (BOOL)pointInside:(CGPoint)point withEvent:(UIEvent *)event
{
    //Enable link selection and nothing else. https://stackoverflow.com/a/44878203
    //Gesture recognizers will pick up everything else
    UITextPosition *position = [self closestPositionToPoint:point];
    if (position == nil) { return false; }
    UITextRange *range = [self.tokenizer rangeEnclosingPosition:position withGranularity:UITextGranularityCharacter inDirection:UITextLayoutDirectionLeft];
    if (range == nil) { return false; }

    NSInteger idx = [self offsetFromPosition:self.beginningOfDocument toPosition:range.start];
    BOOL isLink = [self.attributedText attribute:NSLinkAttributeName atIndex:idx effectiveRange:nil] != nil;
    return isLink;
}

- (void)setSelectedRange:(NSRange)selectedRange
{
    //  attempt to prevent selecting text
    [super setSelectedRange:NSMakeRange(NSNotFound, 0)];
}

- (NSRange)selectedRange
{
    //  attempt to prevent selecting text
    return NSMakeRange(NSNotFound, NSNotFound);
}

- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    //  ignore double-tap to prevent copy/define/etc. menu from showing
    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
        UITapGestureRecognizer *tap = (UITapGestureRecognizer *)gestureRecognizer;
        if (tap.numberOfTapsRequired == 2) {
            return NO;
        }
    }
    
    return YES;
}

- (BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
    //  ignore double-tap to prevent copy/define/etc. menu from showing
    if ([gestureRecognizer isKindOfClass:[UITapGestureRecognizer class]]) {
        UITapGestureRecognizer *tap = (UITapGestureRecognizer *)gestureRecognizer;
        if (tap.numberOfTapsRequired == 2) {
            return NO;
        }
    }
    
    return YES;
}

@end
