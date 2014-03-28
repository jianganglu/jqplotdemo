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
<div id="chart3" style="width:250px; height:240px;"/>
<div style="position:absolute;z-index:99;display:none;" id="tooltip1b"></div>
<script class="code" type="text/javascript">
/*$(document).ready(function(){
  var s1 = [2, 6, 7, 10];
  var s2 = [7, 5, 3, 4];
  var s3 = [14, 9, 3, 8];
  plot3 = $.jqplot('chart3', [s1, s2, s3], {
    // Tell the plot to stack the bars.
    stackSeries: true,
    captureRightClick: true,
    seriesDefaults:{
      renderer:$.jqplot.BarRenderer,
      rendererOptions: {
          // Put a 30 pixel margin between bars.
          barMargin: 30,
          // Highlight bars when mouse button pressed.
          // Disables default highlighting on mouse over.
          highlightMouseDown: true    
      },
      pointLabels: {show: true}
    },
    axes: {
      xaxis: {
          renderer: $.jqplot.CategoryAxisRenderer
      },
      yaxis: {
        // Don't pad out the bottom of the data range.  By default,
        // axes scaled as if data extended 10% above and below the
        // actual range to prevent data points right on grid boundaries.
        // Don't want to do that here.
        padMin: 0
      }
    },
    legend: {
      show: true,
      location: 'e',
      placement: 'outside'
    }      
  });
  // Bind a listener to the "jqplotDataClick" event.  Here, simply change
  // the text of the info3 element to show what series and ponit were
  // clicked along with the data for that point.
  $('#chart3').bind('jqplotDataClick', 
    function (ev, seriesIndex, pointIndex, data) {
      $('#info3').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
    }
  ); 
});*/
/* $(document).ready(function(){
	  var line1 = [['JOB', 10], ['PROC', 2], ['PROGRAM', 5], 
	  ['COPYBOOK', 2]];
	  var plot1 = $.jqplot('chart1', [line1], {
	    title: 'Concern vs. Occurrance',
	    series:[{renderer:$.jqplot.BarRenderer}],
	    axesDefaults: {
	    	min: 0,
	    	max: 10,
	    	pad: 2.5,
	        tickRenderer: $.jqplot.CanvasAxisTickRenderer ,
	        tickOptions: {
	          fontSize: '10pt',
	          showGridline: true,
	          showMark: false,
	        }
	    },
	    tickOptions: {
	    	mark: 'inside'
	    },
	    axes: {
	      xaxis: {
	        renderer: $.jqplot.CategoryAxisRenderer
	        angle: -30,
	      },
	      yaxis: {
	    	renderer: $.jqplot.CategoryAxisRenderer
	      }
	    },
	    seriesDefaults: {
	    	color: '#3366cc',
	    	rendererOptions: {
	    		barWidth: 29
	    	}
	    },
	    grid: {
	    	gridLineColor: '#E5E5E5',
	        background: '#FFFFFF',
	        borderColor: '#FFFFFF'
	    },
	    cursor:{
	          zoom:true,
	          tooltipOffset: 10,
	          tooltipLocation: 'nw'
	      }
	  });
	}); */
	$(document).ready(function(){   
	    var line3 = [['JOB', 10], ['PROC', 2], ['PROGRAM', 5], 
	           	  ['COPYBOOK', 2]];
	 	
	    var plot3 = $.jqplot('chart3', [line3], {
	      series:[{renderer:$.jqplot.BarRenderer}],
	      axesDefaults: {
		        tickRenderer: $.jqplot.CanvasAxisTickRenderer ,
		        tickOptions: {
		          fontSize: '10pt',
		          showGridline: true,
		          showMark: false,
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
	          ticks: ['0.0','2.5','5.0','7.5','10.0']
	        }
	      },
	      seriesDefaults: {
		    	color: '#3366cc',
		    	rendererOptions: {
		    		barWidth: 29
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
		    	tooltipLocation: 'n',
		        tooltipAxes: 'x',
		        tooltipFormatString: '<b><i><span style="color:red;">%s</span></i></b> %.1f',
		        useAxesFormatters: false
		      },
	    });
	    $('#chart3').bind('jqplotDataClick', 
	            function (ev, seriesIndex, pointIndex, data) {
	                $('#info3').html('series: '+seriesIndex+', point: '+pointIndex+', data: '+data);
	            }
	        );
	});
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