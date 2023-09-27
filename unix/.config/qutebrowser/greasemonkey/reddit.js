// ==UserScript==
// @name               Reddit to old Reddit
// @include            *://www.reddit.com/*
// @run-at             document-start
// @grant              none
// ==/UserScript==

window.location.replace("https://old.reddit.com" + window.location.pathname);
