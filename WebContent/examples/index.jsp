<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link class="include" rel="stylesheet" type="text/css" href="../jquery.jqplot.min.css" />
<link rel="stylesheet" type="text/css" href="examples.min.css" />
<link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shCoreDefault.min.css" />
<link type="text/css" rel="stylesheet" href="syntaxhighlighter/styles/shThemejqPlot.min.css" />
<script class="include" type="text/javascript" src="../jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="example-content">
<span id="info3">Nothing yet.</span>
<div id="chart1" style="width:338px; height:224px;"></div>
<div id="chart3" style="width:390px; height:240px;"/>
<div style="position:absolute;z-index:99;display:none;" id="tooltip1b"></div>
<script class="code" type="text/javascript">
	  $(document).ready(function(){   
	    var line3 = [['JOB', 10], ['PROC', 2], ['PROGRAM', 5], 
	           	  ['COPYBOOK', 2]];
	    drawColumnChartUtil(line3,'chart3');
	    
	});
	
	 function drawColumnChartUtil(line,chartId){
		var plot3 = $.jqplot(chartId, [line], {
		      series:[{renderer:$.jqplot.BarRenderer,
		    	  rendererOptions: {
			    		barWidth: '10'
			    	}
		    	  }],
		      axesDefaults: {
			        tickRenderer: $.jqplot.CanvasAxisTickRenderer ,
			        tickOptions: {
			          fontSize: '10pt',
			          showGridline: true,
			          showMark: false,
			          showLabel: true
			        }
			    },
		      axes: {
		        xaxis: {
		          renderer: $.jqplot.CategoryAxisRenderer,
		          labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
		          tickRenderer: $.jqplot.CanvasAxisTickRenderer,
		          tickOptions: {
		        //      angle: -30,
		              fontFamily: 'Courier New',
		              fontSize: '9pt'
		          }
		           
		        },
		        yaxis: {
		          labelRenderer: $.jqplot.CanvasAxisLabelRenderer,
		          //ticks: ['0.0','2.5','5.0','7.5','10.0']
		          width: '30'
		        }
		      },
		      seriesColors:['#85802b', '#85802b', '#73C774', '#C7754C', '#17BDB8'],
		      seriesDefaults: {
			  //  	color: '#3366cc',
			    	pointLabels: {
			    		show: true
			    	},
			    	rendererOptions: {                
			            // Set the varyBarColor option to true to use different colors for each bar.               
			            // The default series colors are used.                
			                varyBarColor: true           
			        }
			    },
			  grid: {
			    	gridLineColor: '#E5E5E5',
			        background: '#FFFFFF',
			        borderColor: '#FFFFFF',
			    //    shadow: false
			    },
			  highlighter: {
				  	show: true,
				 	sizeAdjust: 10,
			    	tooltipLocation: 'se',
			        tooltipAxes: 'y',
			   //     tooltipFormatString: '%.2f',
			        useAxesFormatters: false,
			        tooltipContentEditor:tooltipContentEditor
			      }
		    });
		    $('#' + chartId).bind('jqplotDataClick', 
		            function (ev, seriesIndex, pointIndex, data) {
		                $('#info3').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
		                switch(pointIndex){
	    	        	case 2:
	    	        	//	window.location.href='programinfo';
	    	        	window.location.href='http://www.baidu.com/';
	    	        	break;
	    	        	case 0:
	    	        	//	window.location.href='transaction?job';
	    	        	window.location.href='http://www.google.com/';
		    	        break;
	    	        }
		            }
		    );
		    function tooltipContentEditor(str, seriesIndex, pointIndex, plot) {
		        // 显示series_label, x-axis_tick, y-axis 数据
		        return "" + plot.data[seriesIndex][pointIndex];
		    }
	}  
	 
	 function drawPieChartUtil(options, piechartID, colors){
			
			 plot1 = $.jqplot(piechartID, [options], {
	             seriesDefaults: {
	             fill: true, 
	              renderer:$.jqplot.PieRenderer,
	              pointLabels: {
			    		show: true
			    	},
	             rendererOptions:{
	                        seriesColors: colors,
	                        diameter: 200, // 设置饼的直径
	                                 padding: 20,         // 饼距离其分类名称框或者图表边框的距离，变相该表饼的直径
	                        shadowAlpha: 0.08,    // 设置阴影区域的透明度
	                        showDataLabels: true, //显示百分比
	                        shadowAngle:90,        //显示阴影的角度
	                        color: '#DCDCDC'
	                        }
	              },
	               /* cursor: {
	        	   	show: true,
	        	   	showTooltip: true,
	        	   	followMouse: true,
	        	   	tooltipLocation: 'e',
	        	   	tooltipOffset: 30,
	        	   	useAxesFormatters: false,
	        	   	tooltipFormatString: '%s, %P',
	              },  */
	             legend:{
	                        show: true,         //设置是否出现分类名称框（即所有分类的名称出现在图的某个位置）
	                        location: 'ne',     // 分类名称框出现位置, nw, n, ne, e, se, s, sw, w.
	                        fontSize:10,
	                        //border: 'none',                //设置图注的边框不显示
	                        placement: 'inside',
	                 marginRight: 50,
	                 marginTop: 10,
	             },
	           
	              highlighter: {
	                      show:true,
	                      tooltipOffset: -100,
	                 tooltipLocation: 'e',
	                 useAxesFormatters: false,
	                 formatString:'%s, %P'
	             },  
	             grid:{
	             //drawBorder: false, 
	                 //drawGridlines: false,
	                 //background: '#ffffff',
	                 shadow:false,
	                
	              
	                        },gridPadding: {
	                                 top:0, 
	                                 bottom:0, 
	                                 left:0, 
	                                 right:0
	                        }
	     });
		//	 pieHightlight(piechartID);
	 }
	 
	 function pieHightlight(target)
	 {
	 $('#' + target).bind('jqplotDataHighlight',   
	 	    function (ev, seriesIndex, pointIndex, data, radius) {      
	 	      var chart_left = $('#' + target).offset().left,  
	 	      chart_top = $('#' + target).offset().top,  
	 	        x = ev.pageX,  // convert x axis unita to pixels  
	 	        y = ev.pageY;  // convert y axis units to pixels  
	 	      var color = 'rgb(50%,50%,100%)';  
	 	      if ($('#'+ target + 'tooltip1b').length <= 0){  
	 	        var tips = $('<div></div>');  
	 	        tips.attr('id',target + 'tooltip1b');  
	 	        $('#' + target).append(tips);  
	 	      }  
	 	      $('#'+ target + 'tooltip1b').css({  
	 	        left:x-chart_left,   
	 	        top:y-chart_top,  
	 	        position: 'absolute',  
	 	        zIndex: 99,  
	 	        backgroundColor:'#cccccc'  
	 	        });  
	 	      $('#'+ target + 'tooltip1b').html('<span style="font-size:14px;font-weight:bold;color:' +   
	 	        color + ';">' + data[0]+":"+data[1] + '</span><br />');  
	 	        
	 	      $('#'+ target + 'tooltip1b').show();  
	 	    });  
	 	     
	 	   // Bind a function to the unhighlight event to clean up after highlighting.  
	 	    $('#'+ target).bind('jqplotDataUnhighlight',   
	 	      function (ev, seriesIndex, pointIndex, data) {  
	 	          if ($('#'+ target + 'tooltip1b')) {  
	 	            $('#'+ target + 'tooltip1b').empty();  
	 	            $('#'+ target + 'tooltip1b').hide();  
	 	          }  
	 	      });  
	 	    
	 }
</script>
	<script src="../jquery.jqplot.min.js"></script>
	<script src="../plugins/jqplot.barRenderer.min.js"></script>
    <script src="../plugins/jqplot.categoryAxisRenderer.min.js"></script>
    <script src="../plugins/jqplot.pointLabels.min.js"></script>
    
  <script type="text/javascript" src="../plugins/jqplot.logAxisRenderer.min.js"></script>
    <script type="text/javascript" src="../plugins/jqplot.canvasTextRenderer.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.canvasAxisLabelRenderer.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.canvasAxisTickRenderer.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.dateAxisRenderer.min.js"></script>
    
    <script type="text/javascript" src="../plugins/jqplot.cursor.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.highlighter.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.dragable.min.js"></script>
<script type="text/javascript" src="../plugins/jqplot.trendline.min.js"></script>

<script type="text/javascript"  src="../plugins/jqplot.pieRenderer.js"></script>
<script type="text/javascript" src="../plugins/jqplot.meterGaugeRenderer.js"></script>

    </div>
 <!--    <script type="text/javascript" src="example.min.js"></script> -->
</body>
</html>