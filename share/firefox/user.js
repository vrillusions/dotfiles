/* Make custom changes here
 *
 * DO NOT EDIT WITH NOTEPAD++ ON WINDOWS, IT WILL BREAK THE HARD LINK THAT EXISTS
 * GVIM ON WINDOWS WORKS CORRECTLY
 *
 * To make a manual change to preferences, you can visit the URL about:config
 * For more information, see http://www.mozilla.org/unix/customizing.html#prefs
 *
 * Any important changes you make in about:config should be transfered here in
 * case the generated file gets overwritten or reset
 */

// -- Security Options --
// These are the warnings you get on new installs, personally don't need to see them
//don't need to see these everytime I install a new version
user_pref("security.warn_entering_secure", false);
user_pref("security.warn_leaving_secure", false);
user_pref("security.warn_submit_insecure", false);
user_pref("security.warn_viewing_mixed", false);

// Set minimum tls version: (0 - SSLv3, 1 - TLSv1 (default in later versions), 2 - TLSv1.1, 3 - TLSv1.2)
// SSLv3 should be avoided due to POODLE attack
user_pref("security.tls.version.min", 3);

// Require that we pass OCSP validation or don't continue
user_pref("security.OCSP.require", true);

// Don't translate punycode
user_pref("network.IDN_show_punycode", true);

// Disable 3rd party cookies (0 - allows all, 1 - Only originating server,
// 2 - no cookies, 3 - cookies allowed based on "cookie P3P policy")
// 3 with now p3p policy is the same as saying allow 3rd party cookies "From visited" in UI
user_pref("network.cookie.cookieBehavior", 0);

// Keep cookies for: 0 - (default) supplied time, 1 - Ask, 2 - for browser session only
// 3 - number of days given in network.cookie.lifetime.days
// Set this to 2 and use permit cookies to whitelist sites that can store cookies normally
user_pref("network.cookie.lifetimePolicy", 2);

// Even if above options would normally keep 3rd party cookies longer, force
// them to be session cookies
user_pref("network.cookie.thirdparty.sessionOnly", true);
user_pref("network.cookie.thirdparty.nonsecureSessionOnly", true);

// These both make allowing self signed certs a little easier and prepopulates the accept
// dialog with url
user_pref("browser.xul.error_pages.expert_bad_cert", true);
user_pref("browser.ssl_override_behavior", 2);

// Don't support scripting in pdf
user_pref("pdfjs.enableScripting", false);


// -- Privacy / resource usage preferences --
// Don't do dns lookup when I hover over links
user_pref("network.dns.disablePrefetch", true);

// Don't initiate connections to those sites either
user_pref("network.http.speculative-parallel-limit", 0);

// Don't prefetch links that say they should be prefetched
user_pref("network.prefetch-next", false);

// Enable tracking protection (blocks sites that track visits across web)
user_pref("privacy.trackingprotection.enabled", true);
user_pref("privacy.trackingprotection.ui.enabled", true);

// How long to run a script before complaining. This seems to be an issue when I have
// a lot of tabs.  Default is 10 seconds
user_pref("dom.max_script_run_time", 20);

// Don't keep checking for captive portal
user_pref("network.captive-portal-service.enabled", false);

// Set the default action for various plugins.
// 0 - never activate
// 1 - ask to activate
// 2 - always activate
user_pref("plugin.state.flash", 1);

// Don't recommend extensions
// on addon page
user_pref("browser.discovery.enabled", false);
// when going to websites
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr", false);
// or anywhere else
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.addons", false);
user_pref("browser.newtabpage.activity-stream.asrouter.userprefs.cfr.features", false);

// Set rel=noopener for target=_blank (search for nooperner for reasoning) (in v65)
user_pref("dom.targetBlankNoOpener.enabled", true);


// -- Other UI tweaks not related to performance articles below --
// Don't use new tab page
user_pref("browser.newtabpage.introShown", true);
user_pref("browser.newtabpage.activity-stream.enabled", false);
user_pref("browser.newtabpage.enabled", false);
user_pref("browser.newtabpage.enhanced", false);
user_pref("browser.newtab.preload", false);

// Set default home page
user_pref("browser.startup.homepage", "https://www.google.com");
user_pref("browser.startup.page", 3);

// Open searches in new tab
user_pref("browser.search.openintab", true);
// Open bookmarks in new tab
user_pref("browser.tabs.loadBookmarksInTabs", true);

// Show the full URL in url bar
user_pref("browser.urlbar.trimURLs", false);

// backspace key action (0 - goes back a page, 1 - scrolls up a page, >1 - disables)
user_pref("browser.backspace_action", 2);
// disable image resizing
user_pref("browser.enable_automatic_image_resizing", false);

// closing last tab opens blank tab instead of closing browser
user_pref("browser.tabs.closeWindowWithLastTab", false);

