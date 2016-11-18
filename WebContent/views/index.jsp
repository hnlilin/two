<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="font-size: 54px;" data-dpr="1">
<head>
<%
	String path = request.getContextPath();
	request.setAttribute("path", path);
%>
<meta charset="utf-8">
<link rel="dns-prefetch" href="//s.geilicdn.com">
<meta name="viewport"
	content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
<meta content="telephone=no" name="format-detection">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<title>Teaffee 茶与啡时光</title>
<link href="//s.geilicdn.com/shop/css/index/default.4843d28a.css"
	type="text/css" rel="stylesheet">
<script src="http://static.koudai.com/analysis/piwik.js" async=""
	defer="" type="text/javascript"></script>
<script>
            // 加载piwiki 组件，便于上传onerrorlog
            (function (root, factory) {
                if (typeof define === 'function' && define.amd) {
                    // AMD. Register as an anonymous module.
                    define([], function () {
                        return factory();
                    });
                } else if (typeof define === 'function') {
                    // CMD. 
                    define(function(require, exports, module){
                        return factory();
                    });
                } else if (typeof module === 'object' && module.exports) {
                    // Node. Does not work with strict CommonJS, but
                    // only CommonJS-like enviroments that support module.exports,
                    // like Node.
                    module.exports = factory();
                } else {
                    // Browser globals
                    root.globalPiwik = factory();
                }
            }(this, function () {
                // Just return a value to define the module export.
                // This example returns an object, but the module
                // can return a function as the exported value.

                //piwik api地址 //developer.piwik.org/api-reference/tracking-javascript
                //获取piwik.js日志上报服务地址, 附加统计需要的业务线的cookie信息
                var logServerBaseUrl = (function() {
                    function _getCookie(name){
                        var cookie_start = document.cookie.indexOf(name+"="),cookie_end = document.cookie.indexOf(";",cookie_start);
                        return cookie_start == -1 ? "" : unescape(document.cookie.substring(cookie_start + name.length + 1, (cookie_end > cookie_start ? cookie_end : document.cookie.length)));
                    }
                    //获取买家id，默认为-1
                    function getUserID(){
                        return encodeURIComponent(_getCookie("WD_b_id")) || "-1";
                    }
                    //获取卖家id，默认为-1
                    function getSellerID() {
                        return encodeURIComponent(_getCookie("WD_s_id")) || "-1";
                    }
                    return document.location.protocol + '//analysis.koudai.com/index.php?' + 'userid='+getUserID() + '&sellerid=' + getSellerID();
                })();


                (function(){
                    window._paq = [];
                    // _paq.push(['setCustomVariable',1,"appname","vdian.com","visit"]); // Set a custom variable.,存储在_cvar
                    // _paq.push(['trackPageView']); // Logs a visit to this page
                    // _paq.push(['enableLinkTracking']); //Install link tracking on all applicable link elements
                    // _paq.push(['setTrackerUrl', logServerBaseUrl]);
                    // _paq.push(['setSiteId', 1]); // Specify the website ID. Redundant: can be specified in getTracker() constructor.
                    // var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
                    // g.type='text/javascript';
                    // g.defer=true;
                    // g.async=true;
                    // g.src= document.location.protocol === 'https:' ? 'https://analysis.koudai.com/piwik.js' : '//static.koudai.com/analysis/piwik.js';
                    // s.parentNode.insertBefore(g,s);
                })();

                //封装的统一的log方法
                function paq(des){
                    var description = des.split(";")[0];
                    var cate = des.split(";")[1] || "";
                    _paq.push(['trackEvent', description, 'click', cate]);
                }

                //封装统一的上报错误日志方法
                function report(content) {
                    paq('wdfe_' + content);
                }

                return {
                    paq: paq,
                    report: report
                };
            }));
            //监控 onerror事件
            window.onerror = function(message, url, line) {
                globalPiwik && globalPiwik.report('window_onerror|'+'Error: ' + message + '|Script: ' + url + '|Line: ' + line+'|Page: '+window.location.href+'|UA: '+window.navigator.userAgent);
            };
            ;(function(win) {
                var doc = win.document;
                var docEl = doc.documentElement;
                var metaEl = doc.querySelector('meta[name="viewport"]');
                var flexibleEl = doc.querySelector('meta[name="flexible"]');
                var dpr = 0;
                var scale = 0;
                var tid;
                var flexible = win.flexible || (win.flexible={});
                
                if (metaEl) {
                    var match = metaEl.getAttribute('content').match(/initial\-scale=([\d\.]+)/);
                    if (match) {
                        scale = parseFloat(match[1]);
                        dpr = parseInt(1 / scale);
                    }
                } else if (flexibleEl) {
                    var content = flexibleEl.getAttribute('content');
                    if (content) {
                        var initialDpr = content.match(/initial\-dpr=([\d\.]+)/);
                        var maximumDpr = content.match(/maximum\-dpr=([\d\.]+)/);
                        if (initialDpr) {
                            dpr = parseFloat(initialDpr[1]);
                            scale = parseFloat((1 / dpr).toFixed(2));    
                        }
                        if (maximumDpr) {
                            dpr = parseFloat(maximumDpr[1]);
                            scale = parseFloat((1 / dpr).toFixed(2));    
                        }
                    }
                }

                if (!dpr && !scale) {
                    var isAndroid = win.navigator.appVersion.match(/android/gi);
                    var isIPhone = win.navigator.appVersion.match(/iphone/gi);
                    var devicePixelRatio = win.devicePixelRatio;
                    if (isIPhone) {
                        // iOS下，对于2和3的屏，用2倍的方案，其余的用1倍方案
                        if (devicePixelRatio >= 3 && (!dpr || dpr >= 3)) {                
                            dpr = 3;
                        } else if (devicePixelRatio >= 2 && (!dpr || dpr >= 2)){
                            dpr = 2;
                        } else {
                            dpr = 1;
                        }
                    } else {
                        // 其他设备下，仍旧使用1倍的方案
                        dpr = 1;
                    }
                    scale = 1 / dpr;
                }

                docEl.setAttribute('data-dpr', dpr);
                if (!metaEl) {
                    metaEl = doc.createElement('meta');
                    metaEl.setAttribute('name', 'viewport');
                    metaEl.setAttribute('content', 'initial-scale=' + scale + ', maximum-scale=' + scale + ', minimum-scale=' + scale + ', user-scalable=no');
                    if (docEl.firstElementChild) {
                        docEl.firstElementChild.appendChild(metaEl);
                    } else {
                        var wrap = doc.createElement('div');
                        wrap.appendChild(metaEl);
                        doc.write(wrap.innerHTML);
                    }
                }

                function refreshRem(){
                    var width = docEl.getBoundingClientRect().width;
                    if (width / dpr > 540) {
                        width = 540 * dpr;
                    }
                    var rem = width / 10;
                    docEl.style.fontSize = rem + 'px';
                    flexible.rem = win.rem = rem;
                }

                win.addEventListener('resize', function() {
                    clearTimeout(tid);
                    tid = setTimeout(refreshRem, 300);
                }, false);
                win.addEventListener('pageshow', function(e) {
                    if (e.persisted) {
                        clearTimeout(tid);
                        tid = setTimeout(refreshRem, 300);
                    }
                }, false);

                if (doc.readyState === 'complete') {
                    doc.body.style.fontSize = 12 * dpr + 'px';
                } else {
                    doc.addEventListener('DOMContentLoaded', function(e) {
                        doc.body.style.fontSize = 12 * dpr + 'px';
                    }, false);
                }
                

                refreshRem();

                flexible.dpr = win.dpr = dpr;
                flexible.refreshRem = refreshRem;
                flexible.rem2px = function(d,fixRem) {
                    var rem = fixRem || this.rem;
                    var val = parseFloat(d) * rem;
                    if (typeof d === 'string' && d.match(/rem$/)) {
                        val += 'px';
                    }
                    return val;
                }
                flexible.px2rem = function(d,fixRem) {
                    var rem = fixRem || this.rem;
                    var val = parseFloat(d) / rem;
                    if (typeof d === 'string' && d.match(/px$/)) {
                        val += 'rem';
                    }
                    return val;
                }

            })(window,{});
            function loadMainImg(img) {
                /*
                 * 屏幕宽度小于等于480， w = 480
                 屏幕宽度大于480 & 小于等于640， w= 640
                 屏幕宽度大于640 & 小于等于800， w= 800
                 屏幕宽度大于800， w= 1080
                 * */

                var deviceWidth = document.body.clientWidth;
                if (deviceWidth <= 240) {
                    deviceWidth = 480
                } else if (deviceWidth > 240 && deviceWidth <= 320) {
                    deviceWidth = 640
                } else if (deviceWidth > 320 && deviceWidth <= 540) {
                    deviceWidth = 800
                } else {
                    deviceWidth = 1080
                }

                url = img.getAttribute('data-src').replace('?w=480', '?w=' + deviceWidth);

                img.src = url;
            }
        </script>
