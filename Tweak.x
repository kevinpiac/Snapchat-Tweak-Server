
%hook SCLoginV2ViewController

// Hooking a class method
- (void) viewDidAppear: (_Bool)arg1 {
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tweak." message:@"The tweak has been injected." delegate:self cancelButtonTitle:@":)" otherButtonTitles:@"Cool", nil];
[alert show];
  %log(@"HELLLOO!111");
  NSLog(@"HELLLOOO!");
  return %orig;
}

+ (id)sharedInstance {
	return %orig;
}

/*
// Hooking an instance method with an argument.
- (void)messageName:(int)argument {
	%log; // Write a message about this call, including its class, name and arguments, to the system log.

	%orig; // Call through to the original function with its original arguments.
	%orig(nil); // Call through to the original function with a custom argument.

	// If you use %orig(), you MUST supply all arguments (except for self and _cmd, the automatically generated ones.)
}

// Hooking an instance method with no arguments.
- (id)noArguments {
	%log;
	id awesome = %orig;
	[awesome doSomethingElse];

	return awesome;
}

// Always make sure you clean up after yourself; Not doing so could have grave consequences!
*/
%end
