require 'date'
def mcc
	begin
		sitehtml = Net::HTTP.get(URI("http://www.manga-comic-con.de/Besucher/Tickets/Oeffnungszeiten-und-Preise/"))
	rescue
		puts "Error: MCC-Server not reachable. Trying again."
		sleep 3
		retry
	end
	day = sitehtml.match(/<td>\d{1,2}\. bis \d{1,2}\./).to_s.split("<td>")[-1].split(" bis ")[0].split(".")[0].to_i+2
	year= sitehtml.match(/<td>\d{1,2}\. bis \d{1,2}\. M\&auml\;rz \d{4}/).to_s.split(" ")[-1]
	$days_left = (Date.parse("#{day}.03.#{year}")-Date.today).to_i
	#puts $days_left
end
def calcToDate(date);$days_left = (Date.parse(date)-Date.today);end
# DOES:
mcc
