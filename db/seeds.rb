
file=JSON.parse(File.read("pays.json"))
file["pays"].each do |g|
  Country.create(country: g["country"], phone: g["phone"], unicode: g["unicode"])
end

