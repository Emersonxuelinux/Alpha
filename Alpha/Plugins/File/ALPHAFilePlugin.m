//
//  ALPHAFilePlugin.m
//  Alpha
//
//  Created by Dal Rupnik on 08/06/15.
//  Copyright (c) 2015 Unified Sense. All rights reserved.
//

#import "ALPHAScreenActionItem.h"
#import "ALPHAFilePlugin.h"
#import "ALPHAFileSource.h"

@implementation ALPHAFilePlugin

- (instancetype)init
{
    self = [super initWithIdentifier:@"com.unifiedsense.alpha.plugin.file"];
    
    if (self)
    {
        ALPHAScreenActionItem* menuAction = [ALPHAScreenActionItem itemWithIdentifier:@"com.unifiedsense.alpha.fileBrowser"];
        menuAction.icon = @"📁";
        menuAction.title = @"File Browser";
        menuAction.dataIdentifier = ALPHAFileDataIdentifier;
        //menuAction.viewControllerClass = @"FLEXFileBrowserTableViewController";
        menuAction.isMain = YES;

        [self registerAction:menuAction];
        
        [self registerSource:[ALPHAFileSource new]];
    }
    
    return self;
}

@end
