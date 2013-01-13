class Nucleotide

  attr_reader :dna

  DNA_BASES = { adenine: 'A', cytosine: 'C', guanine: 'G', thymine: 'T' }
  RNA_BASES = { adenine: 'A', cytosine: 'C', guanine: 'G', uracil: 'U' }

  def initialize(dna)
    @dna = dna
    @count = {}
  end

  def nucleobases_summary
    "#{adenine} #{cytosine} #{guanine} #{thymine}"
  end

  def rna
    @dna.gsub(DNA_BASES[:thymine], RNA_BASES[:uracil])
  end

  def nt
    @dna.size
  end

  def method_missing(name, *args, &block)
    return count_for(name) if DNA_BASES.keys.include?(name)
    super
  end

  private

  def count_for(nucleobase)
    perform_count unless @count[nucleobase]
    @count[nucleobase]
  end

  def perform_count
    DNA_BASES.each { |k,v| @count[k] = @dna.count(v) }
  end
end