<style type="text/css">.ui-toast-mask{width:100%;height:100%;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,0.6);z-index:10001}.ui-toast-box{background:#fff;position:fixed;top:50%;width:240px;padding:15px 30px;box-sizing:border-box;text-align:center;margin-top:-20px;left:50%;margin-left:-120px;-webkit-border-radius:4px;border-radius:4px;z-index:10;-webkit-transition:all .2s linear;transition:all .2s linear;-webkit-animation:fadeIn .3s ease both;animation:fadeIn .3s ease both;box-sizing:border-box;font-size:16px;box-shadow:0 0 10px rgba(0,0,0,0.2)}.ui-toast-box p{color:#333;font-size:16px}.ui-toast-mask-hide .ui-toast-box{-webkit-animation:fadeOut .3s ease both;animation:fadeOut .3s ease both;-webkit-transition:all .3s;transition:all .3s}@-webkit-keyframes fadeIn{from{opacity:0;-webkit-transform:scale(.3)}100%{opacity:.9}}@-webkit-keyframes fadeOut{from{opacity:.9}100%{opacity:0;-webkit-transform:scale(.3)}}</style><style type="text/css">.ui-alert-box .ui-alert-btn,.ui-dialog-box .ui-dialog-btn{display:inline-block;padding:4px 12px;margin-bottom:0;font-size:16px;line-height:20px;color:#333;text-align:center;text-shadow:0 1px 1px rgba(255,255,255,0.75);vertical-align:middle;cursor:pointer;background-color:#f5f5f5;background-image:-moz-linear-gradient(top,#fff,#e6e6e6);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fff),to(#e6e6e6));background-image:-webkit-linear-gradient(top,#fff,#e6e6e6);background-image:-o-linear-gradient(top,#fff,#e6e6e6);background-image:linear-gradient(to bottom,#fff,#e6e6e6);background-repeat:repeat-x;border:1px solid #ccc;border-color:#e6e6e6 #e6e6e6 #bfbfbf;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);border-bottom-color:#b3b3b3;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-alert-box .ui-alert-btn:hover,.ui-dialog-box .ui-dialog-btn:hover,.ui-confirm-box .ui-confirm-btn:hover{cursor:pointer}.ui-alert-mask,.ui-dialog-mask{width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,0.5);z-index:10001}.ui-confirm-mask{display:-webkit-box;display:-webkit-flex;display:-moz-flex;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;-webkit-align-items:center;-moz-align-items:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;-moz-justify-content:center;justify-content:center;width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,.7);z-index:2}.ui-confirm-mask{z-index:1001}.ui-alert-header,.ui-dialog-header,.ui-confirm-header{padding:9px 15px;position:relative}.ui-alert-header h3,.ui-dialog-header h3,.ui-confirm-header h3{margin:0;text-align:center;font-size:20px;color:#3f3f3f}.ui-alert-close,.ui-dialog-close,.ui-confirm-close{position:absolute;top:5px;right:10px;font-size:30px;width:35px;font-weight:bold;line-height:30px;color:#000;text-shadow:0 1px 0 #fff;opacity:.2;cursor:pointer;background:transparent;border:0;-webkit-appearance:none}.ui-alert-close:hover,.ui-dialog-close:hover,.ui-confirm-close:hover{cursor:hand}.ui-alert-box,.ui-dialog-box{background:#fff;position:fixed;top:50%;margin-top:-80px;width:240px;left:50%;margin-left:-120px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;z-index:10;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:bounceIn .3s both;animation:bounceIn .3s both}.ui-confirm-box{position:relative;background:#fff;border-radius:.078125rem;z-index:1;width:60%;display:block;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:all .3s both;animation:all .3s both}.ui-alert-body,.ui-dialog-body,.ui-confirm-body{position:relative;padding:10px 20px 20px;overflow:hidden;box-sizing:border-box;max-height:260px;overflow-y:auto}.ui-alert-body p,.ui-dialog-body p,.ui-confirm-body p{font-size:14px;text-align:center;color:#3f3f3f}.ui-alert-footer,.ui-dialog-footer{padding:14px 15px 15px;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;-webkit-box-shadow:inset 0 1px 0 #fff;box-shadow:inset 0 1px 0 #fff}.ui-alert-footer .ui-alert-btn,.ui-dialog-footer .ui-dialog-btn{font-size:16px;line-height:26px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-confirm-footer{padding:0;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;overflow:hidden;box-shadow:inset 0 1px 0 #fff;display:-webkit-box}.ui-confirm-footer .ui-confirm-btn{background:#fff;color:#0079ff;border-top:#e3e3e3 solid 1px;border-bottom:0;height:46px;line-height:46px;font-size:16px;box-flex:1;-webkit-box-flex:1;display:block;-webkit-border-radius:0;border-radius:0;padding:0 12px}.ui-confirm-footer .ui-confirm-btn:first-child{border-right:#e3e3e3 solid 1px;border-left:none}.ui-confirm-footer .ui-confirm-btn:last-child{border-right:0;border-left:none}@-webkit-keyframes bounceIn{from{-webkit-transform:scale(0.8);opacity:0}50%{-webkit-transform:scale(1.05);opacity:1}100%{-webkit-transform:scale(1);opacity:1}}</style><style type="text/css">.ui-alert-box .ui-alert-btn,.ui-dialog-box .ui-dialog-btn{display:inline-block;padding:4px 12px;margin-bottom:0;font-size:16px;line-height:20px;color:#333;text-align:center;text-shadow:0 1px 1px rgba(255,255,255,0.75);vertical-align:middle;cursor:pointer;background-color:#f5f5f5;background-image:-moz-linear-gradient(top,#fff,#e6e6e6);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fff),to(#e6e6e6));background-image:-webkit-linear-gradient(top,#fff,#e6e6e6);background-image:-o-linear-gradient(top,#fff,#e6e6e6);background-image:linear-gradient(to bottom,#fff,#e6e6e6);background-repeat:repeat-x;border:1px solid #ccc;border-color:#e6e6e6 #e6e6e6 #bfbfbf;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);border-bottom-color:#b3b3b3;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-alert-box .ui-alert-btn:hover,.ui-dialog-box .ui-dialog-btn:hover,.ui-confirm-box .ui-confirm-btn:hover{cursor:pointer}.ui-alert-mask,.ui-dialog-mask{width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,0.5);z-index:10001}.ui-confirm-mask{display:-webkit-box;display:-webkit-flex;display:-moz-flex;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;-webkit-align-items:center;-moz-align-items:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;-moz-justify-content:center;justify-content:center;width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,.7);z-index:2}.ui-confirm-mask{z-index:1001}.ui-alert-header,.ui-dialog-header,.ui-confirm-header{padding:9px 15px;position:relative}.ui-alert-header h3,.ui-dialog-header h3,.ui-confirm-header h3{margin:0;text-align:center;font-size:20px;color:#3f3f3f}.ui-alert-close,.ui-dialog-close,.ui-confirm-close{position:absolute;top:5px;right:10px;font-size:30px;width:35px;font-weight:bold;line-height:30px;color:#000;text-shadow:0 1px 0 #fff;opacity:.2;cursor:pointer;background:transparent;border:0;-webkit-appearance:none}.ui-alert-close:hover,.ui-dialog-close:hover,.ui-confirm-close:hover{cursor:hand}.ui-alert-box,.ui-dialog-box{background:#fff;position:fixed;top:50%;margin-top:-80px;width:240px;left:50%;margin-left:-120px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;z-index:10;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:bounceIn .3s both;animation:bounceIn .3s both}.ui-confirm-box{position:relative;background:#fff;border-radius:.078125rem;z-index:1;width:60%;display:block;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:all .3s both;animation:all .3s both}.ui-alert-body,.ui-dialog-body,.ui-confirm-body{position:relative;padding:10px 20px 20px;overflow:hidden;box-sizing:border-box;max-height:260px;overflow-y:auto}.ui-alert-body p,.ui-dialog-body p,.ui-confirm-body p{font-size:14px;text-align:center;color:#3f3f3f}.ui-alert-footer,.ui-dialog-footer{padding:14px 15px 15px;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;-webkit-box-shadow:inset 0 1px 0 #fff;box-shadow:inset 0 1px 0 #fff}.ui-alert-footer .ui-alert-btn,.ui-dialog-footer .ui-dialog-btn{font-size:16px;line-height:26px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-confirm-footer{padding:0;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;overflow:hidden;box-shadow:inset 0 1px 0 #fff;display:-webkit-box}.ui-confirm-footer .ui-confirm-btn{background:#fff;color:#0079ff;border-top:#e3e3e3 solid 1px;border-bottom:0;height:46px;line-height:46px;font-size:16px;box-flex:1;-webkit-box-flex:1;display:block;-webkit-border-radius:0;border-radius:0;padding:0 12px}.ui-confirm-footer .ui-confirm-btn:first-child{border-right:#e3e3e3 solid 1px;border-left:none}.ui-confirm-footer .ui-confirm-btn:last-child{border-right:0;border-left:none}@-webkit-keyframes bounceIn{from{-webkit-transform:scale(0.8);opacity:0}50%{-webkit-transform:scale(1.05);opacity:1}100%{-webkit-transform:scale(1);opacity:1}}</style></head>
<body style="font-size: 12px; overflow: visible;" class="ignore_weixin_login theme-default">
<div id="sortLoading hide"></div>

<!--<div class="head_nav ">-->
<!--    <div class="head_wrapper_top"></div>-->
<!--    <div class="head_wrapper">-->
<!--                    <div id="common_hd" style="padding-left: 68px;">-->
<!--                <a id="hd_back" class="abs hide">返回</a>-->
<!--                <a id="common_hd_logo" class="t_hide abs common_hd_logo_noBack">微店</a>-->
<!--                                <div class="my_shop for_gaq active" data-for-gaq="点击我的微店;店铺页">订单中心<span></span></div>-->
<!--                <a class="new_cart_btn for_gaq icon-cart active" data-for-gaq="加入购物车-top-店铺页" href="/cart/index.php?referrerURl=shopid_173391261"><span></span></a>-->
<!--            </div>-->
<!--        </div>-->
<!--    </div>-->
<div id="wd_show">
    <!--div class="tabs hide">
    <a href="#shop" id="itemList" rel="/" class="cur for_gaq" data-for-gaq="首页-商品">商品</a>
    <span>|</span>
    <a href="#notice" id="itemNotice" rel="/others/diary/timeline.html" class="for_gaq" data-for-gaq="首页-店铺动态">店铺动态</a>
</div-->
    <div id="js_addCart">
        <section id="index_sec" class="">
            <div><div class="J-component" data-type="6" data-sectionid="601">
<div class="header-banner rel style-601" style="background-image: url(http://wd.geilicdn.com/vshop173391261-1465214394.jpeg?w=640&amp;h=330&amp;cp=1)">
</div></div><div class="J-component" data-type="8" data-sectionid="802"><section id="J-shop-info" class="shop-info center">

    <!--顶部店铺信息容器-->
<!--    <div id="index_hd_abs" class="wrap rel">-->
<!--            <h3 id="vshop_icon" class="avatar"><img src="http://wd.geilicdn.com/vshop173391261-1465222890.jpeg?w=250&amp;h=250&amp;cp=1" height="100%" width="100%">-->
<!--                -->
<!--            </h3>-->
<!---->
<!--            <div id="index_hd_shop_info" class="field index_hd_shop_info_line2">-->
<!--                <h1 id="hd_name" data-name="Teaffee 茶与啡时光" class="name over_hidden block">Teaffee 茶与啡时光</h1>-->
<!--                -->
<!---->
<!--                <div id="hd_level_cert" class="cert-level hd_info_childrens">-->
<!--                    -->
<!--                     -->
<!--                </div>-->
<!--                -->
<!--                    <div class="over_hidden ellipsis hd_info_childrens collect"> <em id="hd_fav_count_em">3</em> 人收藏</div>-->
<!--                -->
<!--            </div>-->
<!---->
<!--            -->
<!--            <div id="index_cert_box" class="cert-box " style="text-align:center;margin: 5px auto;"><a href="/certDetails.html?userid=173391261"><span class="guarantee-icon g_danbao">微店担保</span><span class="guarantee-icon g_cashondelivery">货到付款</span></a></div>-->
<!--            -->
<!--    -->
<!--    <div id="hd_intro" class="intro ">-->
<!--        -->
<!--        <p id="hd_note">茶与啡英式下午茶配送，主力打造品质安心、口味纯香的饮品点心系列。主营茶饮、咖啡、奶制品系列，辅销家庭式手作甜点、西式简餐等。店主是一位资深吃货+海归妹子，凭借天生对美食的喜爱与追求，亲身钻研茶啡制作、西点烘焙、西餐改良。致力于让喜爱品尝西方美食的广大东方消费者，都能以亲民的价格尝到最正宗最鲜活的茶啡、美食系列</p>-->
<!--        -->
<!--    </div>-->
<!---->
<!---->
<!--    <div class="shop-dynamic">店铺动态</div>-->
<!--    </div>-->
</section></div>
<!--<div style="overflow: hidden;" class="J-component" data-type="10" data-sectionid="1001"><div id="shopCoupons" style="">-->

    <!-- coupon feature -->
<!--    <div style="display: block;" class="coupons-container hide"><div style="width: 133px; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);" class="iscroll-wrapper"><ul class="coupons-list"><li class="coupon" data-id="2170519" data-limit="1" status="已领光"><div class="coupon-info center" title="立即领取"><div class="coupon-amount  ">￥3</div><div class="coupon-limit ellipsis">满50可用</div></div></li></ul></div></div>-->
    <!--满包邮 by abel-->
    
        
<!--        <div style="margin-top: 15px;" class="free-postage promotion-panel">-->
<!--        <div class="promotion-content">-->
<!--            <span class="tag">满包邮</span>-->
<!--            <em class="desc">全店满30.00元包邮</em>-->
<!--        </div>-->
<!--        </div>-->
        
    
    
<!--</div></div>-->

<div class="J-component" data-type="2" data-sectionid="3"><div id="shopListBox">                                <div id="shopList">                                    <div style="display: none;" id="index_loading" class="loading">&nbsp;</div>                                    <div style="display: block;" class="list-block hide">                                        <h3 class="list-title"><p class="content">店长推荐</p></h3>                                        <ul class="list-wrapper" id="top_ul"><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path}/views/d1.jsp?itemID=1872265566&p=-1" data-for-gaq="普通商品;1872265566">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">Homemade Nougat 牛轧糖【请提前一天预定】

