class Nucleotide

  attr_reader :dna

  NUCLEOBASES = { adenine: 'A', cytosine: 'C', guanine: 'G', thymine: 'T' }

  def initialize(dna)
    @dna = dna
    @count = {}
  end

  def nucleobases_summary
    "#{adenine} #{cytosine} #{guanine} #{thymine}"
  end

  def nt
    @dna.size
  end

  def method_missing(name, *args, &block)
    return count_for(name) if NUCLEOBASES.keys.include?(name)
    super
  end

  private

  def count_for(nucleobase)
    perform_count unless @count[nucleobase]
    @count[nucleobase]
  end

  def perform_count
    NUCLEOBASES.each { |k,v| @count[k] = @dna.count(v) }
  end
end