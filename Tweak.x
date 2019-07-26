%hook SCAPIAuth
+ (id)appName { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)appVersion { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)authenticationParametersForEndpoint:(id)arg1 authToken:(id)arg2 username:(id)arg3 parameters:(id)arg4 deviceIdManager:(id)arg5 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)authenticationParametersForUserWithToken:(id)arg1 username:(id)arg2 withDeviceInfo:(_Bool)arg3 deviceIdManager:(id)arg4 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)requestTokenForUserToken:(id)arg1 timestamp:(id)arg2 { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)schemeName { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)userAgentHeader { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
+ (id)versionName { %log; id r = %orig; HBLogDebug(@" = %@", r); return r; }
%end
