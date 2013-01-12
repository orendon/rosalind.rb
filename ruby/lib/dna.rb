class Nucleotide

  attr_reader :dna

  NUCLEOBASES = { adenine: 'A', cytosine: 'C', guanine: 'G', thymine: 'T' }

  def initialize(dna)
    @dna = dna
    @count = {}
  end

  def nucleobases_count
    perform_count
    "#{adenine} #{cytosine} #{guanine} #{thymine}"
  end

  def nt
    @dna.size
  end

  def method_missing(name, *args, &block)
    return @count[name] if NUCLEOBASES.keys.include?(name)
    super
  end

  private

  def perform_count
    NUCLEOBASES.each { |k, v| @count[k] = @dna.count(v) }
  end
end