<!DOCTYPE HTML>
<html style="width:100%;height:100%" class="no-js">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="format-detection" content="telephone=no">
        <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no">
        <script src="../../../v_4677_nol_zh_CNs_d_/system/lib/base/modernizr-2.8.3.min.js"></script>
        <script id="__updateVersoin">
        
        	(function(url, mode){
        		if ((mode!=="1" && (mode!="2") && (mode!="3"))) return;
				var async = (mode=="1");
        		var x5Version = "noApp";
        		var x5AppAgents = /x5app\/([0-9.]*)/.exec(navigator.userAgent);
        		if(x5AppAgents && x5AppAgents.length > 1){
        		   	x5Version = x5AppAgents[1] || "";
        		}else{
        			async = false;
        		} 
        		function createXhr(){
    				try {	
    					return new XMLHttpRequest();
    				}catch (tryMS) {	
    					var version = ["MSXML2.XMLHttp.6.0",
    					               "MSXML2.XMLHttp.3.0",
    					               "MSXML2.XMLHttp",
    					               "Miscrosoft.XMLHTTP"];
    					for(var i = 0; i < version.length; i++){
    						try{
    					    	return new ActiveXObject(version[i]);
    						}catch(e){}
    					}
    				}
    				throw new Error("您的系统或浏览器不支持XHR对象！");
        		}
        		
				function createGuid(){	
					var guid = '';	
					for (var i = 1; i <= 32; i++){		
						var n = Math.floor(Math.random()*16.0).toString(16);		
						guid += n;		
						if((i==8)||(i==12)||(i==16)||(i==20))			
							guid += '-';	
					}	
					return guid;
				}
				
				function getBaseUrl(){
					var items = window.location.href.split("/");
					var newItems = [];
					for (var i=0; i<items.length; i++){
						if (mode == "3"){
    						if (items[i] && (items[i].indexOf("v_") === 0) 
    								&& (items[i].indexOf("l_") !== -1)
    								&& (items[i].indexOf("s_") !== -1)
    								&& (items[i].indexOf("d_") !== -1)
    								|| (items[i]=="v_")){
    							break;
    						}
						}else{
							if (items[i] && (items[i].indexOf("v-")===0) && (items[i].charAt(items[i].length-1)=="-") ){
								break;
							}
						}
						newItems.push(items[i]);
					}
					var base = newItems.join("/");
					if (base.charAt(base.length-1)!="/") base += "/";
					return base;
				}
				
				function prepareUrl(base, curURL){
					return base + curURL;
				}
				
				function updateIndexPage(newUrl){
					try{
						var keyPrefix = "indexPage_";
						if (window.localStorage){
							nativePref = window.localStorage.getItem("cordova_native_pref");
							try{
								nativePref = JSON.parse(nativePref);
							}catch(e4){
								nativePref = null;
							}
							if (nativePref && (toString.call(nativePref) === '[object Object]')){
								for (var p in nativePref){
									if (nativePref.hasOwnProperty(p) && ((p+"").indexOf(keyPrefix)==0)){
										delete nativePref[p];
									}
								}
								nativePref[keyPrefix + x5Version] = newUrl;
							}else{
								nativePref = {};
								nativePref[keyPrefix + x5Version] = newUrl;
							}
							nativePref = JSON.stringify(nativePref);
							window.localStorage.setItem("cordova_native_pref", nativePref);
						}
					}catch(e5){}
				}
				
				
        		var base = getBaseUrl();
				var xhr = createXhr();
				url += ((url.indexOf("?")!=-1) ? "&" : "?") +"_=" + createGuid();
				xhr.open('GET', base + url, async);
				
				if (async){
					xhr.onreadystatechange=function(){
						if((xhr.readyState == 4) && (xhr.status == 200) && xhr.responseText){
							var indexUrl = prepareUrl(base, xhr.responseText);
							updateIndexPage(indexUrl);
						}
					}	
				}
				
				try{
					xhr.send(null);
					if (!async && (xhr.status == 200) && xhr.responseText){
						var indexUrl = xhr.responseText;
						if (indexUrl.indexOf("#")!=-1) indexUrl = indexUrl.substr(0, indexUrl.indexOf("#"));
						if (indexUrl.indexOf("?")!=-1) indexUrl = indexUrl.substr(0, indexUrl.indexOf("?"));
						if (window.location.pathname.indexOf(indexUrl) == -1){
							indexUrl = prepareUrl(base, indexUrl);
							if (mode == '2') updateIndexPage(indexUrl);
							window.location.href = indexUrl;
						}
					}
				}catch(e2){}
        	}("system/service/common/indexUrl.j?__isNew=true&url=/UI2/mainActivity.w", "3"));
                 
        </script>
    <link rel="stylesheet" href="../../../v_4677_nol_zh_CNs_d_/system/components/bootstrap.min.css" include="$model/UI2/system/components/bootstrap/lib/css/bootstrap,$model/UI2/system/components/bootstrap/lib/css/bootstrap-theme"><link rel="stylesheet" href="../../../v_4677_nol_zh_CNs_d_/system/components/comp.min.css" include="$model/UI2/system/components/justep/row/css/row,$model/UI2/system/components/justep/attachment/css/attachment,$model/UI2/system/components/justep/barcode/css/barcodeImage,$model/UI2/system/components/justep/panel/css/panel,$model/UI2/system/components/justep/common/css/scrollable,$model/UI2/system/components/justep/scrollView/css/scrollView,$model/UI2/system/components/justep/input/css/datePickerPC,$model/UI2/system/components/justep/contents/css/contents,$model/UI2/system/components/justep/popMenu/css/popMenu,$model/UI2/system/components/justep/lib/css/icons,$model/UI2/system/components/justep/titleBar/css/titleBar,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/dialog/css/dialog,$model/UI2/system/components/justep/messageDialog/css/messageDialog,$model/UI2/system/components/justep/toolBar/css/toolBar,$model/UI2/system/components/justep/popOver/css/popOver,$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/input/css/datePicker,$model/UI2/system/components/justep/dataTables/css/dataTables,$model/UI2/system/components/justep/wing/css/wing,$model/UI2/system/components/bootstrap/scrollSpy/css/scrollSpy,$model/UI2/system/components/justep/menu/css/menu,$model/UI2/system/components/justep/numberSelect/css/numberList,$model/UI2/system/components/justep/list/css/list,$model/UI2/system/components/bootstrap/carousel/css/carousel,$model/UI2/system/components/bootstrap/dropdown/css/dropdown,$model/UI2/system/components/justep/common/css/forms,$model/UI2/system/components/justep/bar/css/bar"></head>
	
    <body style="width:100%;height:100%;margin: 0;">
        <script intro="none"></script>
    	<script>
    	
    	    window.__justep = window.__justep || {};
		 
    	</script>
    	<div id="applicationHost" class="applicationHost" style="width:100%;height:100%;" __component-context__="block"><div component="$model/UI2/system/components/justep/window/window" xid="window" design="device:mobile" data-bind="component:{name:'$model/UI2/system/components/justep/window/window'}" __cid="cANRbuq" class="cANRbuq" components="$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/panel/panel,$model/UI2/system/components/justep/panel/child,$model/UI2/system/components/justep/model/model,$model/UI2/system/components/justep/window/window,$model/UI2/system/components/justep/titleBar/titleBar,$model/UI2/system/components/justep/data/data,$model/UI2/system/components/justep/button/button,">
  <style>.x-titlebar.cANRbuq{background-color: rgb(50, 189, 96)}</style>  
  <div component="$model/UI2/system/components/justep/model/model" xid="model" style="display:none" data-bind="component:{name:'$model/UI2/system/components/justep/model/model'}" data-events="onParamsReceive:modelParamsReceive" __cid="cANRbuq" class="cANRbuq"></div>  
  <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full pee673b8097f04d2791bc96776922d800-iosstatusbar cANRbuq" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="cANRbuq"> 
    <div class="x-panel-top cANRbuq" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cANRbuq"> 
      <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar cANRbuq" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" data-config="{&#34;title&#34;:&#34;行业资讯&#34;}" __cid="cANRbuq"> 
        <div class="x-titlebar-left cANRbuq" __cid="cANRbuq"> 
          <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-only-icon cANRbuq" xid="backBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:backBtnClick" data-config="{&#34;icon&#34;:&#34;icon-chevron-left&#34;,&#34;label&#34;:&#34;&#34;}" __cid="cANRbuq"> 
            <i class="icon-chevron-left cANRbuq" __cid="cANRbuq"></i>  
            <span __cid="cANRbuq" class="cANRbuq"></span> 
          </a> 
        </div>  
        <div class="x-titlebar-title cANRbuq" __cid="cANRbuq">行业资讯</div>  
        <div class="x-titlebar-right  cANRbuq" __cid="cANRbuq">
          <div class="empty cANRbuq" __cid="cANRbuq"></div>
        </div> 
      </div> 
    </div>  
    <div class="x-panel-content cANRbuq" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cANRbuq"> 
      <div class="x-control-group cANRbuq" xid="controlGroup1" __cid="cANRbuq"> 
        <div class="x-control-group-title cANRbuq" xid="controlGroupTitle1" __cid="cANRbuq"> 
          <span xid="span1" __cid="cANRbuq" class="cANRbuq" data-bind="text:data.val('title')"></span> 
        </div>  
        <span __cid="cANRbuq" class="cANRbuq" data-bind="text:data.val('wDate')"></span>  
        <div __cid="cANRbuq" class="cANRbuq" data-bind="foreach:data.datas"> 
          <p __cid="cANRbuq" class="cANRbuq" data-bind="text:val('content')"></p> 
        </div> 
      </div> 
    </div>  
    <style __cid="cANRbuq" class="cANRbuq">.x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-top {height: 48px;}.x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-content { top: 48px;bottom: nullpx;}.x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-top {height: 68px;}.iosstatusbar .x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-content { top: 68px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-top {height: 48px;}.iosstatusbar .x-panel .x-panel-content .x-panel.pee673b8097f04d2791bc96776922d800-iosstatusbar >.x-panel-content {top: 48px;}</style>
  </div> 
</div></div>
        
        <div id="downloadGCF" style="display:none;padding:50px;">
        	<span>您使用的浏览器需要下载插件才能使用, </span>
        	<a id="downloadGCFLink" href="#">下载地址</a>
        	<p>(安装后请重新打开浏览器)</p>
        </div>
    	<script>
    	
    	            //判断浏览器, 判断GCF
    	 			var browser = {
    			        isIe: function () {
    			            return navigator.appVersion.indexOf("MSIE") != -1;
    			        },
    			        navigator: navigator.appVersion,
    			        getVersion: function() {
    			            var version = 999; // we assume a sane browser
    			            if (navigator.appVersion.indexOf("MSIE") != -1)
    			                // bah, IE again, lets downgrade version number
    			                version = parseFloat(navigator.appVersion.split("MSIE")[1]);
    			            return version;
    			        }
    			    };
    				function isGCFInstalled(){
    			      try{
    			        var i = new ActiveXObject('ChromeTab.ChromeFrame');
    			        if (i) {
    			          return true;
    			        }
    			      }catch(e){}
    			      return false;
    				}
    	            //判断浏览器, 判断GCF
    	            var __continueRun = true;
    				if (browser.isIe() && (browser.getVersion() < 10) && !isGCFInstalled()) {
    					document.getElementById("applicationHost").style.display = 'none';
    					document.getElementById("downloadGCF").style.display = 'block';
    					var downloadLink = "/" + location.pathname.match(/[^\/]+/)[0] + "/v8.msi";
    					document.getElementById("downloadGCFLink").href = downloadLink; 
    					__continueRun = false;
    	            }
		 	
    	</script>
        
        <script id="_requireJS" src="../../../v_4677_nol_zh_CNs_d_/system/lib/require/require.2.1.10.js"> </script>
        <script src="../../../v_4677_nol_zh_CNs_d_/system/core.min.js"></script><script src="../../../v_4677_nol_zh_CNs_d_/system/common.min.js"></script><script src="../../../v_4677_nol_zh_CNs_d_/system/components/comp.min.js"></script><script id="_mainScript">
        
			if (__continueRun) {
                window.__justep.isDebug = false;     
                
                window.__justep.cssReady = function(fn){
                	var promises = [];
                	for (var p in window.__justep.__ResourceEngine.__loadingCss){
                		if(window.__justep.__ResourceEngine.__loadingCss.hasOwnProperty(p))
                			promises.push(window.__justep.__ResourceEngine.__loadingCss[p].promise());
                	}
                	$.when.apply($, promises).done(fn);
                };
                
            	window.__justep.__ResourceEngine = {
            		readyRegExp : navigator.platform === 'PLAYSTATION 3' ? /^complete$/ : /^(complete|loaded)$/,
            		url: window.location.href,	
            		/*contextPath: 不包括语言 */
            		contextPath: "",
            		serverPath: "",
            		__loadedJS: [],
            		__loadingCss: {},
            		onLoadCss: function(url, node){
            			if (!this.__loadingCss[url]){
            				this.__loadingCss[url] = $.Deferred();	
                			if (node.attachEvent &&
                                    !(node.attachEvent.toString && node.attachEvent.toString().indexOf('[native code') < 0) &&
                                    !(typeof opera !== 'undefined' && opera.toString() === '[object Opera]')) {
                                node.attachEvent('onreadystatechange', this.onLinkLoad.bind(this));
                            } else {
                                node.addEventListener('load', this.onLinkLoad.bind(this), false);
                                node.addEventListener('error', this.onLinkError.bind(this), false);
                            }
            			}
            		},
            		
            		onLinkLoad: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
            	        if (evt.type === 'load' ||
                                (this.readyRegExp.test(target.readyState))) {
            	        	var url = target.getAttribute("href");
            	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
            	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
            	        	}
                        }
            		},
            		
            		onLinkError: function(evt){
            	        var target = (evt.currentTarget || evt.srcElement);
        	        	var url = target.getAttribute("href");
        	        	if (url && window.__justep.__ResourceEngine.__loadingCss[url]){
        	        		window.__justep.__ResourceEngine.__loadingCss[url].resolve(url);
        	        	}
            		},
            		
            		initContextPath: function(){
            			var baseURL = document.getElementById("_requireJS").src;
            			var before = location.protocol + "//" + location.host;
            			var after = "/system/lib/require/require.2.1.10.js";
            			var i = baseURL.indexOf(after);
            			if (i !== -1){
    	        			var middle = baseURL.substring(before.length, i);
    						var items = middle.split("/");
    						
    						
    						if ((items[items.length-1].indexOf("v_") === 0) 
    								&& (items[items.length-1].indexOf("l_") !== -1)
    								&& (items[items.length-1].indexOf("s_") !== -1)
    								&& (items[items.length-1].indexOf("d_") !== -1)
    								|| (items[items.length-1]=="v_")){
    							items.splice(items.length-1, 1);
    						}
    						
    						
    						if (items.length !== 1){
    							window.__justep.__ResourceEngine.contextPath = items.join("/");
    						}else{
    							window.__justep.__ResourceEngine.contextPath = before;
    						}
    						var index = window.__justep.__ResourceEngine.contextPath.lastIndexOf("/");
    						if (index != -1){
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath.substr(0, index);
    						}else{
    							window.__justep.__ResourceEngine.serverPath = window.__justep.__ResourceEngine.contextPath;
    						}
            			}else{
            				throw new Error(baseURL + " hasn't  " + after);
            			}
            		},
            	
            		loadJs: function(urls){
            			if (urls && urls.length>0){
            				var loadeds = this._getResources("script", "src").concat(this.__loadedJS);
    	       				for (var i=0; i<urls.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + urls[i];
    	        				if(!this._isLoaded(url, loadeds)){
    	        					this.__loadedJS[this.__loadedJS.length] = url;
    	        					/*
    	        					var script = document.createElement("script");
    	        					script.src = url;
    	        					document.head.appendChild(script);
    	        					*/
    	        					//$("head").append("<script  src='" + url + "'/>");
    	        					$.ajax({
    	        						url: url,
    	        						dataType: "script",
    	        						cache: true,
    	        						async: false,
    	        						success: function(){}
    	        						});
    	        				} 
    	       				}
            			}
            		},
            		
            		loadCss: function(styles){
           				var loadeds = this._getResources("link", "href");
            			if (styles && styles.length>0){
            				for (var i=0; i<styles.length; i++){
    	       					var url = window.__justep.__ResourceEngine.contextPath + styles[i].url
    	        				if(!this._isLoaded(url, loadeds)){
    	        					var include = styles[i].include || "";
    	        					var link = $("<link type='text/css' rel='stylesheet' href='" + url + "' include='" + include + "'/>");
    	        					this.onLoadCss(url, link[0]);
    	        					$("head").append(link);
    	        				} 
            				}
            			}
            			
            		},
            		
            		
            		_isLoaded: function(url, loadeds){
            			if (url){
            				var newUrl = "";
            				var items = url.split("/");
            				var isVls = false;
            				for (var i=0; i<items.length; i++){
            					if (isVls){
                					newUrl += "/" + items[i];
            					}else{
                					if (items[i] && (items[i].indexOf("v_")===0)
            								&& (items[i].indexOf("l_")!==-1)
            								&& (items[i].indexOf("s_")!==-1)
            								&& (items[i].indexOf("d_")!==-1)
            								|| (items[i]=="v_")){
                						isVls = true;
                					}
            					}
            				}
            				if (!newUrl)
            					newUrl = url;
            				
            				for (var i=0; i<loadeds.length; i++){
    							if (loadeds[i] && (loadeds[i].indexOf(newUrl)!==-1)){
    								return true;
    							}
    						}
            			}
    					return false;
            		},
            		
            		_getResources: function(tag, attr){
    					var result = [];
    					var scripts = $(tag);
    					for (var i=0; i<scripts.length; i++){
    						var v = scripts[i][attr];
    						if (v){
    							result[result.length] = v;
    						}
    					}
    					return result;
            		}
            	};
            	
            	window.__justep.__ResourceEngine.initContextPath();
            	window.__justep.__isPackage = true;;
    			requirejs.config({
    				baseUrl: window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_/LH_Team/4',
    			    paths: {
    			    	'$model/UI2': window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_',
    			    	'$model': window.__justep.__ResourceEngine.serverPath,
    			        'text': window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_/system/lib/require/text.2.0.10',
    			        'bind': window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_/system/lib/bind/bind',
    			        'jquery': window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_/system/lib/jquery/jquery-1.11.1.min'
    			    },
    			    map: {
    				        '*': {
    				            res: '$model/UI2/system/lib/require/res',
    				            cordova: '$model/UI2/system/lib/require/cordova',
    				            w: '$model/UI2/system/lib/require/w',
    				            css: '$model/UI2/system/lib/require/css'
    				        }
    				},
    				waitSeconds: 300
    			});
    			
    			requirejs(['require', 'jquery', '$model/UI2/system/lib/base/composition', '$model/UI2/system/lib/base/url', '$model/UI2/system/lib/route/hashbangParser', '$model/UI2/system/components/justep/loadingBar/loadingBar', '$model/UI2/system/lib/jquery/domEvent',  '$model/UI2/system/lib/cordova/cordova'],  function (require, $, composition, URL, HashbangParser) { 
    				document.addEventListener('deviceready', function() {
    	                if (navigator && navigator.splashscreen && navigator.splashscreen.hide) {
    	                	/*延迟隐藏，视觉效果更理想*/
    	                	setTimeout(function() {navigator.splashscreen.hide();}, 800);
    	                }
    	            }, false);
    				var context = {};
    				context.model = '$model/UI2/LH_Team/4/professionNews.w' + (document.location.search || "");
    				context.view = $('#applicationHost').children()[0];
    				var element = document.getElementById('applicationHost');

					    				
    				
    				var ownerid = new URL(window.__justep.__ResourceEngine.url).getParam("$ownerid");
    				var pwindow = opener;
    				if (!pwindow && window.parent && window.parent.window){
    					pwindow = window.parent.window;
    				}
    				if(ownerid && pwindow 
    						&& pwindow.__justep && pwindow.__justep.windowOpeners
    						&& pwindow.__justep.windowOpeners[ownerid]
    						&& $.isFunction(pwindow.__justep.windowOpeners[ownerid].sendToWindow)){
    					var winOpener = pwindow.__justep.windowOpeners[ownerid];
    					$(window).unload(function(event){
    						if(winOpener && winOpener.dispatchCloseEvent) winOpener.dispatchCloseEvent();
    					});
    					var params = winOpener.sendToWindow();
						context.owner = winOpener;
						if(params){
							context.params = params.data || {};
						}else{
							context.params = {};
						}
	        			composition.compose(element, context);
    				}else{
        				var params =  {};
    					var state = new HashbangParser(window.location.hash).parse().__state;
    					if (state){
    						params = state.get("");
    						try{
    							params = JSON.parse(params);
    							if (params.hasOwnProperty("__singleValue__")){
    								params = params.__singleValue__;
    							}
    						}catch(e1){}
    					}
    					context.noUpdateState = true;
        				context.params = params;
        				composition.compose(element, context);
    				}
    			});    
            }
		 	
        </script>
    </body>
</html>