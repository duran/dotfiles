// ==UserScript==
// @name               Twitter to Nitter
// @include            *://twitter.com/*
// @run-at             document-start
// @grant              none
// ==/UserScript==

window.location.replace("https://nitter.net" + window.location.pathname);
