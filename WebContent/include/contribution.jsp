<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>疫情统计app</title>

	<script src="${pageContext.request.contextPath }/js/echarts.min.js"></script>
	<script src="${pageContext.request.contextPath }/js/china.js"></script>
	<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
	<style type="text/css">
	
		.info-block {
			height: 60px;
			width: 100px;
			position: absolute;
		}
		
		.info-block:first-child {
			top: 2px;
			left: 15px;
		}
		
		.info-block:nth-child(2) {
			top: 2px;
			left: 135px;
		}
		
		.info-block:nth-child(3) {
			top: 2px;
			left: 255px;
		}
		.info-block:nth-child(4) {
			top: 75px;
			left: 15px;
		}
		
		.info-block:nth-child(5) {
			top: 75px;
			left: 135px;
		}
		
		.info-block:nth-child(6) {
			top: 75px;
			left: 255px;
		}
		.info-block > h1 {
			font-size: 18px;
			color: #353535;
			margin: 2px auto;
			text-align: center;
		}
		
		.info-block > p {
			font-size: 16px;
			margin: 0 auto;
			text-align: center;
		}
		
		.info-block p:last-child {
			font-size: 14px;
			margin: 0;
		}
		#info-header {
			height: 85px;
		}
		
		#info-header-line {
			height: 4px;
			width: 240px;
			margin: 1px auto;
			background-color: #D9001B;
		}
		#info-header-line:first-child {
			width: 140px;
			height: 4px;
			display: inline-block;
			background-color: #D9001B;
		}
		#info-header-line:nth-child(2) {
			width: 100px;
			height: 4px;
			display: inline-block;
			background-color: rgba(236, 128, 141, 0.6);
		}
		#static-button {
			margin: 3px auto;
			width: 250px;
			height: 40px;
			border-radius: 15px;
			font-size: 20px;
			background-color: #D9001B;
		}
		
		#data-main > div {
			margin-top: 2px;
			padding: 0;
		}
		#info-buttom {
			height: 30px;
			width: 300px;
			margin: 2px auto;
			border-color: black;
		}
		#info-buttom-line {
			width: 240px;
			height: 4px;
			background-color: rgba(98, 0, 238, 0.6);
			margin: 1px auto;
		}
		/* 信息页面的最下面部分 */
		#info-buttom > button {
			height: 26px;
			width: 134px;
			background-color: #D7D7D7;
			font-size: 13px;
			color: #333333;
			text-align: center;
			display: inline-block;
			margin-left: 10px;
		}
		.footer li {
			margin: 5px 0;
			font-size: 20px;
			color: black;
			width: 118px;
			text-align: center;
			line-height: 48px;
			margin: 0 auto;
		}
		
		.footer li:hover {
			color: #6200EE;
		}
	</style>
</head>
<body>
	<div id="wapper" style="width: 360px;height: 660px;">
		<!-- 头部区域 -->
		<div id="header" style="width: 360px;height: 60px;background-color: #6200EE;">
			<button type="button" class="btn btn-default" aria-label="Justify" style="height: 60px;width: 40px;
					background-color: #6200EE;border-color: #6200EE;">
			  	<span class="glyphicon glyphicon-align-left" aria-hidden="true" style="font-size: 30px;color: white;"></span>
			</button>	
			<span style="font-size: 20px;color: white;line-height: 20px;margin-left: 10px;">奉献</span>
			<button type="button" class="btn btn-default" aria-label="Justify" style="height: 60px;width: 40px;
					background-color: #6200EE;border-color: #6200EE;float: right;margin-right: 10px;">
			  	<span class="glyphicon glyphicon-option-vertical" aria-hidden="true" style="font-size: 30px;color: white;"></span>
			</button>
		</div>
		<!-- 身体区域 -->
		<div id="body" style="width: 360px;height: 546px;">
			<ul class="nav nav-pills nav-stacked">
			  <li role="presentation"><a href="#">微博:</a></li>
			  <li role="presentation"><a href="#">官网</a></li>
			</ul>
		</div>
		
		<!-- 底栏 -->
		<div id="footer" class="footer" style="width: 360px;height: 54px;">
			<!-- 底栏 -->
			<ul class="nav nav-pills">
			  	<li role="presentation"><span class="glyphicon glyphicon-earphone" aria-hidden="true"></span></li>
			  	<li role="presentation"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span></li>
			  	<li role="presentation"><span class="glyphicon glyphicon-map-marker" aria-hidden="true"></span></li>
			</ul>
		
		</div>
	</div>
	
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/juqery-3.3.1.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script>
var chart = echarts.init(document.getElementById('main'));
chart.setOption({
    title: {
        text: '全国地图',
        subtext: '该页面的数据仅供参考',
    },
    tooltip: {
        formatter:function(params){
            return params.name+'<br />'+'确诊人数：'+params['data']['value']+'<br />'+'死亡人数：'
            +params['data']['dead']+'<br />'+'治愈人数：'+params['data']['cure'];
        }//数据格式化
    },
    toolbox: {
        show: true,
        orient: 'vertical',
        left: 'right',
        top: 'center',
        feature: {
            dataView: {readOnly: false},
            restore: {},
            saveAsImage: {}
        }
    },
    visualMap: {
        min: 0,
        max: 40000,
        left: 'left',
        top: 'bottom',
        text: ['多','少'],
        inRange: {
            color: ['lightskyblue', 'yellow', 'orangered']
        },
        show:true
    },
    series: [{
        type: 'map',
        map: 'china',
        label:{
            show: true
        },
        nameMap:{
            
            "南海诸岛" : "南海诸岛",
             '北京'   :'北京市',
             '天津'   :'天津市',
             '上海'   :'上海市',
             '重庆'   :'重庆市',
             '河北'   :'河北省',
             '河南'   :'河南省',
             '云南'   :'云南省',
             '辽宁'   :'辽宁省',
             '黑龙江'  :  '黑龙江省',
             '湖南'   :'湖南省',
             '安徽'   :'安徽省',
             '山东'   :'山东省',
             '新疆' :'新疆维吾尔自治区',
             '江苏' :'江苏省',
             '浙江' :'浙江省',
             '江西' :'江西省',
             '湖北' :'湖北省',
             '广西' : '广西壮族自治区',
             '甘肃' :'甘肃省',
             '山西' :'山西省',
             '内蒙古' : "内蒙古自治区",
             '陕西'  :'陕西省',
             '吉林'  :'吉林省',
             '福建'  :'福建省',
             '贵州'  :'贵州省',
             '广东'  :'广东省',
             '青海'  :'青海省',
             '西藏'  :'西藏自治区',
             '四川'  :'四川省',
             '宁夏' :'宁夏回族自治区',
             '海南' :'海南省',
             '台湾' :'台湾',
             '香港' :'香港',
             '澳门' :'澳门'
        }
    }
    ]
});

//异步加载数据
$.ajax({
   type : "get",
   async : true,            //异步请求（同步请求将会锁住浏览器，用户其他操作必须等待请求完成才可以执行）
   url : "https://api.yonyoucloud.com/apis/dst/ncov/country",    //请求发送到TestServlet处
   success : function(resultJson) {
       var result= jQuery.parseJSON(resultJson);
       //请求成功时执行该函数内容，result即为服务器返回的json对象
       if (result) {
               chart.setOption({        //加载数据图表
                  series: [{
                      data: result
                  }]
              });
              
       }
  },
   error : function(errorMsg) {
       //请求失败时执行该函数
   alert("图表请求数据失败!");
   }
});

</script>


</body>
</html>