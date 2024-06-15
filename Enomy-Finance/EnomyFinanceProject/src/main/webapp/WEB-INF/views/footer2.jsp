<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <title></title>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css'>
    <link href='//netdna.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css' rel='stylesheet'/>
    <style>
        /* Footer Top */
        #footer {
            background: #252525;
            border-bottom: 3px solid #222;
            color: #fff;
        }

        /* Widgets */
        .widget {
            padding: 20px;
            margin-bottom: 40px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi black-gray background */
            border-radius: 5px;
        }

        .widget-title {
            margin-bottom: 20px;
        }

        .widget-title span {
            background: #839FAD none repeat scroll 0 0;
            display: block;
            height: 1px;
            margin-top: 25px;
            position: relative;
            width: 20%;
        }

        .widget-title span::after {
            background: inherit;
            content: "";
            height: inherit;
            position: absolute;
            top: -4px;
            width: 50%;
        }

        .widget-title.text-center span, .widget-title.text-center span::after {
            margin-left: auto;
            margin-right: auto;
            left: 0;
            right: 0;
        }

        .widget li a {
            color: #fff;
        }

        .widget li a:hover {
            color: #aaa;
            text-decoration: none;
        }

        .typo-light h1, .typo-light h2, .typo-light h3, .typo-light h4, .typo-light h5, .typo-light h6,
        .typo-light p, .typo-light div, .typo-light span, .typo-light small {
            color: #fff;
        }

        .fa {
            display: inline-block;
            font: normal normal normal 14px/1 FontAwesome;
            background-color: #3e3e3e;
            color: #fff;
            padding: 9px;
            border-radius: 5px;
        }

        input[type="text"] {
            background: rgba(255, 255, 255, 0.075);
            padding: 10px 15px;
            color: #aaa;
            border: 3px solid rgba(0, 0, 0, 0.1);
            font-size: 14px;
            margin-bottom: 16px;
            border-radius: 5px;
            transition: all 0.2s cubic-bezier(0.4, 0, 0.2, 1);
            transition-delay: 0.2s;
            text-align: center;
            width: 100%;
        }

        #footerSubscribeButton {
            background: #e67e22;
            border: 3px solid rgba(0, 0, 0, 0.1);
            color: #fff;
            border-color: #e67e22;
            box-shadow: 0 8px 17px 0 rgba(0, 0, 0, 0.2);
            transition-delay: 0s;
            width: 100%;
            font-size: 14px;
            padding: 10px 15px;
            margin-bottom: 16px;
            border-radius: 5px;
        }

        #footerSubscribeButton:hover,
        #footerSubscribeButton:focus,
        #footerSubscribeButton.active {
            background: #4b92dc;
            color: #fff;
            -webkit-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -ms-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -o-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -webkit-transition: all 250ms ease-in-out 0s;
            -moz-transition: all 250ms ease-in-out 0s;
            -ms-transition: all 250ms ease-in-out 0s;
            -o-transition: all 250ms ease-in-out 0s;
            transition: all 250ms ease-in-out 0s;
        }

        .thumb-content::before {
            content: "\f190";
            font-family: FontAwesome;
            font-style: normal;
            font-weight: normal;
            text-decoration: inherit;
            margin-left: 5px;
            color: ##ffffff;
        }

        ul.social-footer2 {
            margin: 0;
            padding: 0;
            width: auto;
        }

        ul.social-footer2 li {
            display: inline-block;
            padding: 0;
        }

        ul.social-footer2 li a:hover {
            background-color: #ff8d1e;
        }

        ul.social-footer2 li a {
            display: block;
            height: 30px;
            width: 30px;
            text-align: center;
        }

        .btn {
            background-color: #ff8d1e;
            color: #fff;
        }

        .btn:hover, .btn:focus, .btn.active {
            background: #4b92dc;
            color: #fff;
            -webkit-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -moz-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -ms-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -o-box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            -webkit-transition: all 250ms ease-in-out 0s;
            -moz-transition: all 250ms ease-in-out 0s;
            -ms-transition: all 250ms ease-in-out 0s;
            -o-transition: all 250ms ease-in-out 0s;
            transition: all 250ms ease-in-out 0s;
        }
    </style>
</head>
<body>
    <footer id="footer" class="footer-1">
        <div class="main-footer widgets-dark typo-light">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="widget subscribe no-box">
                            <h5 class="widget-title">ENOMY FINANCE<span></span></h5>
                            <p>Empowering Your Financial Journey - Enomy Finances is committed to delivering personalized financial solutions with
       						innovation and integrity. Your success is our priority, and we are dedicated to providing exceptional service every step of the way.</p>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="widget no-box">
                            <h5 class="widget-title">Quick Links<span></span></h5>
                            <ul class="thumbnail-widget">
                                <li>
                                    <div class="thumb-content"><a href="#.">&nbsp;Get Started</a></div>
                                </li>
                                <li>
                                    <div class="thumb-content"><a href="#.">&nbsp;Top Leaders</a></div>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="widget no-box">
                            <h5 class="widget-title">Follow up<span></span></h5>
                            <a href="#"> <i class="fa fa-facebook"> </i> </a>
                            <a href="#"> <i class="fa fa-twitter"> </i> </a>
                            <a href="#"> <i class="fa fa-youtube"> </i> </a>
                        </div>
                    </div>
                    <div class="col-xs-12 col-sm-6 col-md-3">
                        <div class="widget no-box">
                            <h5 class="widget-title">Contact Us<span></span></h5>
                            <p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.</p>
                            <div class="emailfield">
                                <input type="text" name="email" value="Email">
                                <input name="uri" type="hidden" value="arabiantheme">
                                <input name="loc" type="hidden" value="en_US">
                                <!-- Add the ID to the Subscribe button -->
                                <input id="footerSubscribeButton" class="submitbutton ripplelink" type="submit" value="Subscribe">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-copyright">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p>Copyright Design Sherif Hamdy © 2019. All rights reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>
