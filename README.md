Wikipedia SOPA Blackout Web Archives
====================================

This repository contains web archives of the English (British) Wikipedia homepage during and after the SOPA Blackout.

* wikipedia-blackout contains the homepage from during the blackout.
* wikipedia-post-blackout contains the wikipedia homepage (Main Page) and the post-SOPA "thank you" page.

Each page is stored as a separate WARC archive, as collected using the wget-warc version of wget created by @ArchiveTeam.

TBA: Note on minor bug in wget concerning long filenames.

PhantomJS was used to render the pages and capture all dependencies... TBA More about how this was done, and the 'flashfreeze' project that has taken things further.

This is a very complex webpage, using various dynamic technologies during the load and render process, and so makes a challenging test case for web archiving. For example, because a later part of the process uses AJAX via jQuery to pull in the banner, playback even fails in a Memento enabled browser (e.g. [Memento for Chrome][3]) because jQuery itself blocks the apparent cross-domain AJAX request even before the browser plugin can redirect to the archival host. This means that playback will only work properly via Wayback's Proxy mode, but even then, this archived version may only render properly if you are based in the UK (due to GeoIP-based banner-switching logic in the JavaScript).

You can read more about [the blackout protest on Wikipedia][1]. Currently, you can also re-live the SOPA blackout on Wikipedia by using this [special URL that fires up the banner][2].

[1]: https://en.wikipedia.org/wiki/Sopa_blackout
[2]: https://en.wikipedia.org/?banner=blackout
[3]: https://chrome.google.com/webstore/detail/memento-time-travel/jgbfpjledahoajcppakbgilmojkaghgm