// Put tabs underneath the url bar, where they belong
// No longer works in FF29+
//user_pref("browser.tabs.onTop", false);

// Don't warn when going to about:config
user_pref("general.warnOnAboutConfig", false);
// Mozilla decided in v72 to change it, but doesn't transfer preference, guess another reminder
// to check for what preferences change with each version... Thanks Mozilla
user_pref("browser.aboutConfig.showWarning", false);

// Spellcheck everywhere
user_pref("layout.spellcheckDefault", 2);

// Tab settings
user_pref("browser.search.openintab", true); // from searching
user_pref("browser.urlbar.openintab", true); // from url bar
user_pref("browser.tabs.opentabfor.middleclick", true); //when middle-click (default)
user_pref("browser.tabs.opentabfor.searchdialog", true); //from search dialog (when search box is hidden)

// Autoplay options
// As of v69 these settings got revamped to now block video and audio
// 0 - allow, 1 - block audio, 5 - block audio and video
user_pref("media.autoplay.default", 5);
// will autoplay media if you hover mouse over it. Unsure if that includes
// video with audio.  At least in v63.0 this doesn't seem to work correctly.
// For example with all above options accuweather.com will still autoplay some
// smaller videos with muted audio.  youtube.com will autoplay videos with
// sound as you navigate around site.  Reloading a page will respect the
// default autoplay option set above.  TL;DR: Don't expect it to always work.
user_pref("media.autoplay.enabled.user-gestures-needed", true);

// FF 4.0 settings
// When saving state between browser restarts it has saved session cookies for a
// while now.  In FF4.0 it now saves session data for HTTPS sites as well. This
// reverts back to pre 4.0 behavior of only saving state for non-https sites.
// NOTE: If you have your browser.startup.page set to restore previous session it
// will STILL save session cookies even if you set privacy_level_deferred to 2. It
// does seem possible to set both settings to 2 to will work.
// 0 - store for any site, 1 - only for non-https, 2 - never store
user_pref("browser.sessionstore.privacy_level", 2);
// What to do when quiting normally, default is 1
user_pref("browser.sessionstore.privacy_level_deferred", 2);

// Disable autoscroll when middle click and not over a link
user_pref("general.autoScroll", false);

// Don't prompt to rate firefox
user_pref("app.normandy.enabled", false);

// Be redirected to actaul release notes on update instead of pushing some service
user_pref("startup.homepage_override_url", "https://www.mozilla.org/firefox/%VERSION%/releasenotes/");
user_pref("app.releaseNotesURL", "https://www.mozilla.org/firefox/%VERSION%/releasenotes/");
// Also disable the what's new icon in header
user_pref("browser.messaging-system.whatsNewPanel.enabled", false);

// Force default search to DuckDuckGo as something seems to change it
user_pref("browser.urlbar.placeholderName", "DuckDuckGo");
user_pref("browser.urlbar.placeholderName.private", "DuckDuckGo");

// Show compact view option in customize
user_pref("browser.compactmode.show", true)


// -- Developer Tools settings --
user_pref("devtools.theme", "dark");
user_pref("devtools.netmonitor.persistlog", true);
user_pref("devtools.webconsole.persistlog", true);


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


// -- FF58 tweaks --
// Don't save passwords and logins
user_pref("signon.rememberSignons", false);
// Don't mind saving addresses but not credit cards
user_pref("dom.forms.autocomplete.formautofill", true);
user_pref("extensions.formautofill.firstTimeUse", false);
user_pref("extensions.formautofill.creditCards.enabled", false);

// UI tweaks
user_pref("browser.tabs.extraDragSpace", true);
user_pref("browser.uitour.enabled", false);
user_pref("browser.pocket.enabled", false);


// 2016-01-31: comment these out and reset in firefox since nowadays most
// computers would fall under the fast computer fast connection
////Tweaking Preferences from Mozilla KB
////http://kb.mozillazine.org/Category:Tweaking_preferences
//// some of these values were taken from the above page for fast computer fast connection
//// but verified that the settings still exist
//// Not using the pipelining options just in case that causes issues
////user_pref("network.http.pipelining", true);
////user_pref("network.http.proxy.pipelining", true);
////user_pref("network.http.pipelining.maxrequests", 8);
//user_pref("nglayout.initialpaint.delay", 0);
//user_pref("content.notify.interval", 750000);
//user_pref("content.max.tokenizing.time", 2250000);
//user_pref("content.interrupt.parsing", true);
//user_pref("content.notify.ontimer", true);
//user_pref("network.http.max-connections", 48);
//user_pref("network.http.max-connections-per-server", 16);
//user_pref("network.http.max-persistent-connections-per-proxy", 16);
//user_pref("network.http.max-persistent-connections-per-server", 8);
