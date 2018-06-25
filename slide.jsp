<!DOCTYPE html>
<html lang="en">
    <head>
    <title>lightSlider Demo</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <link rel="stylesheet"  href="./css/lightslider.css"/>
    <style>
    	ul{
			list-style: none outside none;
		    padding-left: 0;
            margin: 0;
		}
        .demo .item{
            margin-bottom: 60px;
        }
		.content-slider li{
		    text-align: center;
		    color: #FFF;
		}
		.content-slider h3 {
		    margin: 0;
		    padding: 70px 0;
		}
		.demo{
			width: 800px;
		}
    </style>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
    <script src="./js/lightslider.js"></script> 
    <script>
    	 $(document).ready(function() {
			$("#content-slider").lightSlider({
                keyPress:true,
                item:3,
                slideMargin: 0,
                speed:500,
                auto:true,
                loop:true,
                onSliderLoad: function() {
                    $('#content-slider').removeClass('content-slider');
                }  
            });
		});
    </script>
</head>
<body>
	<div class="demo">
        <div class="item">
	            <ul id="content-slider" class="content-slider">
	                <li>
	                    <h3><img src="img/poster/poster1.jpg"></h3>
	                </li>
	                <li>
	                    <h3><img src="img/poster/poster2.jpg"></h3>
	                </li>
	                <li>
	                    <h3><img src="img/poster/poster3.jpg"></h3>
	                </li>
	                <li>
	                    <h3><img src="img/poster/poster4.jpg"></h3>
	                </li>
	                <li>
	                    <h3><img src="img/poster/poster5.jpg"></h3>
	                </li>
	                <li>
	                    <h3><img src="img/poster/poster6.jpg"></h3>
	                </li>
	            </ul>
	        </div>
	    </div>	

    </div>	
</body>
