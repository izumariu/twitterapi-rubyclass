f = Array.new
File.open("twitter-ruby.rb","r").each_line{|l|f<<l.chomp}
methods = Hash.new
pv = false
ctg = String.new
counter = 0
f.each do |l|
	if l.match(/^\#ctg\#+$/)
		ctg = f[counter+1].split(" ");ctg.shift;ctg.pop;ctg=ctg.join(" ")
		puts "CTG = #{ctg}"
	elsif l.match(/^\s*def.+/)&&!pv
		if l.split("def ")[-1].match(/^\S+\(/).to_s.chop == "initialize"
			puts l.split("def ")[-1].match(/^\S+\(/).to_s.chop.upcase
		else
			puts "\t"+l.split("def ")[-1].match(/^\S+\(/).to_s.chop
		end
	elsif l.match(/^\s*private\s*$/)
		pv = true
	elsif l.match(/^\s*public\s*$/)
		pv = false
	end
	counter+=1 if counter+1 < f.length
end
