<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <link class="include" rel="stylesheet" type="text/css" href="../jquery.jqplot.min.css" /> -->
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
<div id="chart3" style="width:250px; height:240px;"/>
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
			    	/* rendererOptions: {
			    		barWidth: '10'
			    	}, */
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
			        borderColor: '#FFFFFF'
			    },
			  highlighter: {
				  	show: true,
				 	sizeAdjust: 10,
			    	tooltipLocation: 'se',
			        tooltipAxes: 'y',
			        tooltipFormatString: '<span style="color:red;">hello</span><br/><span style="background:#FF0000;width:2px;height:2px"></span> %.2f',
			        useAxesFormatters: false
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
    
    </div>
    <script type="text/javascript" src="example.min.js"></script>
</body>
</html>