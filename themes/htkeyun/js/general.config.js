!
function(t) {
    "use strict";
    var e, i;
    navigator.userAgent.match(/IEMobile\/10\.0/) && (e = document.createElement("style"), e.appendChild(document.createTextNode("@-ms-viewport{width:auto!important}")), document.querySelector("head").appendChild(e)),
    i = t.$app = {},
    i.basePath = "/lhavecms/",
    i.scriptDir = i.basePath + "themes/htkeyun/js/",
    i.skinDir = i.basePath + "themes/htkeyun/",
    i.common_module = "",
    i.controller = "",
    i.arguments = {},
    i.dateTime = new Date,
    i.retUrl = "",
    i.version = "1.1.0",
    i.scriptDirConversion = function() {
        var t = i.scriptDir;
        return t.substr(0, i.basePath.length) == i.basePath && (t = t.substr(i.basePath.length)),
        "./" + t
    } (),
    i.entrance = function() {
        return i.scriptDirConversion + "access.js"
    } (),
    i.createXHR = function() {
        var t, e, i;
        if ("undefined" != typeof XMLHttpRequest) return new XMLHttpRequest;
        if ("undefined" != typeof ActiveXObject) {
            if ("string" != typeof arguments.callee.activeXString) for (t = ["MSXML2.XMLHttp.6.0", "MSXML2.XMLHttp.3.0", "MSXML2.XMLHttp"], e = 0, i = t.length; e < i; e++) try {
                new ActiveXObject(t[e]),
                arguments.callee.activeXString = t[e];
                break
            } catch(t) {}
            return new ActiveXObject(arguments.callee.activeXString)
        }
        throw new Error("No XHR object available.")
    },
    i.isMobileAccess = function(t, e) {
        return ! (!/(android|bb\d+|meego).+mobile|avantgo|bada\/|blackberry|blazer|compal|elaine|fennec|hiptop|iemobile|ip(hone|od)|iris|kindle|lge |maemo|midp|mmp|mobile.+firefox|netfront|opera m(ob|in)i|palm( os)?|phone|p(ixi|re)\/|plucker|pocket|psp|series(4|6)0|symbian|treo|up\.(browser|link)|vodafone|wap|windows ce|xda|xiino/i.test(t) && !/1207|6310|6590|3gso|4thp|50[1-6]i|770s|802s|a wa|abac|ac(er|oo|s\-)|ai(ko|rn)|al(av|ca|co)|amoi|an(ex|ny|yw)|aptu|ar(ch|go)|as(te|us)|attw|au(di|\-m|r |s )|avan|be(ck|ll|nq)|bi(lb|rd)|bl(ac|az)|br(e|v)w|bumb|bw\-(n|u)|c55\/|capi|ccwa|cdm\-|cell|chtm|cldc|cmd\-|co(mp|nd)|craw|da(it|ll|ng)|dbte|dc\-s|devi|dica|dmob|do(c|p)o|ds(12|\-d)|el(49|ai)|em(l2|ul)|er(ic|k0)|esl8|ez([4-7]0|os|wa|ze)|fetc|fly(\-|_)|g1 u|g560|gene|gf\-5|g\-mo|go(\.w|od)|gr(ad|un)|haie|hcit|hd\-(m|p|t)|hei\-|hi(pt|ta)|hp( i|ip)|hs\-c|ht(c(\-| |_|a|g|p|s|t)|tp)|hu(aw|tc)|i\-(20|go|ma)|i230|iac( |\-|\/)|ibro|idea|ig01|ikom|im1k|inno|ipaq|iris|ja(t|v)a|jbro|jemu|jigs|kddi|keji|kgt( |\/)|klon|kpt |kwc\-|kyo(c|k)|le(no|xi)|lg( g|\/(k|l|u)|50|54|\-[a-w])|libw|lynx|m1\-w|m3ga|m50\/|ma(te|ui|xo)|mc(01|21|ca)|m\-cr|me(rc|ri)|mi(o8|oa|ts)|mmef|mo(01|02|bi|de|do|t(\-| |o|v)|zz)|mt(50|p1|v )|mwbp|mywa|n10[0-2]|n20[2-3]|n30(0|2)|n50(0|2|5)|n7(0(0|1)|10)|ne((c|m)\-|on|tf|wf|wg|wt)|nok(6|i)|nzph|o2im|op(ti|wv)|oran|owg1|p800|pan(a|d|t)|pdxg|pg(13|\-([1-8]|c))|phil|pire|pl(ay|uc)|pn\-2|po(ck|rt|se)|prox|psio|pt\-g|qa\-a|qc(07|12|21|32|60|\-[2-7]|i\-)|qtek|r380|r600|raks|rim9|ro(ve|zo)|s55\/|sa(ge|ma|mm|ms|ny|va)|sc(01|h\-|oo|p\-)|sdk\/|se(c(\-|0|1)|47|mc|nd|ri)|sgh\-|shar|sie(\-|m)|sk\-0|sl(45|id)|sm(al|ar|b3|it|t5)|so(ft|ny)|sp(01|h\-|v\-|v )|sy(01|mb)|t2(18|50)|t6(00|10|18)|ta(gt|lk)|tcl\-|tdg\-|tel(i|m)|tim\-|t\-mo|to(pl|sh)|ts(70|m\-|m3|m5)|tx\-9|up(\.b|g1|si)|utst|v400|v750|veri|vi(rg|te)|vk(40|5[0-3]|\-v)|vm40|voda|vulc|vx(52|53|60|61|70|80|81|83|85|98)|w3c(\-| )|webc|whit|wi(g |nc|nw)|wmlb|wonu|x700|yas\-|your|zeto|zte\-/i.test(t.substr(0, 4)))
    } (navigator.userAgent || navigator.vendor || window.opera),
    t.$app = i
} (window),
function(t, e) {
    void 0 !== e && e.config({
        base: $app.scriptDirConversion,
        paths: {
            feapply: "{CONTROLLERS}"
        },
        alias: {
            "es5-shim": "{LIB}/es5-shim.min",
            json: "{LIB}/json3",
            jquery: "{LIB}/jquery.min",
            lodash: "{LIB}/lodash.min",
            lhave: "{LIB}/lhave.min",
            swiper2: "{LIB_PLUGINS}/idangerous.swiper",
            "layer.dialog": "{LIB_JQUERY_PLUGINS}/layer/layer"
        },
        vars: {
            LIB: "library",
            LIB_JQUERY_PLUGINS: "library/jquery_plugins",
            LIB_PLUGINS: "library/plugins",
            CONTROLLERS: "controllers"
        },
        preload: [Function.prototype.bind ? "": "es5-shim", t.JSON ? "": "json", t.jQuery ? "": "jquery", t._ ? "": "lodash", "lhave"],
        map: [[/^(.*\.(?:css|js))(.*)$/i, "$1?t=" + +new Date]],
        debug: !1,
        charset: function(t) {
            return "utf-8"
        }
    })
} (window, "undefined" != typeof seajs ? seajs: void 0),
function(t) {
    "use strict";
    function e(t) {
        var e = function() {};
        return e.prototype = t.prototype || t,
        new e
    }
    function i(t, e, i) {
        var n, o;
        if (i) {
            n = {};
            for (o in t) o !== e && (n[o] = t[o])
        } else delete t[e];
        return n || t
    }
    function n(t, i, o) {
        if (!t || !i) return t || i || {};
        t = e(t),
        i = e(i);
        for (var r in i)"[object Object]" === Object.prototype.toString.call(i[r]) ? n(t[r], i[r]) : t[r] = o && t[r] ? t[r] : i[r];
        return t
    }
    function o(t) {
        var e, r, a = {};
        for (e = 0; e < t.length; e++)"function" == typeof t[e] && (t[e] = t[e].prototype),
        r = i(t[e], "initialize", !0),
        a = r.implement ? o(r.implement) : n(a, r);
        return a
    }
    var r = t.Class,
    a = t.Class = function(r) {
        var s, p, c, l, m;
        for (r = r || {},
        s = function() {
            return this.initialize ? this.initialize.apply(this, arguments) : p
        },
        r.implement && (p = t === this ? e(s.prototype) : this, c = r.implement, i(r, "implement"), r = n(r, o(c))), s.prototype = e(r), s.constructor = s, s._parent = e(r), l = 0, m = ["extend", "implement", "getOptions", "setOptions"]; l < m.length; l++) s[m[l]] = a[m[l]];
        return s
    };
    a.extend = function(t) {
        var e, r = this;
        t.implement && (this.prototype = n(this.prototype, o(t.implement)), i(t, "implement"));
        for (e in t) t[e] = "function" == typeof t[e] && /parent/.test(t[e].toString()) ?
        function(t, e) {
            return function() {
                return this.parent = r._parent[e],
                t.apply(this, arguments)
            }
        } (t[e], e) : t[e];
        return this._parent = n(this._parent, t, !0),
        this.prototype = n(this.prototype, t),
        this
    },
    a.implement = function(t) {
        return this.prototype = n(this.prototype, o(t))
    },
    a.getOptions = function() {
        return this.prototype.options || {}
    },
    a.setOptions = function(t) {
        return this.prototype.options = n(this.prototype.options, t)
    },
    a.noConflict = function() {
        return t.Class = r,
        a
    },
    a.version = "1.0"
} (window);