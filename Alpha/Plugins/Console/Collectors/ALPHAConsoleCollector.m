//
//  ALPHAConsoleCollector.m
//  Alpha
//
//  Created by Dal Rupnik on 10/11/14.
//  Copyright (c) 2014 Unifed Sense. All rights reserved.
//

#import <asl.h>

#import "ALPHAConsoleLog.h"
#import "ALPHAConsoleModel.h"

#import "ALPHAConsoleCollector.h"

NSString *const ALPHAConsoleDataIdentifier = @"com.unifiedsense.alpha.data.console";

@interface ALPHAConsoleCollector ()

@end

@implementation ALPHAConsoleCollector

- (NSArray *)systemLogs
{
    NSMutableArray* logs = [NSMutableArray array];
    
    //
    // http://www.cocoanetics.com/2011/03/accessing-the-ios-system-log/
    //
    aslmsg q, m;
    int i;
    const char *key, *val;
    
    q = asl_new(ASL_TYPE_QUERY);
    
    aslresponse r = asl_search(NULL, q);
    while (NULL != (m = aslresponse_next(r)))
    {
        NSMutableDictionary *tmpDict = [NSMutableDictionary dictionary];
        
        for (i = 0; (NULL != (key = asl_key(m, i))); i++)
        {
            NSString *keyString = [NSString stringWithUTF8String:(char *)key];
            
            val = asl_get(m, key);
            
            NSString *string = val ? [NSString stringWithUTF8String:val] : @"";
            [tmpDict setObject:string forKey:keyString];
        }
        
        ALPHAConsoleLog* log = [[ALPHAConsoleLog alloc] initWithDictionary:[self updateKeysWithOriginalDictionary:tmpDict]];
        
        if (log)
        {
            [logs addObject:log];
        }
    }
    aslresponse_free(r);
    
    return [logs copy];
}

- (instancetype)init
{
    self = [super init];
    
    if (self)
    {
        [self addDataIdentifier:ALPHAConsoleDataIdentifier];
    }
    
    return self;
}

- (ALPHAModel *)modelForRequest:(ALPHARequest *)request
{
    ALPHAConsoleModel* model = [[ALPHAConsoleModel alloc] initWithIdentifier:ALPHAConsoleDataIdentifier];
    model.logs = [self systemLogs];
    
    return model;
}

- (NSDictionary *)updateKeysWithOriginalDictionary:(NSDictionary *)dict
{
    NSMutableDictionary *dictionary = [dict mutableCopy];
    dictionary[@"level"] = dictionary[@"Level"];
    dictionary[@"facility"] = dictionary[@"Facility"];
    dictionary[@"host"] = dictionary[@"Host"];
    dictionary[@"message"] = dictionary[@"Message"];
    dictionary[@"readUID"] = dictionary[@"ReadUID"];
    dictionary[@"sender"] = dictionary[@"Sender"];
    dictionary[@"senderMachUUID"] = dictionary[@"SenderMachUUID"];
    dictionary[@"time"] = dictionary[@"Time"];
    dictionary[@"timeNanoSec"] = dictionary[@"TimeNanoSec"];
    dictionary[@"thread"] = dictionary[@"CFLog Thread"];
    dictionary[@"localTime"] = dictionary[@"CFLog Local Time"];
    
    return dictionary;
}

@end