原料：进口奶粉、安佳黄油、蔓越莓干、花生仁、白砂糖等

私厨限量版的牛轧糖，全部采用上等进口配料制作，一锅成型糖块可切做50枚牛轧糖左右（2袋装），加以卡哇伊的糖果纸包装、萌萌哒礼盒袋装饰，馈赠亲友或是自留食用均可哟！</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥35.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1872265566" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5393555445,&quot;item_id&quot;:1872265566,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;花生牛轧（礼袋包装）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5393555446,&quot;item_id&quot;:1872265566,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;蔓越莓牛轧（礼袋包装）&quot;}]" data-stock="20"></div>
                
            
        </div>
    </a>
</li><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path}/views/d2.jsp?itemID=1872036792&amp;p=-1" data-for-gaq="普通商品;1872036792">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465225028530-ABCCD-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465225028530-ABCCD-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">Cheese Cake 芝士蛋糕【为了保证口感，请至少提前一天预定】

喜欢浓浓起士，却又不知如何挑选芝士蛋糕的亲，不妨试试这款独家秘制的【重芝士蛋糕】哟～

实打实的原材料，消化饼干做底，进口牛奶、安佳黄油、安佳奶油奶酪等高级配方做面，加上完美的比例融合搅拌成型，美味无敌的芝士蛋糕出炉啦！</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥16.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1872036792" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392307883,&quot;item_id&quot;:1872036792,&quot;price&quot;:&quot;16.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;1/8块 6寸芝士蛋糕&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392307884,&quot;item_id&quot;:1872036792,&quot;price&quot;:&quot;128.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:5,&quot;title&quot;:&quot;6寸芝士蛋糕（心形）&quot;}]" data-stock="15"></div>
                
            
        </div>
    </a>
