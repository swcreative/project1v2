class Meditations
  def self.quote
    @@quotes[rand(0..@@quotes.count)].gsub!("\n", " ")
  end
end
