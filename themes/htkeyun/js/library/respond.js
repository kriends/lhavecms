/*! Respond.js v1.4.2: min/max-width media query polyfill
 * Copyright 2014 Scott Jehl
 * Licensed under MIT
 * https://j.mp/respondjs
 */
!function(e){"use strict";e.matchMedia=e.matchMedia||function(e,t){var n,s=e.documentElement,i=s.firstElementChild||s.firstChild,a=e.createElement("body"),r=e.createElement("div");return r.id="mq-test-1",r.style.cssText="position:absolute;top:-100em",a.style.background="none",a.appendChild(r),function(e){return r.innerHTML='&shy;<style media="'+e+'"> #mq-test-1 { width: 42px; }</style>',s.insertBefore(a,i),n=42===r.offsetWidth,s.removeChild(a),{matches:n,media:e}}}(e.document)}(this),function(e){"use strict";function t(){w(!0)}var n,s,i,a,r,o,l,m,d,h,u,c,p,f,g,y,x,E,w,v,S,T,C={};e.respond=C,C.update=function(){},n=[],s=function(){var t=!1;try{t=new e.XMLHttpRequest}catch(n){t=new e.ActiveXObject("Microsoft.XMLHTTP")}return function(){return t}}(),i=function(e,t){var n=s();n&&(n.open("GET",e,!0),n.onreadystatechange=function(){4!==n.readyState||200!==n.status&&304!==n.status||t(n.responseText)},4!==n.readyState&&n.send(null))},a=function(e){return e.replace(C.regex.minmaxwh,"").match(C.regex.other)},C.ajax=i,C.queue=n,C.unsupportedmq=a,C.regex={media:/@media[^\{]+\{([^\{\}]*\{[^\}\{]*\})+/gi,keyframes:/@(?:\-(?:o|moz|webkit)\-)?keyframes[^\{]+\{(?:[^\{\}]*\{[^\}\{]*\})+[^\}]*\}/gi,comments:/\/\*[^*]*\*+([^\/][^*]*\*+)*\//gi,urls:/(url\()['"]?([^\/\)'"][^:\)'"]+)['"]?(\))/g,findStyles:/@media *([^\{]+)\{([\S\s]+?)$/,only:/(only\s+)?([a-zA-Z]+)\s?/,minw:/\(\s*min\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,maxw:/\(\s*max\-width\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/,minmaxwh:/\(\s*m(in|ax)\-(height|width)\s*:\s*(\s*[0-9\.]+)(px|em)\s*\)/gi,other:/\([^\)]*\)/g},C.mediaQueriesSupported=e.matchMedia&&null!==e.matchMedia("only all")&&e.matchMedia("only all").matches,C.mediaQueriesSupported||(r=e.document,o=r.documentElement,l=[],m=[],d=[],h={},u=30,c=r.getElementsByTagName("head")[0]||o,p=r.getElementsByTagName("base")[0],f=c.getElementsByTagName("link"),E=function(){var e,t=r.createElement("div"),n=r.body,s=o.style.fontSize,i=n&&n.style.fontSize,a=!1;return t.style.cssText="position:absolute;font-size:1em;width:1em",n||(n=a=r.createElement("body"),n.style.background="none"),o.style.fontSize="100%",n.style.fontSize="100%",n.appendChild(t),a&&o.insertBefore(n,o.firstChild),e=t.offsetWidth,a?o.removeChild(n):n.removeChild(t),o.style.fontSize=s,i&&(n.style.fontSize=i),e=x=parseFloat(e)},w=function(t){var n,s,i,a,h,p,v,S,T,C,b,z="clientWidth",M=o[z],R="CSS1Compat"===r.compatMode&&M||r.body[z]||M,O={},k=f[f.length-1],q=(new Date).getTime();if(t&&g&&q-g<u)return e.clearTimeout(y),void(y=e.setTimeout(w,u));g=q;for(n in l)l.hasOwnProperty(n)&&(s=l[n],i=s.minw,a=s.maxw,h=null===i,p=null===a,v="em",i&&(i=parseFloat(i)*(i.indexOf(v)>-1?x||E():1)),a&&(a=parseFloat(a)*(a.indexOf(v)>-1?x||E():1)),s.hasquery&&(h&&p||!(h||R>=i)||!(p||R<=a))||(O[s.media]||(O[s.media]=[]),O[s.media].push(m[s.rules])));for(S in d)d.hasOwnProperty(S)&&d[S]&&d[S].parentNode===c&&c.removeChild(d[S]);d.length=0;for(T in O)O.hasOwnProperty(T)&&(C=r.createElement("style"),b=O[T].join("\n"),C.type="text/css",C.media=T,c.insertBefore(C,k.nextSibling),C.styleSheet?C.styleSheet.cssText=b:C.appendChild(r.createTextNode(b)),d.push(C))},v=function(e,t,n){var s,i,r,o,d,h,u,c,p=e.replace(C.regex.comments,"").replace(C.regex.keyframes,"").match(C.regex.media),f=p&&p.length||0;for(t=t.substring(0,t.lastIndexOf("/")),s=function(e){return e.replace(C.regex.urls,"$1"+t+"$2$3")},i=!f&&n,t.length&&(t+="/"),i&&(f=1),r=0;r<f;r++)for(i?(o=n,m.push(s(e))):(o=p[r].match(C.regex.findStyles)&&RegExp.$1,m.push(RegExp.$2&&s(RegExp.$2))),h=o.split(","),u=h.length,c=0;c<u;c++)d=h[c],a(d)||l.push({media:d.split("(")[0].match(C.regex.only)&&RegExp.$2||"all",rules:m.length-1,hasquery:d.indexOf("(")>-1,minw:d.match(C.regex.minw)&&parseFloat(RegExp.$1)+(RegExp.$2||""),maxw:d.match(C.regex.maxw)&&parseFloat(RegExp.$1)+(RegExp.$2||"")});w()},S=function(){if(n.length){var t=n.shift();i(t.href,function(n){v(n,t.href,t.media),h[t.href]=!0,e.setTimeout(function(){S()},0)})}},T=function(){var t,s,i,a,r;for(t=0;t<f.length;t++)s=f[t],i=s.href,a=s.media,r=s.rel&&"stylesheet"===s.rel.toLowerCase(),i&&r&&!h[i]&&(s.styleSheet&&s.styleSheet.rawCssText?(v(s.styleSheet.rawCssText,i,a),h[i]=!0):(/^([a-zA-Z:]*\/\/)/.test(i)||p)&&i.replace(RegExp.$1,"").split("/")[0]!==e.location.host||("//"===i.substring(0,2)&&(i=e.location.protocol+i),n.push({href:i,media:a})));S()},T(),C.update=T,C.getEmValue=E,e.addEventListener?e.addEventListener("resize",t,!1):e.attachEvent&&e.attachEvent("onresize",t))}(this);