</li><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path}/views/d3.jsp?itemID=1871977714&amp;p=-1" data-for-gaq="普通商品;1871977714">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465221690325-dbc0a-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465221690325-dbc0a-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">微笑Pasta 意面系列</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥35.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1871977714" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392046422,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;咖喱牛肉意面&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392046423,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;意式番茄火腿面&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392054170,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;奶油蘑菇鸡蓉面&quot;}]" data-stock="150"></div>
                
            
        </div>
    </a>
</li><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path }/views/d4.jsp?itemID=1871959619&amp;p=-1" data-for-gaq="普通商品;1871959619">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465220663775-40953-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465220663775-40953-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">单品咖啡

意式浓缩咖啡选用illy精品咖啡豆研磨，配以意式咖啡机萃取，醇香浓郁，回味无穷。

手冲咖啡采用精选咖啡豆现磨加工后，配以手冲式咖啡壶和原木过滤纸，取其咖啡精华，先苦后干，口留余香。  （可选豆：曼特宁，耶加雪菲，肯尼亚，埃塞俄比亚etc）

建议不加奶不加糖品味咖啡原香。如有需求，请到配料区下单，谢谢！</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥15.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1871959619" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987400,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;美式咖啡&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987401,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;意式浓缩&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987402,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;25.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;手冲咖啡（请备注咖啡豆）&quot;}]" data-stock="300"></div>
                
            
        </div>
    </a>
</li><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path }/views/d5.jsp?itemID=1871946451&amp;p=-1" data-for-gaq="普通商品;1871946451">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465219909440-70f93-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465219909440-70f93-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">Coffee 意式拉花风情 12oz/350ml

精选FCR品牌咖啡豆，原豆均采用高配的工艺烘焙，厦门本地配送，保证咖啡豆最新鲜的口感。根据您所下单的不同咖啡现加工研磨出不同大小的颗粒，以实现最丰富多层的口味。

