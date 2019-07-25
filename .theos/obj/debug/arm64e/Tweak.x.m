#line 1 "Tweak.x"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SCLoginV2ViewController; 
static void (*_logos_orig$_ungrouped$SCLoginV2ViewController$viewDidAppear$)(_LOGOS_SELF_TYPE_NORMAL SCLoginV2ViewController* _LOGOS_SELF_CONST, SEL, _Bool); static void _logos_method$_ungrouped$SCLoginV2ViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SCLoginV2ViewController* _LOGOS_SELF_CONST, SEL, _Bool); static id (*_logos_meta_orig$_ungrouped$SCLoginV2ViewController$sharedInstance)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static id _logos_meta_method$_ungrouped$SCLoginV2ViewController$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 

#line 2 "Tweak.x"



static void _logos_method$_ungrouped$SCLoginV2ViewController$viewDidAppear$(_LOGOS_SELF_TYPE_NORMAL SCLoginV2ViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd, _Bool arg1) {
  UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Tweak." message:@"The tweak has been injected." delegate:self cancelButtonTitle:@":)" otherButtonTitles:@"Cool", nil];
[alert show];
  HBLogDebug(@"-[<SCLoginV2ViewController: %p> viewDidAppear:%d]: %@", self, arg1, (@"HELLLOO!111"));
  NSLog(@"HELLLOOO!");
  return _logos_orig$_ungrouped$SCLoginV2ViewController$viewDidAppear$(self, _cmd, arg1);
}

static id _logos_meta_method$_ungrouped$SCLoginV2ViewController$sharedInstance(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return _logos_meta_orig$_ungrouped$SCLoginV2ViewController$sharedInstance(self, _cmd);
}
























static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SCLoginV2ViewController = objc_getClass("SCLoginV2ViewController"); Class _logos_metaclass$_ungrouped$SCLoginV2ViewController = object_getClass(_logos_class$_ungrouped$SCLoginV2ViewController); MSHookMessageEx(_logos_class$_ungrouped$SCLoginV2ViewController, @selector(viewDidAppear:), (IMP)&_logos_method$_ungrouped$SCLoginV2ViewController$viewDidAppear$, (IMP*)&_logos_orig$_ungrouped$SCLoginV2ViewController$viewDidAppear$);MSHookMessageEx(_logos_metaclass$_ungrouped$SCLoginV2ViewController, @selector(sharedInstance), (IMP)&_logos_meta_method$_ungrouped$SCLoginV2ViewController$sharedInstance, (IMP*)&_logos_meta_orig$_ungrouped$SCLoginV2ViewController$sharedInstance);} }
#line 40 "Tweak.x"
