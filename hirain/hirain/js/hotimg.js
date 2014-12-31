/*
 *  幻灯片模块DEMO
 *  根据页面内dom结构，自动生成幻灯片，幻灯片数据来自于放置图片的多少
 */

//闭包执行，将作用域传进去缩短作用域链查找
(function($, window, undefined) {

	//构造函数
	var SLIDE = function(conf) {

		//{}为默认配置
		this.conf = conf || {};
		this.init();
	};

	//原型属性
	SLIDE.prototype = {
		//恢复构造函数
		constructor : SLIDE,

		/**
		 * 初始化方法
		 */
		init : function() {
			this.getDOMs();
			this.rander();
			this.addEvent();
			this.autoPlay();
		},
		/**
		 * 获取所有相关Dom节点
		 */
		getDOMs : function() {
			this.Doms = {
					currAD : $(this.conf.keyDoms.wrap),
					wrap : $(this.conf.keyDoms.wrap),
					wrapli : $(this.conf.keyDoms.wrap).children("li"),
					btns : $(this.conf.keyDoms.btns),
					btnsli : $(this.conf.keyDoms.btns).children("li"),
					prev:$(this.conf.keyDoms.prev),
					next:$(this.conf.keyDoms.next)
				}
		},
		//渲染
		rander : function() {
			var curr = this.currIdex = this.conf.currIdex;
			this.Doms.wrapli.css({
				display : "none",
				opacity : 0
			});
			//设置当前
			$(this.Doms.wrapli[curr]).css({
				display : "block",
				opacity : 1
			});
			if(this.conf.keyDoms.btns){
				//当前btn
				$(this.Doms.btnsli[curr]).addClass("on");
			}
		},

		/**
		 * 添加事件监听
		 */
		addEvent : function() {
			if(this.conf.keyDoms.btns){
				var that = this;
				this.Doms.btns.bind("click", function(e) {
					that.btnsAfter(e);
				});
			}
			if(this.conf.keyDoms.prev){
				var that = this;
				this.Doms.prev.bind("click", function(e) {
					var next = that.currIdex * 1 - 1;
					if (next < 0 ) {
						next = that.Doms.wrapli.length - 1;
					}
					that.goSlid(next);
				});
			}
			if(this.conf.keyDoms.next){
				var that = this;
				this.Doms.next.bind("click", function(e) {
					var next = that.currIdex * 1 + 1;
					if (next > that.Doms.wrapli.length - 1) {
						next = 0;
					}
					that.goSlid(next);
				});
			}
		},

		/**
		 * 响应按钮事件
		 */
		btnsAfter : function(e) {
			if(this.conf.keyDoms.btns){
				var that = this;
				var target = e.target;
				if (target.tagName == "LI" && $(target.parentNode).hasClass("focus_num")) {
					clearTimeout(that.timerId);
					that.goSlid(target.innerHTML * 1 - 1);
					that.autoPlay();
				}
			}
		},

		/**
		 * 幻灯切换
		 * 将当前广告渐隐，渐显第i个
		 */
		goSlid : function(next) {
			var that = this;
			var speed = this.conf.speed;
			var curr = this.currIdex;
			if (next == curr) {
				return;
			}
			this.currAD = this.Doms.wrapli[curr];
			if(this.conf.keyDoms.btns){
				$(that.Doms.btnsli[curr]).stop();
			}
			$(that.currAD).css({ display : "none"});
			$(that.currAD).animate({
				opacity : 0
			}, {
				duration : speed,
				complete : function() {
					$(this).css({
						"zIndex" : "0"
					});
				}
			});
			
			this.nextAd = this.Doms.wrapli[next];
			// console.log(this.nextAd);
			$(this.nextAd).stop();
			$(this.nextAd).css({ display : "block" });
			$(this.nextAd).animate({
				opacity : 1
			}, {
				duration : speed,
				complete : function() {
					$(this).css({
						"zIndex" : "1"
					});
				}
			});
			if(this.conf.keyDoms.btns){
				$(that.Doms.btnsli[curr]).removeClass("on");
				$(that.Doms.btnsli[next]).addClass("on");
			}
			this.currIdex = next;
		},

		/**
		 * 自动播放
		 */
		autoPlay : function() {
			var that = this;
			var callee = arguments.callee;
			that.timerId = setTimeout(function() {
				clearTimeout(that.timerId);
				var next = that.currIdex * 1 + 1;
				if (next > that.Doms.wrapli.length - 1) {
					next = 0;
				}
				that.goSlid(next);
				callee.call(that);
			}, that.conf.delay);

		}
	}

	//将类公开到window
	window["SLIDE"] = SLIDE;

})(window.jQuery, window);