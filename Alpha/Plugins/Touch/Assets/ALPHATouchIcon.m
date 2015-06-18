//
//  ALPHATouchIcon.m
//  Alpha
//
//  Created by Dal Rupnik on 18/06/15.
//  Copyright (c) 2015 Unified Sense. All rights reserved.
//

#import "ALPHATouchIcon.h"

NSString *const ALPHAIconTouchIdentifier   = @"com.unifiedsense.alpha.icon.touch";

@implementation ALPHATouchIcon

- (instancetype)init
{
    self = [super initWithIdentifier:ALPHAIconTouchIdentifier];
    
    if (self)
    {
        self.drawingSize = CGSizeMake(40.0, 40.0);
        self.drawingBlock = ^(CGSize size, NSDictionary* parameters)
        {
            UIColor *fillColor = parameters[ALPHADrawingForegroundColorKey];
            
            CGRect frame = { CGPointZero, size };
            
            //// Subframes
            CGRect touchPoseGroup = CGRectMake(CGRectGetMinX(frame) + 7.45, CGRectGetMinY(frame) - 0.19, CGRectGetWidth(frame) - 14.9, CGRectGetHeight(frame) + 0.4);

            //// TouchPose Group
            {
                //// Bezier Drawing
                UIBezierPath* bezierPath = UIBezierPath.bezierPath;
                [bezierPath moveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.03663 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.73015 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.22854 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.71242 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.08957 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.68546 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.14898 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.70296 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.35969 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.67684 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.29687 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.72062 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.36415 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.70566 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.31998 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.54898 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.35261 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.63020 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.34265 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.60936 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.23635 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.33165 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.30191 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.50094 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.26759 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.41440 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.23812 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.15670 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.19453 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.22096 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.18243 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.16954 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.36373 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.30192 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.29814 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.14303 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.33252 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.20964 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42837 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.45093 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.39927 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.40700 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.41794 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.45336 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.46981 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.39078 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.44678 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.44679 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42161 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.40187 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.55863 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.41018 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.53008 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.37711 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.54175 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.41386 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.61787 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.35801 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.57548 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.40623 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.56974 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.36898 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.71038 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.38892 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.66614 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.34711 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.69042 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.39355 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.75944 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.36097 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.73013 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.38436 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.72960 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.36761 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.96576 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.56466 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.78928 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.35406 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.90154 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.39328 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.98308 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.89314 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 1.04641 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.78013 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.95555 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.82019 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addLineToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.62315 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 1.00000 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42395 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.90636 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.59401 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.94528 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.50374 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.94125 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.07924 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.80549 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.34350 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.87100 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.28885 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.80216 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.03663 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.73015 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.00034 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.80671 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.00404 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.75765 * CGRectGetHeight(touchPoseGroup))];
                [bezierPath closePath];
                [fillColor setFill];
                [bezierPath fill];
                
                
                //// Bezier 2 Drawing
                UIBezierPath* bezier2Path = UIBezierPath.bezierPath;
                [bezier2Path moveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.18480 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.41180 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.16239 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.32476 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.17628 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.38234 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.16811 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.35290 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.08723 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.20302 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.11479 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.29870 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.08413 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.25356 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.26208 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.07223 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.09189 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.12703 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.17034 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.06837 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42001 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.21702 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.35381 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.07609 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42468 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.14103 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.41379 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.24714 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.41937 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.22747 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.41706 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.23748 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.44803 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.34378 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.42790 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.27683 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.43880 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.31005 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.50691 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.22068 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.48190 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.31011 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.50401 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.26784 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.26649 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.00028 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.51402 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.10479 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.40642 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.00616 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.00033 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.19936 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.12657 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + -0.00561 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.00744 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.08347 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path addCurveToPoint: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.18480 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.41180 * CGRectGetHeight(touchPoseGroup)) controlPoint1: CGPointMake(CGRectGetMinX(touchPoseGroup) + -0.00579 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.29916 * CGRectGetHeight(touchPoseGroup)) controlPoint2: CGPointMake(CGRectGetMinX(touchPoseGroup) + 0.07340 * CGRectGetWidth(touchPoseGroup), CGRectGetMinY(touchPoseGroup) + 0.38582 * CGRectGetHeight(touchPoseGroup))];
                [bezier2Path closePath];
                [fillColor setFill];
                [bezier2Path fill];
            }

        };
    }
    
    return self;
}

@end
