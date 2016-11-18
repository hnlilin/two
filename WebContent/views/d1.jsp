<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no">
        <meta content="telephone=no" name="format-detection">
        <meta name="apple-touch-fullscreen" content="yes">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <link rel="dns-prefetch" href="//s.geilicdn.com">
        <link rel="dns-prefetch" href="//wd.geilicdn.com">
        <link rel="dns-prefetch" href="//item.weidian.com">
        <link rel="dns-prefetch" href="//wd.api.weidian.com">
        <link href="//s.geilicdn.com/shop/css/combo/item.min.1031e5fa.css" type="text/css" rel="stylesheet">
        <title>Homemade Nougat 牛轧糖【请提前一天预定】

原料：进口奶粉、安佳黄油、蔓越莓干、花生仁、白砂糖等

私厨限量版的牛轧糖，全部采用上等进口配料制作，一锅成型糖块可切做50枚牛轧糖左右（2袋装），加以卡哇伊的糖果纸包装、萌萌哒礼盒袋装饰，馈赠亲友或是自留食用均可哟！</title>
        <script src="http://static.koudai.com/analysis/piwik.js" async="" defer="" type="text/javascript"></script><script>
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
                window._paq = typeof _paq == "undefined" ? [] : _paq; //因为统计的 cookie 发送不到weidian域名下
                // (function(){
                //     window._paq = [];
                //     _paq.push(['setCustomVariable',1,"appname","vdian.com","visit"]); // Set a custom variable.,存储在_cvar
                //     _paq.push(['trackPageView']); // Logs a visit to this page
                //     _paq.push(['enableLinkTracking']); //Install link tracking on all applicable link elements
                //     _paq.push(['setTrackerUrl', logServerBaseUrl]);
                //     _paq.push(['setSiteId', 1]); // Specify the website ID. Redundant: can be specified in getTracker() constructor.
                //     var d = document, g = d.createElement('script'), s = d.getElementsByTagName('script')[0];
                //     g.type='text/javascript';
                //     g.defer=true;
                //     g.async=true;
                //     g.src= document.location.protocol === 'https:' ? '//analysis.koudai.com/piwik.js' : 'http://static.koudai.com/analysis/piwik.js';
                //     s.parentNode.insertBefore(g,s);
                // })();

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
    <style type="text/css">.ui-alert-box .ui-alert-btn,.ui-dialog-box .ui-dialog-btn{display:inline-block;padding:4px 12px;margin-bottom:0;font-size:16px;line-height:20px;color:#333;text-align:center;text-shadow:0 1px 1px rgba(255,255,255,0.75);vertical-align:middle;cursor:pointer;background-color:#f5f5f5;background-image:-moz-linear-gradient(top,#fff,#e6e6e6);background-image:-webkit-gradient(linear,0 0,0 100%,from(#fff),to(#e6e6e6));background-image:-webkit-linear-gradient(top,#fff,#e6e6e6);background-image:-o-linear-gradient(top,#fff,#e6e6e6);background-image:linear-gradient(to bottom,#fff,#e6e6e6);background-repeat:repeat-x;border:1px solid #ccc;border-color:#e6e6e6 #e6e6e6 #bfbfbf;border-color:rgba(0,0,0,0.1) rgba(0,0,0,0.1) rgba(0,0,0,0.25);border-bottom-color:#b3b3b3;-webkit-border-radius:4px;-moz-border-radius:4px;border-radius:4px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-alert-box .ui-alert-btn:hover,.ui-dialog-box .ui-dialog-btn:hover,.ui-confirm-box .ui-confirm-btn:hover{cursor:pointer}.ui-alert-mask,.ui-dialog-mask{width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,0.5);z-index:10001}.ui-confirm-mask{display:-webkit-box;display:-webkit-flex;display:-moz-flex;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;-webkit-align-items:center;-moz-align-items:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;-webkit-justify-content:center;-moz-justify-content:center;justify-content:center;width:100%;height:100%;overflow:hidden;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,.7);z-index:2}.ui-confirm-mask{z-index:1001}.ui-alert-header,.ui-dialog-header,.ui-confirm-header{padding:9px 15px;position:relative}.ui-alert-header h3,.ui-dialog-header h3,.ui-confirm-header h3{margin:0;text-align:center;font-size:20px;color:#3f3f3f}.ui-alert-close,.ui-dialog-close,.ui-confirm-close{position:absolute;top:5px;right:10px;font-size:30px;width:35px;font-weight:bold;line-height:30px;color:#000;text-shadow:0 1px 0 #fff;opacity:.2;cursor:pointer;background:transparent;border:0;-webkit-appearance:none}.ui-alert-close:hover,.ui-dialog-close:hover,.ui-confirm-close:hover{cursor:hand}.ui-alert-box,.ui-dialog-box{background:#fff;position:fixed;top:50%;margin-top:-80px;width:240px;left:50%;margin-left:-120px;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius:5px;z-index:10;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:bounceIn .3s both;animation:bounceIn .3s both}.ui-confirm-box{position:relative;background:#fff;border-radius:.078125rem;z-index:1;width:60%;display:block;-webkit-transition:all .3s linear;transition:all .3s linear;-webkit-animation:all .3s both;animation:all .3s both}.ui-alert-body,.ui-dialog-body,.ui-confirm-body{position:relative;padding:10px 20px 20px;overflow:hidden;box-sizing:border-box;max-height:260px;overflow-y:auto}.ui-alert-body p,.ui-dialog-body p,.ui-confirm-body p{font-size:14px;text-align:center;color:#3f3f3f}.ui-alert-footer,.ui-dialog-footer{padding:14px 15px 15px;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;-webkit-box-shadow:inset 0 1px 0 #fff;box-shadow:inset 0 1px 0 #fff}.ui-alert-footer .ui-alert-btn,.ui-dialog-footer .ui-dialog-btn{font-size:16px;line-height:26px;-webkit-box-shadow:0 0 2px #000;box-shadow:0 0 2px #000}.ui-confirm-footer{padding:0;margin-bottom:0;text-align:center;background-color:#fff;-webkit-border-radius:0 0 10px 10px;border-radius:0 0 10px 10px;overflow:hidden;box-shadow:inset 0 1px 0 #fff;display:-webkit-box}.ui-confirm-footer .ui-confirm-btn{background:#fff;color:#0079ff;border-top:#e3e3e3 solid 1px;border-bottom:0;height:46px;line-height:46px;font-size:16px;box-flex:1;-webkit-box-flex:1;display:block;-webkit-border-radius:0;border-radius:0;padding:0 12px}.ui-confirm-footer .ui-confirm-btn:first-child{border-right:#e3e3e3 solid 1px;border-left:none}.ui-confirm-footer .ui-confirm-btn:last-child{border-right:0;border-left:none}@-webkit-keyframes bounceIn{from{-webkit-transform:scale(0.8);opacity:0}50%{-webkit-transform:scale(1.05);opacity:1}100%{-webkit-transform:scale(1);opacity:1}}</style><style type="text/css">.ui-toast-mask{width:100%;height:100%;position:fixed;left:0;top:0;bottom:0;right:0;background:rgba(0,0,0,0.6);z-index:10001}.ui-toast-box{background:#fff;position:fixed;top:50%;width:240px;padding:15px 30px;box-sizing:border-box;text-align:center;margin-top:-20px;left:50%;margin-left:-120px;-webkit-border-radius:4px;border-radius:4px;z-index:10;-webkit-transition:all .2s linear;transition:all .2s linear;-webkit-animation:fadeIn .3s ease both;animation:fadeIn .3s ease both;box-sizing:border-box;font-size:16px;box-shadow:0 0 10px rgba(0,0,0,0.2)}.ui-toast-box p{color:#333;font-size:16px}.ui-toast-mask-hide .ui-toast-box{-webkit-animation:fadeOut .3s ease both;animation:fadeOut .3s ease both;-webkit-transition:all .3s;transition:all .3s}@-webkit-keyframes fadeIn{from{opacity:0;-webkit-transform:scale(.3)}100%{opacity:.9}}@-webkit-keyframes fadeOut{from{opacity:.9}100%{opacity:0;-webkit-transform:scale(.3)}}</style><style type="text/css">.hide{display:none}.overflow-hidden{overflow:hidden;position:fixed}.slidedown-contaienr{position:relative;will-change:all}.slidedown-inner{position:fixed;bottom:0;left:0;right:0;background-color:white;z-index:199;overflow:hidden;width:100%;max-width:640px;margin:0 auto;-webkit-tap-highlight-color:rgba(0,0,0,0);-webkit-touch-callout:none;-webkit-user-select:none;user-select:none;-webkit-text-size-adjust:none;text-size-adjust:none;overflow-y:auto}.slidedown-body{overflow-x:hidden;overflow-y:auto}.slidedown-body.loading{background-image:url("//s.geilicdn.com/shop/images/common/loading.50c5e3e7.gif");background-position:center;background-size:32px 32px;background-repeat:no-repeat}.slidedown-footer{height:54px;border-top:1px solid #dbdddd}.slidedown-close-btn{font-size:15px;line-height:54px;color:#d1665e;display:block;text-align:center}.slidedown-backdrop{position:fixed;top:0;left:0;background-color:rgba(0,0,0,.7);width:100%;height:3000px;overflow:hidden;z-index:198;will-change:all;-webkit-transition:all .5s ease;transition:all .5s ease}.slidedown-inner .slidedown-title{padding:0 20px;text-align:center;color:#6a6b6a;background-color:#dbdddd;line-height:55px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}.slide-in-down{-webkit-backface-visibility:hidden;animation:slideInDown .5s ease;-webkit-animation:slideInDown .5s ease;-moz-animation:slideInDown .5s ease}.slide-out-down{-webkit-backface-visibility:hidden;animation:slideOutDown .5s ease;-webkit-animation:slideOutDown .5s ease;-moz-animation:slideOutDown .5s ease}@keyframes slideInDown{0%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:visible}100%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}}@-webkit-keyframes slideInDown{0%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:visible}100%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}}@-moz-keyframes slideInDown{0%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:visible}100%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}}@keyframes slideOutDown{0%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}100%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:hidden}}@-webkit-keyframes slideOutDown{0%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}100%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:hidden}}@-moz-keyframes slideOutDown{0%{-webkit-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}100%{-webkit-transform:translate3d(0,100%,0);transform:translate3d(0,100%,0);visibility:hidden}}</style></head>
    <body style="font-size: 12px;" class="ignore_weixin_login">
        <div style="display: none;" class="loading hide" id="item_wrap_loading">&nbsp;</div>
        <a href="#yhplace" class="hide" id="couponMiaodian"></a>
        <div id="noItem" class="hide">
            <header id="common_hd_none" class="c_txt rel">
                <a href="/?userid=173391261" id="hd_back_none" class="abs">返回</a>
                <a href="#" id="common_hd_logo" class="hd_logo t_hide abs">微店</a>
                <h1 class="hd_tle bold">&nbsp;</h1>
                <a id="hd_enterShop_none" class="hide abs"><span id="hd_enterShop_none_img" class="abs"><img class="block" src="" height="32" width="32"></span>进入店铺</a>
            </header>
            <div id="noItemShow" class="c_txt">

                你访问的商品已下架。            </div>
        </div>
        <div id="item_show_wrap">
            <!-- <div class="head_nav">
                <div class="head_wrapper_top"></div>
                <div class="head_wrapper">
                    <div id="common_hd">
                        <a href="/?userid=173391261" id="hd_back" class="abs">返回</a>
                        <a href="/?userid=173391261" id="common_hd_logo" class="hd_logo t_hide abs">微店</a>
                        <a class="new_cart_btn for_gaq active" data-for-gaq="加入购物车-top-详情页" href="/cart/index.php?referrerURl=itemid_1872265566"><span></span></a>
                        <div class="my_shop for_gaq active" data-for-gaq="点击我的微店;详情页">订单中心<span></span></div>
                    </div>
                </div>
            </div> -->
            
            <div class="swiper-container hide"></div>
            <!-- <div id="item_wrap_loading" class="loading">&nbsp;</div> -->
            
            <div id="item_info_for_show_wrap">
                <section id="item_info" class="rel ">
                    <article id="item_show" class="loading c_txt rel">
                        <div style="background-image: url(&quot;http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=480&amp;h=0&quot;); background-repeat: no-repeat; background-size: cover; height: 569.333px;" data-key="0" class="item-img" id="itemImg" data-share-src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=480&amp;h=0"></div>
                        <div id="itemSlider" class="swiper-container big animated hide">
                            <ul id="itemSliderBox" class="swiper-wrapper">
                                <li data-key="0" class="swiper-slide"><img src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=480&amp;h=0" class="swiper-img center"></li><li data-key="1" class="swiper-slide"><img src="http://wd.geilicdn.com/vshop173391261-1465257634482-D09FD-s1.jpg?w=480&amp;h=0" class="swiper-img center"></li><li class="swiper-slide"><img src="http://wd.geilicdn.com/vshop173391261-1465257637878-FE737-s1.jpg?w=480&amp;h=0" class="swiper-lazy swiper-img center"><div class="swiper-lazy-preloader swiper-lazy-preloader-white"></div></li>                            </ul>
                            <span class="slider-close-btn abs">关闭</span>
                            <div class="slider-counter">
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                            <em id="sold" class="abs hide"></em>
                        <div id="favorite" class="favorite for_gaq hide" data-for-gaq="收藏商品">收藏</div>
                    </article>

                    <h2 id="item_name">Homemade Nougat 牛轧糖【请提前一天预定】</h2>
                    
                    <div id="item_price_wrap" class="rel">
                        <p class="item-price-control">
                            <span id="seckill_price" class="hide"></span>
                            <span id="item_price" class="i_pri" data-original-price="35.00-38.00">¥35.00-38.00</span>
                        </p>
                        
                        <div id="control_seckill_wrap" class="hide"><!--秒杀-->
                            <span id="seckill_discount" class="promotion-left-icon">限时</span>
                            <div class="promotion-right-content">
                                <span id="seckill_left"></span>
                                <span id="seckill_right"></span>                                
                            </div>
                        </div>
                        
                        <p id="free_delivery" class="promotion-pannel hide">
                            <span class="promotion-left-icon">包邮</span> 
                            <em id="free_delivery_em" class="promotion-right-content">偏远地区除外&nbsp;&gt;</em> 
                        </p>                        
                        <p id="regionalRestrictions" class="promotion-pannel hide">
                            <span class="promotion-left-icon">限地区</span> 
                            <em id="regionalRestrictionsContent" class="promotion-right-content">查看详细可购买地区&nbsp;&gt;</em> 
                        </p>

                        <p id="express_money_show">运费: ¥2.00</p>
                        <div id="share_for_money" style="display: none" class="abs "><em id="share_for_money_icon" class="share-icon inline_b c_txt"></em>分享有奖</div>
                        <!-- <em id="sold" class="abs">&nbsp;</em> -->
                    </div>
                                        <div style="display: block;" id="item_other_info" class="rel hide">
                    </div>
                    
                    <div class="itemrank hide" id="itemrank"></div>
                    <p id="yhplace" class="hide"></p>
                </section>
                <!-- coupon feature -->
                <div id="coupon-indicator" class="coupon-indicator hide">
                    <div class="inner-wrapper"><span class="icon-coupon">优惠券</span> 点击进入, 领取优惠券</div>
                </div>

            <!--     <section style="display: block;" id="control_title" class="hide item-block">
                    <div id="show_controls" class="rel">
                        <em id="selected_sku_des_tle" class="abs">选择&nbsp;商品型号</em>
                        <p id="selected_sku_des">&nbsp;</p>
                        <em id="show_controls_arrow" class="abs">&nbsp;</em>
                    </div>
                </section> -->
                <section id="item_seller" class="item-block">
                                        <a id="seller_wrap" href="/?userid=173391261" class="rel for_gaq" data-for-gaq="进入店铺;店铺头像">
                        <div id="seller_thumb_wrap" class="abs">
                            <img id="seller_thumb" src="http://wd.geilicdn.com/vshop173391261-1465222890.jpeg?w=250&amp;h=250&amp;cp=1" class="abs" width="100%">
                        </div>
                                                <p id="seller_name" class="over_hidden ellipsis">Teaffee 茶与啡时光</p>
                                                <div id="wd_shop_icon"> <div id="wd_level_wrap" class="hide">&nbsp;</div></div>
                        
                    </a>
                    <!-- coupon feature -->
                    <div style="display: block;" id="coupons-container" class="coupons-container hide"><div style="width: 133px; transition-timing-function: cubic-bezier(0.1, 0.57, 0.1, 1); transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);" id="iscroll-wrapper"><ul class="coupons-list" id="coupons-list"><li class="coupon" data-id="2170519" data-limit="1"><div class="coupon-limit ellipsis">满50减</div><div class="coupon-amount ">¥3</div></li></ul></div></div>

                    <!--满包邮 by abel-->
                    <div style="display: block; margin-top: -1px;" id="free_postage" class="promotion-panel hide"><span class="promotion-left-icon shop">包邮</span><span class="promotion-right-content">全店满30.00元包邮</span></div> 
                    <div id="full_cut" class="full_cut hide"></div>
                </section>
                <section id="seller_entry_wrap">
                    <a id="enter_shop_class" href="javascript:void(0);" class="left for_gaq c_txt" data-for-gaq="查看商品分类"><em>&nbsp;</em>商品分类</a>
                    <a id="enter_shop" href="javascript:void(0);" class="right for_gaq c_txt" data-for-gaq="进入店铺;按钮"><em>&nbsp;</em>进入店铺</a>
                </section>
                <section id="askinfo" class="askinfo hide"></section>
                <section id="item_info_for_common" class="hide item-block">
                    <div id="comment">
                        <h2 class="block-title" id="count"></h2>
                        <ul id="commentList" class="hide">
                        </ul>
                        <a id="moreContent" style="display:none" class="for_gaq" data-for-gaq="更多评价" href="/itemComment.html">更多评价</a>
                    </div>
                    
                </section>
 <section id="item_detail" class="item-block">
                    <div id="">
                        <h3 class="block-title">商品详情</h3>
                        <p class="img_des" id="itemDetailName">Homemade Nougat 牛轧糖【请提前一天预定】<br>
<br>
原料：进口奶粉、安佳黄油、蔓越莓干、花生仁、白砂糖等<br>
<br>
私厨限量版的牛轧糖，全部采用上等进口配料制作，一锅成型糖块可切做50枚牛轧糖左右（2袋装），加以卡哇伊的糖果纸包装、萌萌哒礼盒袋装饰，馈赠亲友或是自留食用均可哟！</p>
                </section>               
            </div>
            
            <footer id="item_fix_btn" class="fix wrap"><!--底部固定控制栏 之 按钮-->
                <div id="control_btn" class="margin_auto">
                    <div id="control_btn_inner" class="rel">
                        <div id="control_btn_inner_left" class="abs">
                             <div class="goshop for_gaq" id="" data-for-gaq="进店逛">
                                 <span class="footer-action-icon icon-goshop"></span>进店
                             </div>
                            <div class="store for_gaq" data-for-gaq="商品收藏">
                            <span class="footer-action-icon icon-store"></span>
                            <span class="store_tip">收藏</span> <span class="stored_tip">已收藏</span></div>
                        </div>
                        
                        <div id="control_btn_inner_right" class="abs">
                                                            <a id="add_cart" class="c_txt abs for_gaq" data-for-gaq="加入购物车">加入购物车</a>
                                <a id="buy_now" class="btnok c_txt abs send_gaq">立即购买</a>
                                                    </div>
                    </div>
                </div>
            </footer>
            
            <footer id="item_select_sku_count" class="fix hide wrap J-backdrop"><!--底部固定控制栏 之 尺码信息-->
                <section id="item_control" class="wrap abs">
                    <div id="item_control_inner" class="wrap margin_auto">
                        <div id="control_item_info" class="rel">
                            <img src="http://wd.geilicdn.com/vshop173391261-1465257628388-0F1F8-s1.jpg?w=110&amp;h=110&amp;cp=1" id="control_item_info_img" class="abs" height="60" width="60">

                            <span id="control_seckill_price" class="hide"></span>
                            <span id="control_item_info_price" class="i_pri">¥35.00-38.00</span>
                            <div id="control_item_selected_sku" class="hide">已选型号：</div>
                            <div id="control_item_info_close" class="abs close-icon">&nbsp;</div>
                        </div>
                    
                        <div id="control_wrap">
                                                        <div id="control_info">
                                <div id="control_sku">
                                    <p class="control_tle gray_txt">型号尺寸</p>
                                    <ul id="sku_ul"><li class="sku_li"><a class="sku_a" data-sku="5393555445" data-stock="10" data-price="35.00">花生牛轧（礼袋包装）</a></li><li class="sku_li"><a class="sku_a" data-sku="5393555446" data-stock="10" data-price="38.00">蔓越莓牛轧（礼袋包装）</a></li></ul>
                                </div>
                        
                                <div id="control_count" class="">
                                    <p class="control_tle gray_txt">数量</p>
                                    <div id="control_num" class="left c_txt bold rel">
                                        <em id="control_num_sub" class="abs">－</em>
                                        <input name="item_num" id="item_num" class="c_txt block" value="1" type="tel">
                                        <em id="control_num_add" class="abs">＋</em>
                                    </div>
                                    <div style="display: none;" id="control_stock" class="left" data-stock="1">仅剩最后1件，赶快下手！</div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                                                    </div>
                        <a id="btn1" class="btnok c_txt" onclick="aa();">确定</a>
                    </div>
                </section>
            </footer>
            <p id="wd_footer_logo" class="hide"></p>
        </div>

        <div id="cps_wrap" class="fix hide"></div><!--for cps float-div-->
    

<script src="//s.geilicdn.com/shop/js/common/sea.790bb70d.js"></script>
<script src="//s.geilicdn.com/shop/js/common/fetch.8c042f28.js"></script>
<script type="text/javascript">
    seajs.config({
        base: '//s.geilicdn.com/shop',
        charset : 'utf-8'
    });
    seajs.use('js/item/index',function(Item){
        var itemInfo = {"status":{"status_code":0,"status_reason":""},"result":{"itemID":"1872265566","addTime":"2016-06-07 08:00:37","update_time":"2016-06-07 08:00:37","stock":"20","price":"35.00-38.00","sold":"0","seller_id":173391261,"is_show_test_center":0,"itemName":"Homemade Nougat \u725b\u8f67\u7cd6\u3010\u8bf7\u63d0\u524d\u4e00\u5929\u9884\u5b9a\u3011<br \/>\n<br \/>\n\u539f\u6599\uff1a\u8fdb\u53e3\u5976\u7c89\u3001\u5b89\u4f73\u9ec4\u6cb9\u3001\u8513\u8d8a\u8393\u5e72\u3001\u82b1\u751f\u4ec1\u3001\u767d\u7802\u7cd6\u7b49<br \/>\n<br \/>\n\u79c1\u53a8\u9650\u91cf\u7248\u7684\u725b\u8f67\u7cd6\uff0c\u5168\u90e8\u91c7\u7528\u4e0a\u7b49\u8fdb\u53e3\u914d\u6599\u5236\u4f5c\uff0c\u4e00\u9505\u6210\u578b\u7cd6\u5757\u53ef\u5207\u505a50\u679a\u725b\u8f67\u7cd6\u5de6\u53f3\uff082\u888b\u88c5\uff09\uff0c\u52a0\u4ee5\u5361\u54c7\u4f0a\u7684\u7cd6\u679c\u7eb8\u5305\u88c5\u3001\u840c\u840c\u54d2\u793c\u76d2\u888b\u88c5\u9970\uff0c\u9988\u8d60\u4eb2\u53cb\u6216\u662f\u81ea\u7559\u98df\u7528\u5747\u53ef\u54df\uff01","Imgs":["http:\/\/wd.geilicdn.com\/vshop173391261-1465257628388-0F1F8-s1.jpg?w=480&h=0","http:\/\/wd.geilicdn.com\/vshop173391261-1465257634482-D09FD-s1.jpg?w=480&h=0","http:\/\/wd.geilicdn.com\/vshop173391261-1465257637878-FE737-s1.jpg?w=480&h=0"],"thumbImgs":["http:\/\/wd.geilicdn.com\/vshop173391261-1465257628388-0F1F8-s1.jpg?w=110&h=110&cp=1","http:\/\/wd.geilicdn.com\/vshop173391261-1465257634482-D09FD-s1.jpg?w=110&h=110&cp=1","http:\/\/wd.geilicdn.com\/vshop173391261-1465257637878-FE737-s1.jpg?w=110&h=110&cp=1"],"itemLogo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465257628388-0F1F8-s1.jpg?w=480&h=360&cp=1","titles":["","",""],"sku":[{"title":"\u82b1\u751f\u725b\u8f67\uff08\u793c\u888b\u5305\u88c5\uff09","stock":10,"price":"35.00","id":5393555445,"sold":0},{"title":"\u8513\u8d8a\u8393\u725b\u8f67\uff08\u793c\u888b\u5305\u88c5\uff09","stock":10,"price":"38.00","id":5393555446,"sold":0}],"free_delivery":0,"remote_free_delivery":0,"extend":{"total_number":0,"total_score":0,"score":0},"buy_stock":0,"remote_area":"\u6d77\u5916\u3001\u6e2f\u3001\u6fb3\u3001\u53f0\u3001\u65b0\u7586\u3001\u897f\u85cf\u3001\u5185\u8499\u3001\u9752\u6d77\u3001\u7518\u8083\u3001\u5b81\u590f\u3001\u6d77\u5357","collectCount":0,"credit_type":0,"credit_num":0,"credit_score":0,"lock_status":2,"lock_timestamp":"","lock_from":"","area_text":"","is_delete":0,"is_down_shelf":0,"is_selling":1,"isClose":"0","is_active":0,"is_active_limit":0,"seckill_or_discount":0,"discount":"","isDelete":0,"next_page":0,"is_fx":0,"is_liutao":0,"discount_price":0,"sf_cod":0,"sf_cod_rate":"","shop_logo":"http:\/\/koudaiwd.b0.upaiyun.com\/default.png","front_cover":"","rate":"0","is_kdpay":1,"is_warrant":1,"is_COD":1,"express_fee":0,"shop_name":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","shop_url":"http:\/\/weidian.com\/s\/173391261","shop_img":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","voice":{"url":"","seconds":0},"is_score":0,"allowAddCart":1,"allowBuy":1,"can_gift":0,"bg_category_id":50010696,"is_show_question_answer":0}};
        var shopInfo = {"status":{"status_code":0,"status_reason":""},"result":{"id":"173391261","warrant_flag":1,"country_code":"86","shopName":"Teaffee \u8336\u4e0e\u5561\u65f6\u5149","logo":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890.jpeg?w=250&h=250&cp=1","shopURL":"http:\/\/weidian.com\/s\/173391261","note":"\u8336\u4e0e\u5561\u82f1\u5f0f\u4e0b\u5348\u8336\u914d\u9001\uff0c\u4e3b\u529b\u6253\u9020\u54c1\u8d28\u5b89\u5fc3\u3001\u53e3\u5473\u7eaf\u9999\u7684\u996e\u54c1\u70b9\u5fc3\u7cfb\u5217\u3002\u4e3b\u8425\u8336\u996e\u3001\u5496\u5561\u3001\u5976\u5236\u54c1\u7cfb\u5217\uff0c\u8f85\u9500\u5bb6\u5ead\u5f0f\u624b\u4f5c\u751c\u70b9\u3001\u897f\u5f0f\u7b80\u9910\u7b49\u3002\u5e97\u4e3b\u662f\u4e00\u4f4d\u8d44\u6df1\u5403\u8d27+\u6d77\u5f52\u59b9\u5b50\uff0c\u51ed\u501f\u5929\u751f\u5bf9\u7f8e\u98df\u7684\u559c\u7231\u4e0e\u8ffd\u6c42\uff0c\u4eb2\u8eab\u94bb\u7814\u8336\u5561\u5236\u4f5c\u3001\u897f\u70b9\u70d8\u7119\u3001\u897f\u9910\u6539\u826f\u3002\u81f4\u529b\u4e8e\u8ba9\u559c\u7231\u54c1\u5c1d\u897f\u65b9\u7f8e\u98df\u7684\u5e7f\u5927\u4e1c\u65b9\u6d88\u8d39\u8005\uff0c\u90fd\u80fd\u4ee5\u4eb2\u6c11\u7684\u4ef7\u683c\u5c1d\u5230\u6700\u6b63\u5b97\u6700\u9c9c\u6d3b\u7684\u8336\u5561\u3001\u7f8e\u98df\u7cfb\u5217","nick_name":"\u6a90\u524d\u96e8_\u59da\u5c0f\u5b9d","seller_logo":"http:\/\/wd.geilicdn.com\/vshop-seller-logo-new-default.jpg","top_item":0,"weixin":null,"status":"0","shopImg":"http:\/\/wd.geilicdn.com\/vshop173391261-1465214394.jpeg?w=640&h=330&cp=1","pay_way":[1,2,3,4],"express_fee":"2.00","frid_num":0,"cash_delivery":1,"sf_cod":0,"is_kdpay":1,"rate":"0","isIM":1,"isTBMove":0,"is7refund":0,"is_cart_code":0,"shop_grade":null,"shop_type":null,"fee_rate":"0","cod_editable":0,"is_express_fee_template":1,"credit_type":0,"credit_num":0,"credit_range":null,"is_liutao":null,"g_seller_id":"","f_seller_id":"","brand_official":0,"brand_licensing":0,"overseas_purchasing":0,"is_COD":1,"mp_pic_url":"http:\/\/static.koudai.com\/data\/upload\/other\/1420351671016_552.jpg","shop_addr":"","qrcode":"http:\/\/wd.geilicdn.com\/vshop173391261-1465222890-qrlogo.png?w=210&h=210","discount_activity":null,"add_time":"2014-10-21","is_pay_reduce_stock":0,"is_card_recognized":0,"bindWx":0,"wx_verify":0,"bond_seller":0,"is_activity":1,"fx_info":{"is_g":0,"is_dp":0,"is_qd":0},"koudai_activity":null,"is_fx_user":0,"is_gy_seller":0,"shop_model":2,"free_postage_price":"30.00","remote_free_postage":1,"is_free_postage":1,"pay_direct":0,"shop_honor":[],"p3":0,"p2":0,"p1":0,"p3_msg":"","p2_msg":"","p1_msg":"","is_certify":0,"is_enable_shop_template":1,"showByClass":1,"voice":{"url":"","seconds":0},"full_cut":{},"is_enable_bonus":0,"collect_count":3,"has_diary":0,"lon":"","lat":"","isHasfxItem":1,"brand_enterprise":0,"brand_realname":0,"brand_realshop":0}};
        Item.init(itemInfo,shopInfo);

    });
    
    		
</script>
<script type="text/javascript">

function aa(){
	 alert("购买成功！");
	 $("#item_select_sku_count").hide();
	 window.location.href="index.jsp"
}
</script>

<script src="//wd.api.weidian.com/stat/h5?buyer_id=&amp;track_type=2&amp;item_id=1872265566&amp;user_id=173391261&amp;guid=1465264680706_018430985499726993&amp;wfr=&amp;recommTag=&amp;callback=jsonp_1465267793785_22795826459086077&amp;wfr_public={&quot;referService&quot;:&quot;h5-shop&quot;}"></script></body>