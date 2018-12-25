#import <Cordova/CDVPlugin.h>
#import "CDVEcho.h"

@implementation CDVEcho

- (void)echo:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* arg1 = [command.arguments objectAtIndex:0];
    NSString* arg2 = [command.arguments objectAtIndex:1];

    if (arg1 != nil && arg2 != nil) {
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:arg1];
    } else {
        if (arg2 != nil) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"arg1 was null"];
        } else if (arg1 != nil) {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"arg2 was null"];
        } else {
            pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"arg1 && arg2 are null"];
        }
    }
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end