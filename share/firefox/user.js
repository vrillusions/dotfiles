/* Make custom changes here
 *
 * To make a manual change to preferences, you can visit the URL about:config
 * For more information, see http://www.mozilla.org/unix/customizing.html#prefs
 *
 * Any important changes you make in about:config should be transfered here in
 * case the generated file gets overwritten or reset
 */
 
// Security Options
// These are the warnings you get on new installs, personally don't need to see them
//don't need to see these everytime I install a new version
user_pref("security.warn_entering_secure", false);
user_pref("security.warn_leaving_secure", false);
user_pref("security.warn_submit_insecure", false);
user_pref("security.warn_viewing_mixed", false);

// Disable 3rd party cookies (0 - allows all, 1 - Only originating server (recommended), 
// 2 - no cookies, 3 - cookies allowed based on "cookie P3P policy")
user_pref('network.cookie.cookieBehavior', 1);

// Keep cookies for: 0 - (default) supplied time, 1 - Ask, 2 - for browser session only
// 3 - number of days given in network.cookie.lifetime.days
// Set this to 2 and use permit cookies to whitelist sites that can store cookies normally
user_pref("network.cookie.lifetimePolicy", 2);

// Other UI tweaks not related to performance articles below
// backspace key action (0 - goes back a page, 1 - scrolls up a page, >1 - disables)
user_pref("browser.backspace_action", 2);
// disable image resizing
user_pref("browser.enable_automatic_image_resizing", false);

// closing last tab opens blank tab instead of closing browser
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Put tabs underneath the url bar, where they belong
user_pref("browser.tabs.onTop", false);

// Don't warn when going to about:config
user_pref("general.warnOnAboutConfig", false);

// Spellcheck everywhere
user_pref("layout.spellcheckDefault", 2);

// Tab settings
user_pref("browser.search.openintab", true); //when searching
user_pref("browser.tabs.opentabfor.middleclick", true); //when middle-click (default)
user_pref("browser.tabs.opentabfor.searchdialog", true); //from search dialog (when search box is hidden)


/**
 * default 1. 1 - show all images, 2 - block all images, 3 - prevent third party images
 * permissions.default.image = 1
 */

// FF 4.0 settings
// When saving state between browser restarts it has saved session cookies for a
// while now.  In FF4.0 it now saves session data for HTTPS sites as well. This
// reverts back to pre 4.0 behavior of only saving state for non-https sites
// 0 - store for any site, 1 - only for non-https, 2 - never store
user_pref("browser.sessionstore.privacy_level", 1);
// What to do when quiting normally, default is 1
user_pref("browser.sessionstore.privacy_level_deferred", 1);


// see http://www.tweakfactor.com/articles/tweaks/firefoxtweak/4.html
// these are the quick and dirty ones to improve things
/**
 * These are outdated, see next section
 * user_pref("network.http.pipelining", true);
 * user_pref("network.http.pipelining.firstrequest", true);
 * user_pref("network.http.pipelining.maxrequests", 8);
 * user_pref("nglayout.initialpaint.delay", 0);
 */
// other settings recommended by that site that don't necessarily deal with performance
// (verified they do exist as of Sept 14, 2007
user_pref("plugin.expose_full_path", true);


//Tweaking Preferences from Mozilla KB
//http://kb.mozillazine.org/Category:Tweaking_preferences
// some of these values were taken from the above page for fast computer fast connection
// but verified that the settings still exist
// Not using the pipelining options just in case that causes issues
//user_pref("network.http.pipelining", true);
//user_pref("network.http.proxy.pipelining", true);
//user_pref("network.http.pipelining.maxrequests", 8);
user_pref("nglayout.initialpaint.delay", 0);
user_pref("content.notify.interval", 750000);
user_pref("content.max.tokenizing.time", 2250000); 
user_pref("content.interrupt.parsing", true);
user_pref("content.notify.ontimer", true); 
user_pref("network.http.max-connections", 48);
user_pref("network.http.max-connections-per-server", 16);
user_pref("network.http.max-persistent-connections-per-proxy", 16);
user_pref("network.http.max-persistent-connections-per-server", 8); 
