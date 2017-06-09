!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):"function"==typeof define&&define.cmd?define(["jquery"],function(require,exports,t){e(require("jquery"))}):"object"==typeof module&&module.exports?module.exports=e(require("jquery")):e(jQuery)}(function($){$.fn.slide=function(e){return $.fn.slide.defaults={type:"slide",effect:"fade",autoPlay:!1,delayTime:500,interTime:2500,triggerTime:150,defaultIndex:0,titCell:".hd li",mainCell:".bd",targetCell:null,trigger:"mouseover",scroll:1,vis:1,titOnClassName:"on",autoPage:!1,prevCell:".prev",nextCell:".next",pageStateCell:".pageState",opp:!1,pnLoop:!0,easing:"swing",startFun:null,endFun:null,switchLoad:null,playStateCell:".playState",mouseOverStop:!0,defaultPlay:!0,returnDefault:!1},this.each(function(){var t,i,a,n,o,s,l,r,c,p,f,u,d,h,m,v,w,g,C,y,q,x=$.extend({},$.fn.slide.defaults,e),T=$(this),b=x.effect,k=$(x.prevCell,T),S=$(x.nextCell,T),I=$(x.pageStateCell,T),L=$(x.playStateCell,T),M=$(x.titCell,T),P=M.size(),D=$(x.mainCell,T),F=D.children().size(),j=x.switchLoad,O=$(x.targetCell,T),W=parseInt(x.defaultIndex),z=parseInt(x.delayTime),N=parseInt(x.interTime),A=(parseInt(x.triggerTime),parseInt(x.scroll)),H="false"!=x.autoPlay&&0!=x.autoPlay,U="false"!=x.opp&&0!=x.opp,Q="false"!=x.autoPage&&0!=x.autoPage,R="false"!=x.pnLoop&&0!=x.pnLoop,X="false"!=x.mouseOverStop&&0!=x.mouseOverStop,B="false"!=x.defaultPlay&&0!=x.defaultPlay,E="false"!=x.returnDefault&&0!=x.returnDefault,G=isNaN(x.vis)?1:parseInt(x.vis),J=!-[1]&&!window.XMLHttpRequest,K=0,V=0,Y=0,Z=0,_=x.easing,ee=null,te=null,ie=null,ae=x.titOnClassName,ne=M.index(T.find("."+ae)),oe=W=-1==ne?W:ne,se=W,le=W,re=F>=G?F%A!=0?F%A:A:0,ce="leftMarquee"==b||"topMarquee"==b,pe=function(){$.isFunction(x.startFun)&&x.startFun(W,P,T,$(x.titCell,T),D,O,k,S)},fe=function(){$.isFunction(x.endFun)&&x.endFun(W,P,T,$(x.titCell,T),D,O,k,S)},ue=function(){M.removeClass(ae),B&&M.eq(se).addClass(ae)};if("menu"==x.type)return B&&M.removeClass(ae).eq(W).addClass(ae),M.hover(function(){t=$(this).find(x.targetCell);var e=M.index($(this));te=setTimeout(function(){switch(W=e,M.removeClass(ae).eq(W).addClass(ae),pe(),b){case"fade":t.stop(!0,!0).animate({opacity:"show"},z,_,fe);break;case"slideDown":t.stop(!0,!0).animate({height:"show"},z,_,fe)}},x.triggerTime)},function(){switch(clearTimeout(te),b){case"fade":t.animate({opacity:"hide"},z,_);break;case"slideDown":t.animate({height:"hide"},z,_)}}),void(E&&T.hover(function(){clearTimeout(ie)},function(){ie=setTimeout(ue,z)}));if(0==P&&(P=F),ce&&(P=2),Q){if(F>=G?"leftLoop"==b||"topLoop"==b?P=F%A!=0?1+(F/A^0):F/A:(i=F-G,(P=1+parseInt(i%A!=0?i/A+1:i/A))<=0&&(P=1)):P=1,M.html(""),a="",1==x.autoPage||"true"==x.autoPage)for(n=0;n<P;n++)a+="<li>"+(n+1)+"</li>";else for(n=0;n<P;n++)a+=x.autoPage.replace("$",n+1);M.html(a),M=M.children()}if(F>=G)switch(D.children().each(function(){$(this).width()>Y&&(Y=$(this).width(),V=$(this).outerWidth(!0)),$(this).height()>Z&&(Z=$(this).height(),K=$(this).outerHeight(!0))}),o=D.children(),s=function(){var e;for(e=0;e<G;e++)o.eq(e).clone().addClass("clone").appendTo(D);for(e=0;e<re;e++)o.eq(F-e-1).clone().addClass("clone").prependTo(D)},b){case"fold":D.css({position:"relative",width:V,height:K}).children().css({position:"absolute",width:Y,left:0,top:0,display:"none"});break;case"top":D.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+G*K+'px"></div>').css({top:-W*A*K,position:"relative",padding:"0",margin:"0"}).children().css({height:Z});break;case"left":D.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+G*V+'px"></div>').css({width:F*V,left:-W*A*V,position:"relative",overflow:"hidden",padding:"0",margin:"0"}).children().css({float:"left",width:Y});break;case"leftLoop":case"leftMarquee":s(),D.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; width:'+G*V+'px"></div>').css({width:(F+G+re)*V,position:"relative",overflow:"hidden",padding:"0",margin:"0",left:-(re+W*A)*V}).children().css({float:"left",width:Y});break;case"topLoop":case"topMarquee":s(),D.wrap('<div class="tempWrap" style="overflow:hidden; position:relative; height:'+G*K+'px"></div>').css({height:(F+G+re)*K,position:"relative",padding:"0",margin:"0",top:-(re+W*A)*K}).children().css({height:Z})}l=function(e){var t=e*A;return e==P?t=F:-1==e&&F%A!=0&&(t=-F%A),t},r=function(e){var t,i,a,n,o=function(t){for(var i=t;i<G+t;i++)e.eq(i).find("img["+j+"]").each(function(){var e,t,i=$(this);if(i.attr("src",i.attr(j)).removeAttr(j),D.find(".clone")[0])for(e=D.children(),t=0;t<e.size();t++)e.eq(t).find("img["+j+"]").each(function(){$(this).attr(j)==i.attr("src")&&$(this).attr("src",$(this).attr(j)).removeAttr(j)})})};switch(b){case"fade":case"fold":case"top":case"left":case"slideDown":o(W*A);break;case"leftLoop":case"topLoop":o(re+l(le));break;case"leftMarquee":case"topMarquee":t="leftMarquee"==b?D.css("left").replace("px",""):D.css("top").replace("px",""),i="leftMarquee"==b?V:K,a=re,t%i!=0&&(n=Math.abs(t/i^0),a=1==W?re+n:re+n-1),o(a)}},c=function(e){var i,a,n;if(!B||oe!=W||e||ce){if(ce?W>=1?W=1:W<=0&&(W=0):(le=W,W>=P?W=0:W<0&&(W=P-1)),pe(),null!=j&&r(D.children()),O[0]&&(t=O.eq(W),null!=j&&r(O),"slideDown"==b?(O.not(t).stop(!0,!0).slideUp(z),t.slideDown(z,_,function(){D[0]||fe()})):(O.not(t).stop(!0,!0).hide(),t.animate({opacity:"show"},z,function(){D[0]||fe()}))),F>=G)switch(b){case"fade":D.children().stop(!0,!0).eq(W).animate({opacity:"show"},z,_,function(){fe()}).siblings().hide();break;case"fold":D.children().stop(!0,!0).eq(W).animate({opacity:"show"},z,_,function(){fe()}).siblings().animate({opacity:"hide"},z,_);break;case"top":D.stop(!0,!1).animate({top:-W*A*K},z,_,function(){fe()});break;case"left":D.stop(!0,!1).animate({left:-W*A*V},z,_,function(){fe()});break;case"leftLoop":i=le,D.stop(!0,!0).animate({left:-(l(le)+re)*V},z,_,function(){i<=-1?D.css("left",-(re+(P-1)*A)*V):i>=P&&D.css("left",-re*V),fe()});break;case"topLoop":i=le,D.stop(!0,!0).animate({top:-(l(le)+re)*K},z,_,function(){i<=-1?D.css("top",-(re+(P-1)*A)*K):i>=P&&D.css("top",-re*K),fe()});break;case"leftMarquee":a=D.css("left").replace("px",""),0==W?D.animate({left:++a},0,function(){D.css("left").replace("px","")>=0&&D.css("left",-F*V)}):D.animate({left:--a},0,function(){D.css("left").replace("px","")<=-(F+re)*V&&D.css("left",-re*V)});break;case"topMarquee":n=D.css("top").replace("px",""),0==W?D.animate({top:++n},0,function(){D.css("top").replace("px","")>=0&&D.css("top",-F*K)}):D.animate({top:--n},0,function(){D.css("top").replace("px","")<=-(F+re)*K&&D.css("top",-re*K)})}M.removeClass(ae).eq(W).addClass(ae),oe=W,R||(S.removeClass("nextStop"),k.removeClass("prevStop"),0==W&&k.addClass("prevStop"),W==P-1&&S.addClass("nextStop")),I.html("<span>"+(W+1)+"</span>/"+P)}},B&&c(!0),E&&T.hover(function(){clearTimeout(ie)},function(){ie=setTimeout(function(){W=se,B?c():"slideDown"==b?t.slideUp(z,ue):t.animate({opacity:"hide"},z,ue),oe=W},300)}),p=function(e){ee=setInterval(function(){U?W--:W++,c()},e||N)},f=function(e){ee=setInterval(c,e||N)},u=function(){X||!H||L.hasClass("pauseState")||(clearInterval(ee),p())},d=function(){(R||W!=P-1)&&(W++,c(),ce||u())},h=function(){(R||0!=W)&&(W--,c(),ce||u())},m=function(){clearInterval(ee),ce?f():p(),L.removeClass("pauseState")},v=function(){clearInterval(ee),L.addClass("pauseState")},H?ce?(U?W--:W++,f(),X&&D.hover(v,m)):(p(),X&&T.hover(v,m)):(ce&&(U?W--:W++),L.addClass("pauseState")),L.click(function(){L.hasClass("pauseState")?m():v()}),"mouseover"==x.trigger?M.hover(function(){var e=M.index(this);te=setTimeout(function(){W=e,c(),u()},x.triggerTime)},function(){clearTimeout(te)}):M.click(function(){W=M.index(this),c(),u()}),ce?(S.mousedown(d),k.mousedown(h),R&&(g=function(){w=setTimeout(function(){clearInterval(ee),f(N/10^0)},150)},C=function(){clearTimeout(w),clearInterval(ee),f()},S.mousedown(g),S.mouseup(C),k.mousedown(g),k.mouseup(C)),"mouseover"==x.trigger&&(S.hover(d,function(){}),k.hover(h,function(){}))):(S.click(d),k.click(h)),"auto"!=x.vis||1!=A||"left"!=b&&"leftLoop"!=b||(q=function(){J&&(D.width("auto"),D.children().width("auto")),D.parent().width("auto"),V=D.parent().width(),J&&D.parent().width(V),D.children().width(V),"left"==b?(D.width(V*F),D.stop(!0,!1).animate({left:-W*V},0)):(D.width(V*(F+2)),D.stop(!0,!1).animate({left:-(W+1)*V},0)),J||V==D.parent().width()||q()},$(window).resize(function(){clearTimeout(y),y=setTimeout(q,100)}),q())})}});