在原单基础上需额外加酱或加可可粉，需至配料区另外购买。
</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥20.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1871946451" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946103,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;巧克力摩卡&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946104,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;榛果拿铁&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946105,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;20.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;原味拿铁&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946106,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;20.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;卡布奇诺&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946107,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;可可拿铁&quot;}]" data-stock="500"></div>
                
            
        </div>
    </a>
</li><li class="list-item normal-cart">
    <a class="link for_gaq" href="${path }/views/d6.jsp?itemID=1871924607&amp;p=-1" data-for-gaq="普通商品;1871924607">
        <div class="img-wrapper">
            <div class="img-inner">
                <span class="sellerOut">
                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465218623696-702DB-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465218623696-702DB-s1.jpg?w=400&amp;h=400&amp;cp=1">
                    
                </span>
                <p class="i_li_bottom abs">
                
                
                </p>
            </div>
        </div>
        <p class="i_txt ">Twinnings 川宁 英式下午茶

TWININGS是由英国人托马斯·川宁(Thomas Twining)创立的品牌，西元1706年川宁先生以「Thomas」之名於英国开设咖啡馆，正是TWININGS的前身。 自1706年诞生以来，川宁茶引领着饮茶文化的新潮流。在全世界爱好茶文化的人眼中，川宁茶就是饮茶的代表。

推荐茶风味：皇家伯爵，仕女伯爵，阿萨姆，锡隆红茶，英式早餐茶（加奶制成的奶茶也是风味一级棒哦，如需调制奶茶，请在配料区另外加单"纯牛奶"）

本产品不含奶、糖，如需加奶加糖，请至配料区另外购买。</p>
    
        <div class="i_pri_wrap">
            
                <p class="i_pri pt5">￥10.00</p>
            
            
                
                <div class="i_cart abs addCart" data-itemid="1871924607" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873197,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;10.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;英式早餐茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873198,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;10.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;皇家伯爵红茶（原味推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873199,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;阿萨姆红茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873200,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;锡隆红茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391880907,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;仕女伯爵红茶（原味推荐）&quot;}]" data-stock="500"></div>
                
            
        </div>
    </a>
</li>
<!--<li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871902785&amp;p=-1" data-for-gaq="普通商品;1871902785">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465217340155-F8228-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465217340155-F8228-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Home Made Waffle 原味华夫君-->
<!---->
<!--精选中筋面粉，融合鸡蛋、安佳黄油、雀巢稀奶油、德运牛奶等优等品牌制成面糊，采用家用华夫饼机现烤现卖，不仅卖相一流，口味也是一级棒哦！-->
<!---->
<!--建议：搭配蜂蜜、巧克力酱、冰淇淋更好吃哟。该价格为2只装原味华夫饼价格，如需配料请至配料区购买</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥22.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871902785" data-skuid="" data-stock="20"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul>                                       -->
<!-- <div class="clear"></div>   -->
<!--                                     <div class="i_list_bottom"></div>                                    </div>                                    <div id="fxitem" class="loading hide">                                        <h3 class="list-title"><p class="content">精品推荐</p></h3>                                        <a id="morefxitem" class="hide">查看更多&gt;&gt;</a>                                        <ul class="list-wrapper" id="fxtop_ul"></ul>                                        <div class="clear"></div>                                        <div class="i_list_bottom"></div>                                    </div>                                    <div id="hot_items">                                        此区域放所有非推荐商品                                    <div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">Desserts 英式甜心系列</p></h3><ul class="list-wrapper" id="hot_ul_81661114"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1872265566&amp;p=0" data-for-gaq="普通商品;1872265566">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Homemade Nougat 牛轧糖【请提前一天预定】-->
<!---->
<!--原料：进口奶粉、安佳黄油、蔓越莓干、花生仁、白砂糖等-->
<!---->
<!--私厨限量版的牛轧糖，全部采用上等进口配料制作，一锅成型糖块可切做50枚牛轧糖左右（2袋装），加以卡哇伊的糖果纸包装、萌萌哒礼盒袋装饰，馈赠亲友或是自留食用均可哟！</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥35.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1872265566" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5393555445,&quot;item_id&quot;:1872265566,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;花生牛轧（礼袋包装）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5393555446,&quot;item_id&quot;:1872265566,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;蔓越莓牛轧（礼袋包装）&quot;}]" data-stock="20"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li>-->
<!--<li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1872036792&amp;p=0" data-for-gaq="普通商品;1872036792">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465225028530-ABCCD-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465225028530-ABCCD-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Cheese Cake 芝士蛋糕【为了保证口感，请至少提前一天预定】-->
<!---->
<!--喜欢浓浓起士，却又不知如何挑选芝士蛋糕的亲，不妨试试这款独家秘制的【重芝士蛋糕】哟～-->
<!---->
<!--实打实的原材料，消化饼干做底，进口牛奶、安佳黄油、安佳奶油奶酪等高级配方做面，加上完美的比例融合搅拌成型，美味无敌的芝士蛋糕出炉啦！</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥16.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1872036792" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392307883,&quot;item_id&quot;:1872036792,&quot;price&quot;:&quot;16.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;1/8块 6寸芝士蛋糕&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392307884,&quot;item_id&quot;:1872036792,&quot;price&quot;:&quot;128.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:5,&quot;title&quot;:&quot;6寸芝士蛋糕（心形）&quot;}]" data-stock="15"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li>-->

