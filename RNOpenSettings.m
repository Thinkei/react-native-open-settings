//
//  React_Native_Open_Settings.m
//  React Native Open Settings
//
//  Created by Michael Morrissey on 11/4/15.
//  Copyright © 2015 Michael Morrissey. All rights reserved.
//

#import "RNOpenSettings.h"

@implementation RNOpenSettings

RCT_EXPORT_MODULE(RNOpenSettings);

RCT_EXPORT_METHOD(openSettings) {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
}

RCT_EXPORT_MODULE(openSettingFingerprint) {
  if(@available(iOS, 10, *)) {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"App-Prefs:root=TOUCHID_PASSCODE"]];
  } else {
  [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"prefs:root=TOUCHID_PASSCODE"]];
  }
}

@end
