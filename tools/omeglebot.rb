#!/usr/bin/ruby
require 'watir'
def bot
        b = Watir::Browser.new :firefox
        b.goto("omegle.com")
        puts "Input your social engineering message."
        msg = gets.chomp

        b.img(:id => "textbtn").click
        while 2 == 2
                b.textarea(:class => "chatmsg ").set msg
                b.button(:class => "sendbtn").click
                b.button(:class => "disconnectbtn").click
                b.button(:class => "disconnectbtn").click
                b.button(:class => "newchatbtnwrapper").click
        end

end

bot
~                   