<!--<li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871875644&amp;p=0" data-for-gaq="普通商品;1871875644">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465215849346-85F13-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465215849346-85F13-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">蛋挞四姐妹-->
<!---->
<!--蛋挞液采用进口原材料制作而成，雀巢稀奶油、安佳鲜奶、雀巢炼乳等。4支起售。-->
<!--蛋挞为现做现烤食品，想吃请提前一天电话预定哟。下单后请耐心等待哦，热乎乎的甜心马上送到(? *`?′ * )??</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥19.90</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871875644" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391655411,&quot;item_id&quot;:1871875644,&quot;price&quot;:&quot;19.90&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;4只装&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391655412,&quot;item_id&quot;:1871875644,&quot;price&quot;:&quot;38.80&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;8只装&quot;}]" data-stock="200"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li>-->
</ul>

<!--<div class="clear"></div><div class="i_list_bottom"></div></div><div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">配料/辅料</p></h3><ul class="list-wrapper" id="hot_ul_81662734"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871897918&amp;p=0" data-for-gaq="普通商品;1871897918">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465217056632-7A862-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465217056632-7A862-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">配料区-->
<!---->
<!--奶球、可可粉（只配咖啡不单卖）、巧克力酱（配咖啡或华夫饼不单卖）、榛果酱（配咖啡不单卖）、进口纯牛奶（配川宁茶或咖啡不单卖）、太古糖包-->
<!---->
<!--均为单价</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥0.50</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871897918" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754474,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;1.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;奶球&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754475,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;0.50&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;太古糖包&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754476,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;0.50&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;可可粉（不单卖）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754477,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;2.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;榛果酱（不单卖）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754479,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;2.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;巧克力酱（不单卖）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391754480,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;2.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;进口纯牛奶（欧德堡、兰特、雀巢随机，不单卖）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391792243,&quot;item_id&quot;:1871897918,&quot;price&quot;:&quot;2.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;蜂蜜（华夫君原配夫人??）&quot;}]" data-stock="650"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul><div class="clear"></div><div class="i_list_bottom"></div></div><div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">Milk Shake 鲜果摇摇奶</p></h3><ul class="list-wrapper" id="hot_ul_81663333"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871860486&amp;p=0" data-for-gaq="普通商品;1871860486">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465214792989-3367A-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465214792989-3367A-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                    <em class="i_li_soldOut">销量1</em>-->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Milk Shake 水果奶昔-->
<!---->
<!--水果牛奶系列全部采用新鲜水果和进口牛奶制成，不添加任何糖类和白开水，原汁原味，果粒可见哦?(???????)?-->
<!---->
<!--容量：350毫升（12or）</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥12.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871860486" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391593235,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;香蕉啵啵&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391593236,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:10,&quot;title&quot;:&quot;草莓嘻嘻（时令）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391593237,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;芒果哆哆&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391593238,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:1,&quot;status&quot;:1,&quot;stock&quot;:99,&quot;title&quot;:&quot;猕猴桃哈哈&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391593239,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;16.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;牛油果乐乐&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392390840,&quot;item_id&quot;:1871860486,&quot;price&quot;:&quot;18.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:20,&quot;title&quot;:&quot;樱桃么么&quot;}]" data-stock="379"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul><div class="clear"></div><div class="i_list_bottom"></div></div><div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">British Tea 英式下午茶</p></h3><ul class="list-wrapper" id="hot_ul_81664956"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871924607&amp;p=0" data-for-gaq="普通商品;1871924607">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465218623696-702DB-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465218623696-702DB-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Twinnings 川宁 英式下午茶-->
<!---->
<!--TWININGS是由英国人托马斯·川宁(Thomas Twining)创立的品牌，西元1706年川宁先生以「Thomas」之名於英国开设咖啡馆，正是TWININGS的前身。 自1706年诞生以来，川宁茶引领着饮茶文化的新潮流。在全世界爱好茶文化的人眼中，川宁茶就是饮茶的代表。-->
<!---->
<!--推荐茶风味：皇家伯爵，仕女伯爵，阿萨姆，锡隆红茶，英式早餐茶（加奶制成的奶茶也是风味一级棒哦，如需调制奶茶，请在配料区另外加单"纯牛奶"）-->
<!---->
<!--本产品不含奶、糖，如需加奶加糖，请至配料区另外购买。</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥10.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871924607" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873197,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;10.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;英式早餐茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873198,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;10.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;皇家伯爵红茶（原味推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873199,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;阿萨姆红茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391873200,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;锡隆红茶（奶茶推荐）&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391880907,&quot;item_id&quot;:1871924607,&quot;price&quot;:&quot;12.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;仕女伯爵红茶（原味推荐）&quot;}]" data-stock="500"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul><div class="clear"></div><div class="i_list_bottom"></div></div><div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">Coffee Italian 意式咖啡</p></h3><ul class="list-wrapper" id="hot_ul_81666845"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871946451&amp;p=0" data-for-gaq="普通商品;1871946451">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465219909440-70f93-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465219909440-70f93-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">Coffee 意式拉花风情 12oz/350ml-->
<!---->
<!--精选FCR品牌咖啡豆，原豆均采用高配的工艺烘焙，厦门本地配送，保证咖啡豆最新鲜的口感。根据您所下单的不同咖啡现加工研磨出不同大小的颗粒，以实现最丰富多层的口味。-->
<!---->
<!--在原单基础上需额外加酱或加可可粉，需至配料区另外购买。-->
<!--</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥20.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871946451" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946103,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;巧克力摩卡&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946104,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;榛果拿铁&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946105,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;20.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;原味拿铁&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946106,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;20.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;卡布奇诺&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391946107,&quot;item_id&quot;:1871946451,&quot;price&quot;:&quot;22.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;可可拿铁&quot;}]" data-stock="500"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul>-->
<!--<div class="clear"></div>-->
<!--<div class="i_list_bottom"></div>-->
<!--</div>-->
<!--   <div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">Origin Coffee 单品咖啡</p></h3><ul class="list-wrapper" id="hot_ul_81667500"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871959619&amp;p=0" data-for-gaq="普通商品;1871959619">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465220663775-40953-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465220663775-40953-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">单品咖啡-->
<!---->
<!--意式浓缩咖啡选用illy精品咖啡豆研磨，配以意式咖啡机萃取，醇香浓郁，回味无穷。-->
<!---->
<!--手冲咖啡采用精选咖啡豆现磨加工后，配以手冲式咖啡壶和原木过滤纸，取其咖啡精华，先苦后干，口留余香。  （可选豆：曼特宁，耶加雪菲，肯尼亚，埃塞俄比亚etc）-->
<!---->
<!--建议不加奶不加糖品味咖啡原香。如有需求，请到配料区下单，谢谢！</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥15.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871959619" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987400,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;美式咖啡&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987401,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;15.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;意式浓缩&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5391987402,&quot;item_id&quot;:1871959619,&quot;price&quot;:&quot;25.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:100,&quot;title&quot;:&quot;手冲咖啡（请备注咖啡豆）&quot;}]" data-stock="300"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul><div class="clear"></div><div class="i_list_bottom"></div></div>-->

<!--<div class="list-block"><h3 class="list-title"><p class="content i_title_p_no_border">Cafeterias 精致简餐</p></h3><ul class="list-wrapper" id="hot_ul_81669084"><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871977714&amp;p=0" data-for-gaq="普通商品;1871977714">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465221690325-dbc0a-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465221690325-dbc0a-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">微笑Pasta 意面系列</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥35.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871977714" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392046422,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;咖喱牛肉意面&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392046423,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;意式番茄火腿面&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392054170,&quot;item_id&quot;:1871977714,&quot;price&quot;:&quot;38.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;奶油蘑菇鸡蓉面&quot;}]" data-stock="150"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li><li class="list-item normal-cart">-->
<!--    <a class="link for_gaq" href="/item.html?itemID=1871974553&amp;p=0" data-for-gaq="普通商品;1871974553">-->
<!--        <div class="img-wrapper">-->
<!--            <div class="img-inner">-->
<!--                <span class="sellerOut">-->
<!--                    <img data-src="http://wd.geilicdn.com/vshop173391261-1465221504271-3855b-s1.jpg?w=400&amp;h=400&amp;cp=1" class="proImg lazy" src="http://wd.geilicdn.com/vshop173391261-1465221504271-3855b-s1.jpg?w=400&amp;h=400&amp;cp=1">-->
<!--                    -->
<!--                </span>-->
<!--                <p class="i_li_bottom abs">-->
<!--                -->
<!--                -->
<!--                </p>-->
<!--            </div>-->
<!--        </div>-->
<!--        <p class="i_txt ">意式焗饭（仅供周末派送，需提前一天预订，请备注用餐时间）-->
<!---->
<!--融汇“新鲜备料，放心食材，私藏配方，用心烘焙”四大法宝制作而成的姚氏私厨佳肴，你必定会爱不释手??-->
<!---->
<!--透露一些秘方：马苏里奶酪，鲜虾仁，西式火腿。其余还有什么食材，留着你慢慢来探寻咯～～～-->
<!---->
<!--一人份足够吃饱，饱到打嗝??</p>-->
<!--    -->
<!--        <div class="i_pri_wrap">-->
<!--            -->
<!--                <p class="i_pri pt5">￥35.00</p>-->
<!--            -->
<!--            -->
<!--                -->
<!--                <div class="i_cart abs addCart" data-itemid="1871974553" data-skuid="[{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392035809,&quot;item_id&quot;:1871974553,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;番茄火腿牛肉焗饭&quot;},{&quot;buy_stock&quot;:0,&quot;extend&quot;:&quot;&quot;,&quot;id&quot;:5392035810,&quot;item_id&quot;:1871974553,&quot;price&quot;:&quot;35.00&quot;,&quot;sku_merchant_code&quot;:&quot;&quot;,&quot;sold&quot;:0,&quot;status&quot;:1,&quot;stock&quot;:50,&quot;title&quot;:&quot;奶油鲜虾蘑菇焗饭&quot;}]" data-stock="100"></div>-->
<!--                -->
<!--            -->
<!--        </div>-->
<!--    </a>-->
<!--</li></ul><div class="clear"></div><div class="i_list_bottom"></div></div>-->
<!--</div>                                    <div class="loadmore-wrap"><a href="javascript:void(0)" style="display: none;" class="loadmore arrow-down" id="loadmoreItems">点击加载更多商品</a></div>                                    <p style="display: none;" id="scroll_loading_txt" class="loading hide">&nbsp;</p>                                    滚动加载loading                                </div>                            </div>                            <div id="item_empty" class="c_txt hide"></div></div><div class="J-component" data-type="11" data-sectionid="1101"><footer class="index-nav" id="footerBtn">-->
<!--    <ul class="wd-nav">-->
<!--        <li class="classify for_gaq" data-for-gaq="点击分类;店铺页">-->
<!--            <span class="footer-action-icon icon-classify"></span>-->
<!--            <p>分类</p>-->
<!--        </li>-->
<!--        <li uptime="1465257638" class="dynamic for_gaq" data-for-gaq="点击发现;店铺页">-->
<!--            <span class="footer-action-icon icon-dynamic"></span>-->
<!--            <p>发现</p>-->
<!--            <em id="myActiveEm" class="abs"></em>-->
<!--        <span></span></li>-->
<!--        <li class="contact for_gaq" data-for-gaq="点击联系卖家;店铺页">-->
<!--            <span class="footer-action-icon icon-contact"></span>-->
<!--            <p>联系卖家</p>-->
<!--        </li>-->
<!--        <li class="store for_gaq" data-for-gaq="店铺收藏">-->
<!--            <span class="footer-action-icon icon-store"></span>-->
<!--            <p class="store-tip">收藏</p> <p class="stored-tip">已收藏</p>-->
<!--        </li>-->
<!--    </ul>-->
</footer>
<div id="classifyPanel" style="display:none">
    <div class="wrap">
        <div class="search-wrap">
            <div class="search-input-wrap">
                <em class="search-icon"></em>
                <input class="search block wrap" placeholder="请输入商品名称" type="search">
                <em class="search-clear"></em>
            </div>
            <span class="search-btn">搜索</span>
            <div class="clear"></div>
        </div>
        <div class="class-list">
            <h3>商品分类</h3>
            <div id="classListScrollWrapper" style="position: relative;overflow:hidden;">
                <ul></ul>
            </div>
        </div>
        <div class="classify-arrow"></div>
    </div>
    <div class="mask-area">
    </div>
</div></div></div>
<!--<a style="margin-top: 40px;" href="//vdian.com?from=iWantIndex" target="_blank" id="iWantAShopIndex" class="block c_txt for_gaq rel" data-for-gaq="首页－我也要开微店">&nbsp;<span style="position: absolute; right: 0px; top: -40px;" id="doReport1"><a class="block" href="/others/report/index.html?userid=173391261">举报</a></span></a>-->
        </section>
    </div>
    <section id="my_frd" class="list-block hide"></section>
</div>
<!--友情店铺-->




<script src="//s.geilicdn.com/shop/js/common/sea.790bb70d.js"></script>
<script src="//s.geilicdn.com/shop/js/common/fetch.8c042f28.js"></script>
<script type="text/javascript">
    var isBld = false;
    const SHOPID = '173391261';
    const EDITMODE = 0;
    seajs.config({
        base: '//s.geilicdn.com/shop',
        charset : 'utf-8'
    });
    seajs.use('js/index/default/index',function(Index){
        var shopDesc = {"status":{"status_code":0,"status_reason":""},"result":{"wx_qrcode_url":"","is_wx_qrcode_diary_show":0,"is_wx_qrcode_item_show":0,"tag_info":[{"tag_id":10719928,"tag_name":"\u5976\u8336\u59b9","liked_num":0,"is_liked":0},{"tag_id":10719927,"tag_name":"\u5496\u5561\u72c2\u9b54","liked_num":0,"is_liked":0},{"tag_id":10719926,"tag_name":"\u897f\u70b9\u70d8\u7119\u7231\u597d\u8005","liked_num":0,"is_liked":0},{"tag_id":10719925,"tag_name":"\u7f8e\u5b66\u5bb6","liked_num":0,"is_liked":0},{"tag_id":10719924,"tag_name":"\u7f8e\u98df\u5bb6","liked_num":0,"is_liked":0}],"nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d"}};
        var showShopFlow = '';
        var showUserFlow = '';
        var shopInfo = {"status":{"status_code":0,"status_reason":""},"result":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":{},"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0}};
        var shopTemplate = {"status":{"status_code":0,"status_reason":""},"result":{"type":"3","module_url":"http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296718.jpg","nav_list":[{"cid":81661114,"name":"Desserts \u82f1\u5f0f\u751c\u5fc3\u7cfb\u5217"},{"cid":81662734,"name":"\u914d\u6599\/\u8f85\u6599"},{"cid":81663333,"name":"Milk Shake \u9c9c\u679c\u6447\u6447\u5976"},{"cid":81664956,"name":"British Tea \u82f1\u5f0f\u4e0b\u5348\u8336"},{"cid":81666845,"name":"Coffee Italian \u610f\u5f0f\u5496\u5561"},{"cid":81667500,"name":"Origin Coffee \u5355\u54c1\u5496\u5561"},{"cid":81669084,"name":"Cafeterias \u7cbe\u81f4\u7b80\u9910"}],"default_imgs":["http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296338.jpg","http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296577.jpg","http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296639.jpg","http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296678.jpg","http:\/\/wd.geilicdn.com\/vshop-shop-template-1416296718.jpg"]}};
        var customTemplateInfo = {"status":{"status_code":0,"status_reason":""},"result":{"template_Info":[{"type":6,"section_id":601,"content":[{"imgpath_601":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","imgpath_602":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=400&cp=1"}]},{"type":8,"section_id":802,"shop":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":[],"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0,"shopDesc":{"wx_qrcode_url":"","is_wx_qrcode_diary_show":0,"is_wx_qrcode_item_show":0,"tag_info":[{"tag_id":10719928,"tag_name":"\u5976\u8336\u59b9","liked_num":0,"is_liked":0},{"tag_id":10719927,"tag_name":"\u5496\u5561\u72c2\u9b54","liked_num":0,"is_liked":0},{"tag_id":10719926,"tag_name":"\u897f\u70b9\u70d8\u7119\u7231\u597d\u8005","liked_num":0,"is_liked":0},{"tag_id":10719925,"tag_name":"\u7f8e\u5b66\u5bb6","liked_num":0,"is_liked":0},{"tag_id":10719924,"tag_name":"\u7f8e\u98df\u5bb6","liked_num":0,"is_liked":0}],"nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d"}}},{"type":10,"section_id":1001,"shop":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":[],"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0,"shopDesc":{"wx_qrcode_url":"","is_wx_qrcode_diary_show":0,"is_wx_qrcode_item_show":0,"tag_info":[{"tag_id":10719928,"tag_name":"\u5976\u8336\u59b9","liked_num":0,"is_liked":0},{"tag_id":10719927,"tag_name":"\u5496\u5561\u72c2\u9b54","liked_num":0,"is_liked":0},{"tag_id":10719926,"tag_name":"\u897f\u70b9\u70d8\u7119\u7231\u597d\u8005","liked_num":0,"is_liked":0},{"tag_id":10719925,"tag_name":"\u7f8e\u5b66\u5bb6","liked_num":0,"is_liked":0},{"tag_id":10719924,"tag_name":"\u7f8e\u98df\u5bb6","liked_num":0,"is_liked":0}],"nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d"}}},{"section_id":"3","content":[],"show":"1","type":"2","show_cart_btn":"1","show_item_name":"1","shop":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":[],"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0,"shopDesc":{"wx_qrcode_url":"","is_wx_qrcode_diary_show":0,"is_wx_qrcode_item_show":0,"tag_info":[{"tag_id":10719928,"tag_name":"\u5976\u8336\u59b9","liked_num":0,"is_liked":0},{"tag_id":10719927,"tag_name":"\u5496\u5561\u72c2\u9b54","liked_num":0,"is_liked":0},{"tag_id":10719926,"tag_name":"\u897f\u70b9\u70d8\u7119\u7231\u597d\u8005","liked_num":0,"is_liked":0},{"tag_id":10719925,"tag_name":"\u7f8e\u5b66\u5bb6","liked_num":0,"is_liked":0},{"tag_id":10719924,"tag_name":"\u7f8e\u98df\u5bb6","liked_num":0,"is_liked":0}],"nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d"}}},{"type":11,"section_id":1101,"shop":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":[],"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0,"shopDesc":{"wx_qrcode_url":"","is_wx_qrcode_diary_show":0,"is_wx_qrcode_item_show":0,"tag_info":[{"tag_id":10719928,"tag_name":"\u5976\u8336\u59b9","liked_num":0,"is_liked":0},{"tag_id":10719927,"tag_name":"\u5496\u5561\u72c2\u9b54","liked_num":0,"is_liked":0},{"tag_id":10719926,"tag_name":"\u897f\u70b9\u70d8\u7119\u7231\u597d\u8005","liked_num":0,"is_liked":0},{"tag_id":10719925,"tag_name":"\u7f8e\u5b66\u5bb6","liked_num":0,"is_liked":0},{"tag_id":10719924,"tag_name":"\u7f8e\u98df\u5bb6","liked_num":0,"is_liked":0}],"nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d"}}}],"template_code":0,"template_name":"default"}};
        var topListData = '';

        Index.init({
            'shopDesc':shopDesc,
            'shopInfo':shopInfo,
            'showShopFlow':showShopFlow,
            'showUserFlow':showUserFlow,
            'shopTemplate':shopTemplate,
            'topListData':topListData,
            'customTemplateInfo':customTemplateInfo
        });

    });
</script>
<script src="//wd.api.weidian.com/stat/h5?buyer_id=&amp;track_type=1&amp;item_id=&amp;user_id=173391261&amp;guid=1465263458020_20408376734268863&amp;wfr=&amp;recommTag=&amp;callback=jsonp_1465263458031_49983997087974263&amp;wfr_public={&quot;referService&quot;:&quot;h5-shop&quot;}"></script><div style="display: none;" class="fix wrap" id="item_select_sku_count"><section id="item_control" class="wrap abs"><div id="item_control_inner" class="wrap margin_auto"><div id="control_item_info" class="rel"><img id="control_item_info_img" class="abs" src="http://wd.geilicdn.com/vshop173391261-1465219909440-70f93-s1.jpg?w=400&amp;h=400&amp;cp=1" height="50" width="50"><span id="control_seckill_price" class=""></span><span id="control_item_info_price" class="i_pri">￥22.00</span><div id="control_item_info_close" class="abs">&nbsp;</div></div><div id="control_wrap"><div id="control_info"><div id="control_sku"><p class="control_tle gray_txt">型号尺寸</p><ul id="sku_ul"><li class="sku_li"><a class="sku_a" data-stock="100" data-sku="5391946103" data-price="22.00">巧克力摩卡</a></li><li class="sku_li"><a class="sku_a" data-stock="100" data-sku="5391946104" data-price="22.00">榛果拿铁</a></li><li class="sku_li"><a class="sku_a" data-stock="100" data-sku="5391946105" data-price="20.00">原味拿铁</a></li><li class="sku_li"><a class="sku_a" data-stock="100" data-sku="5391946106" data-price="20.00">卡布奇诺</a></li><li class="sku_li"><a class="sku_a current_sku" data-stock="100" data-sku="5391946107" data-price="22.00">可可拿铁</a></li></ul></div></div></div><div id="control_btn_inner_right"><a id="sku_submit" class="btnok c_txt">确定</a></div></div></section></div></body></html>