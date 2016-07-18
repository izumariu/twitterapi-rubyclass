f = Array.new
File.open("twitter-ruby.rb","r").each_line{|l|f<<l.chomp}
methods = Hash.new
pv = false
ctg = String.new
counter = 0
f.each do |l|
	if l.match(/^\#ctg\#+$/)
		ctg = f[counter+1].split(" ");ctg.shift;ctg.pop;ctg=ctg.join(" ")
		puts "new CTG = #{ctg}"
		methods[ctg]={} if methods[ctg]==nil
	elsif l.match(/^\s*def.+/)&&!pv
		method_name = l.split("def ")[-1].match(/^\S+\(/).to_s.chop
		if method_name == "initialize"
			puts "~~ CLASS RECOGNIZED ~~"
		else
			method_url = String.new
			3.times do |i|
				if f[counter+(1+i)].match ( /^\s*url\s*=\s*paramsGetRq\(\"/ )
					method_url_prev=f[counter+(1+i)]
					method_url_prev=method_url_prev.split(/^\s*url\s*=\s*paramsGetRq\(\"/)[-1]
					method_url_prev=method_url_prev.split(/\"\s*,/)
					method_url=Array.new
					method_url.push(method_url_prev.shift)
					method_url.push(method_url_prev.shift.split("\"")[-1])
					method_url=method_url.join
				end
			end
			if method_url == ""
				3.times do |i|
					if f[counter+(1+i)].match( /^\s*url\s*=\s*URI\(\"/ )
						method_url_prev=f[counter+(1+i)]
						method_url=method_url_prev.split( /^\s*url\s*=\s*URI\(\"/ )[-1].split( /\"\s*\)/ )[0]
					end
				end
			end
			method_url=="" ? (method_name="~~#{method_name}~~";method_url="--------") : ()
			methods[ctg][method_name]=method_url
		end
	elsif l.match(/^\s*private\s*$/);pv=true
	elsif l.match(/^\s*public\s*$/);pv=false
	end
	counter+=1 if counter+1 < f.length
end
fo = String.new
File.open("Header.md","r").each_line{|l| fo<<l}
methods.each_key do |kf|
	fo << "### _#{kf}_\n| Method as `__method__(params={})` | API JSON Endpoint |\n|:---:|:---:|\n"
	methods[kf].each_key do |ks|
		fo << "| #{ks} | #{methods[kf][ks].split("https://api.twitter.com/1.1")[-1].split("https://publish.twitter.com")[-1].gsub("\#{id}",":id")} |\n"
	end
end
File.open("README.md","w") {|fi| fi << fo}
