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
    	<div id="applicationHost" class="applicationHost" style="width:100%;height:100%;" __component-context__="block"><div component="$model/UI2/system/components/justep/window/window" design="device:mobile" data-bind="component:{name:'$model/UI2/system/components/justep/window/window'}" __cid="cmI7fiq" class="cmI7fiq" components="$model/UI2/system/components/justep/loadingBar/loadingBar,$model/UI2/system/components/justep/panel/panel,$model/UI2/system/components/justep/scrollView/scrollView,$model/UI2/system/components/justep/panel/child,$model/UI2/system/components/justep/list/list,$model/UI2/system/components/justep/contents/content,$model/UI2/system/components/justep/button/buttonGroup,$model/UI2/system/components/justep/model/model,$model/UI2/system/components/justep/window/window,$model/UI2/system/components/justep/contents/contents,$model/UI2/system/components/justep/titleBar/titleBar,$model/UI2/system/components/justep/data/data,$model/UI2/system/components/justep/button/button,">
  <style>.text-black.cmI7fiq{color: rgb(33, 33, 33)} .x-titlebar.cmI7fiq{background-color: rgb(50, 189, 96)} .btn-group.cmI7fiq .active.cmI7fiq{color: rgb(184, 4, 9)} .x-card.btn-group.cmI7fiq .btn.cmI7fiq, .x-card.btn-group.cmI7fiq .btn.cmI7fiq:hover, .x-card.btn-group.cmI7fiq .btn.cmI7fiq:active, .x-card.btn-group.cmI7fiq .btn.cmI7fiq:focus{border-top: 0} .x-cards.cmI7fiq{padding-top: 0} .media.cmI7fiq{margin-top: 10px}</style>  
  <div component="$model/UI2/system/components/justep/model/model" xid="model" style="display:none" data-bind="component:{name:'$model/UI2/system/components/justep/model/model'}" __cid="cmI7fiq" class="cmI7fiq"></div>  
  <div component="$model/UI2/system/components/justep/panel/panel" class="x-panel x-full x-card p550014d983134fd2ab0cb97943accd6a-iosstatusbar cmI7fiq" data-bind="component:{name:'$model/UI2/system/components/justep/panel/panel'}" __cid="cmI7fiq"> 
    <div class="x-panel-top cmI7fiq" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" data-config="{&#34;height&#34;:96}" __cid="cmI7fiq"> 
      <div component="$model/UI2/system/components/justep/titleBar/titleBar" class="x-titlebar cmI7fiq" data-bind="component:{name:'$model/UI2/system/components/justep/titleBar/titleBar'}" data-config="{&#34;title&#34;:&#34;最新动态&#34;}" __cid="cmI7fiq"> 
        <div class="x-titlebar-left cmI7fiq" __cid="cmI7fiq"> 
          <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-only-icon cmI7fiq" xid="backBtn" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-events="onClick:backBtnClick" data-config="{&#34;icon&#34;:&#34;icon-chevron-left&#34;,&#34;label&#34;:&#34;&#34;}" __cid="cmI7fiq"> 
            <i class="icon-chevron-left cmI7fiq" __cid="cmI7fiq"></i>  
            <span __cid="cmI7fiq" class="cmI7fiq"></span> 
          </a> 
        </div>  
        <div class="x-titlebar-title cmI7fiq" __cid="cmI7fiq">最新动态</div>  
        <div class="x-titlebar-right  cmI7fiq" __cid="cmI7fiq">
          <div class="empty cmI7fiq" __cid="cmI7fiq"></div>
        </div> 
      </div>  
      <div component="$model/UI2/system/components/justep/button/buttonGroup" class="btn-group btn-group-justified x-card cmI7fiq" xid="buttonGroup1" data-bind="component:{name:'$model/UI2/system/components/justep/button/buttonGroup'}" data-config="{&#34;tabbed&#34;:true}" __cid="cmI7fiq"> 
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link cmI7fiq" xid="button1" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;label&#34;:&#34;最新资讯&#34;,&#34;target&#34;:&#34;latestNews&#34;}" __cid="cmI7fiq"> 
          <i xid="i1" __cid="cmI7fiq" class="cmI7fiq"></i>  
          <span xid="span1" __cid="cmI7fiq" class="cmI7fiq">最新资讯</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link cmI7fiq" xid="button2" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;label&#34;:&#34;行业新闻&#34;,&#34;target&#34;:&#34;professionNews&#34;}" __cid="cmI7fiq"> 
          <i xid="i2" __cid="cmI7fiq" class="cmI7fiq"></i>  
          <span xid="span2" __cid="cmI7fiq" class="cmI7fiq">行业新闻</span>
        </a>  
        <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link cmI7fiq" xid="button3" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;label&#34;:&#34;新闻资讯&#34;,&#34;target&#34;:&#34;news&#34;}" __cid="cmI7fiq"> 
          <i xid="i3" __cid="cmI7fiq" class="cmI7fiq"></i>  
          <span xid="span3" __cid="cmI7fiq" class="cmI7fiq">新闻资讯</span>
        </a> 
      </div>
    </div>  
    <div class="x-panel-content x-cards cmI7fiq" component="$model/UI2/system/components/justep/panel/child" data-bind="component:{name:'$model/UI2/system/components/justep/panel/child'}" __cid="cmI7fiq"> 
      <div component="$model/UI2/system/components/justep/contents/contents" class="x-contents x-full cmI7fiq" xid="dataContents" data-bind="component:{name:'$model/UI2/system/components/justep/contents/contents'}" data-config="{&#34;active&#34;:0,&#34;slidable&#34;:false}" __cid="cmI7fiq"> 
        <div class="x-contents-content x-scroll-view active cmI7fiq" xid="latestNews" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="cmI7fiq"> 
          <div class="x-scroll cmI7fiq" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView1" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="cmI7fiq"> 
            <div class="x-content-center x-pull-down container cmI7fiq" xid="div1" __cid="cmI7fiq"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down cmI7fiq" xid="i1" __cid="cmI7fiq"></i>  
              <span class="x-pull-down-label cmI7fiq" xid="span1" __cid="cmI7fiq">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content cmI7fiq" xid="div2" __cid="cmI7fiq"> 
              <div component="$model/UI2/system/components/justep/list/list" class="x-list cmI7fiq" xid="list1" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;data&#34;:&#34;data&#34;,&#34;limit&#34;:5}" __cid="cmI7fiq"> 
                <ul class="x-list-template hide cmI7fiq" xid="listTemplateUl1" __cid="cmI7fiq" data-bind="foreach:{data:$model.foreach_list1($element),afterRender:$model.foreach_afterRender_list1.bind($model,$element)}"> 
                  <li xid="li1" class="x-flex media list-group-item cmI7fiq" __cid="cmI7fiq" data-bind="event:{click:$model._callModelFn.bind($model, 'open')}"> 
                    <div xid="col21" class="media-left cmI7fiq" __cid="cmI7fiq"> 
                      <img style="width:66px;height:66px" class="img-circle cmI7fiq" xid="image5" __cid="cmI7fiq" data-bind="attr:{src:$model.getImageUrl($object)}">
                    </div>  
                    <div class="x-flex1 media-body cmI7fiq" xid="col23" style="padding-left:10px;" __cid="cmI7fiq"> 
                      <h5 class="media-heading text-success cmI7fiq" __cid="cmI7fiq" data-bind="text:ref('title')"></h5>  
                      <span xid="span28" __cid="cmI7fiq" class="cmI7fiq" data-bind="text:ref('intro')"></span>
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up cmI7fiq" xid="div34" __cid="cmI7fiq"> 
              <span class="x-pull-up-label cmI7fiq" xid="span23" __cid="cmI7fiq">加载更多...</span>
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content x-scroll-view cmI7fiq" xid="professionNews" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="cmI7fiq"> 
          <div class="x-scroll cmI7fiq" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView2" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="cmI7fiq"> 
            <div class="x-content-center x-pull-down container cmI7fiq" xid="div35" __cid="cmI7fiq"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down cmI7fiq" xid="i24" __cid="cmI7fiq"></i>  
              <span class="x-pull-down-label cmI7fiq" xid="span24" __cid="cmI7fiq">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content cmI7fiq" xid="div36" __cid="cmI7fiq"> 
              <div component="$model/UI2/system/components/justep/list/list" class="x-list cmI7fiq" xid="list2" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;data&#34;:&#34;data2&#34;,&#34;limit&#34;:5}" __cid="cmI7fiq"> 
                <ul class="x-list-template hide cmI7fiq" xid="listTemplateUl2" __cid="cmI7fiq" data-bind="foreach:{data:$model.foreach_list2($element),afterRender:$model.foreach_afterRender_list2.bind($model,$element)}"> 
                  <li xid="li2" class="x-flex media list-group-item cmI7fiq" __cid="cmI7fiq" data-bind="event:{click:$model._callModelFn.bind($model, 'open')}"> 
                    <div class="media-left cmI7fiq" xid="div37" __cid="cmI7fiq"> 
                      <img style="width:66px;height:66px" class="img-circle cmI7fiq" xid="image6" __cid="cmI7fiq" data-bind="attr:{src:$model.getImageUrl($object)}">
                    </div>  
                    <div class="x-flex1 media-body cmI7fiq" xid="div38" __cid="cmI7fiq"> 
                      <h5 class="media-heading text-success cmI7fiq" __cid="cmI7fiq" data-bind="text:ref('title')"></h5>
                      <span class="x-flex cmI7fiq" __cid="cmI7fiq" data-bind="text:ref('intro')"></span> 
                    </div> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up cmI7fiq" xid="div3" __cid="cmI7fiq"> 
              <span class="x-pull-up-label cmI7fiq" xid="span2" __cid="cmI7fiq">加载更多...</span>
            </div> 
          </div> 
        </div>  
        <div class="x-contents-content x-scroll-view cmI7fiq" xid="news" component="$model/UI2/system/components/justep/contents/content" data-bind="component:{name:'$model/UI2/system/components/justep/contents/content'}" __cid="cmI7fiq"> 
          <div class="x-scroll cmI7fiq" component="$model/UI2/system/components/justep/scrollView/scrollView" xid="scrollView3" data-bind="component:{name:'$model/UI2/system/components/justep/scrollView/scrollView'}" __cid="cmI7fiq"> 
            <div class="x-content-center x-pull-down container cmI7fiq" xid="div41" __cid="cmI7fiq"> 
              <i class="x-pull-down-img glyphicon x-icon-pull-down cmI7fiq" xid="i26" __cid="cmI7fiq"></i>  
              <span class="x-pull-down-label cmI7fiq" xid="span25" __cid="cmI7fiq">下拉刷新...</span>
            </div>  
            <div class="x-scroll-content cmI7fiq" xid="div42" __cid="cmI7fiq"> 
              <div component="$model/UI2/system/components/justep/list/list" class="x-list cmI7fiq" xid="list3" data-bind="component:{name:'$model/UI2/system/components/justep/list/list'}" data-config="{&#34;data&#34;:&#34;data3&#34;,&#34;limit&#34;:7}" __cid="cmI7fiq"> 
                <ul class="x-list-template hide cmI7fiq" xid="listTemplateUl3" __cid="cmI7fiq" data-bind="foreach:{data:$model.foreach_list3($element),afterRender:$model.foreach_afterRender_list3.bind($model,$element)}"> 
                  <li class="list-group-item cmI7fiq" __cid="cmI7fiq" data-bind="event:{click:$model._callModelFn.bind($model, 'open')}"> 
                    <a component="$model/UI2/system/components/justep/button/button" class="btn btn-link btn-only-icon pull-right cmI7fiq" xid="button13" data-bind="component:{name:'$model/UI2/system/components/justep/button/button'}" data-config="{&#34;icon&#34;:&#34;icon-ios7-arrow-right&#34;,&#34;label&#34;:&#34;button&#34;}" __cid="cmI7fiq"> 
                      <i xid="i28" class="icon-ios7-arrow-right text-muted cmI7fiq" __cid="cmI7fiq"></i>  
                      <span xid="span30" __cid="cmI7fiq" class="cmI7fiq"></span>
                    </a>
                    <h5 class="text-black cmI7fiq" __cid="cmI7fiq" data-bind="text:ref('title')"></h5> 
                  </li> 
                </ul> 
              </div> 
            </div>  
            <div class="x-content-center x-pull-up cmI7fiq" xid="div43" __cid="cmI7fiq"> 
              <span class="x-pull-up-label cmI7fiq" xid="span27" __cid="cmI7fiq">加载更多...</span>
            </div> 
          </div> 
        </div> 
      </div>
      <div xid="parent" __cid="cmI7fiq" class="cmI7fiq"></div> 
    </div>  
    <style __cid="cmI7fiq" class="cmI7fiq">.x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-top {height: 96px;}.x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-content { top: 96px;bottom: nullpx;}.x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-bottom {height: nullpx;}.iosstatusbar .x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-top,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-top {height: 116px;}.iosstatusbar .x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-content,.iosstatusbar .x-panel .x-panel-content .x-has-iosstatusbar.x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-content { top: 116px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-top {height: 96px;}.iosstatusbar .x-panel .x-panel-content .x-panel.p550014d983134fd2ab0cb97943accd6a-iosstatusbar >.x-panel-content {top: 96px;}</style>
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
    				baseUrl: window.__justep.__ResourceEngine.contextPath + '/v_4677_nol_zh_CNs_d_/LH_Team/channel',
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
    				context.model = '$model/UI2/LH_Team/channel/dynamic.w' + (document.location.search || "");
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