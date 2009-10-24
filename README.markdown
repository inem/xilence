## [Xilence](http://inem.github.com/xilence.html) ##

## Overview ##

- How often have you got 500 error while developing some super-cool ajax thing and seen stuff like this in your browser console?  
![Safari console rails backtrace noise](http://inem.github.com/images/safari-console-rails-backtrace.png)
- Do we really need to scroll down all that HTML/CSS noise each time looking on rails error backtrace?

Wanna make your backtraces clean and quiet for ajax requests? [Go for it!](http://inem.github.com/xilence.html)

## Features ##

There is only one extremely useful feature:

- Xilence removes all that annoying HTML and CSS code from your rails backtrace for ajax requests

## Sandbox ##

Just open your firebug/safari console and click on the broken ajax action link

You should see something like this:  

![Firebug xilence output](http://inem.github.com/images/xilence_output.png)

## Installation ##

./script/plugin install git://github.com/inem/xilence.git

## Source code ##

[http://github.com/inem/xilence](http://github.com/inem/xilence)