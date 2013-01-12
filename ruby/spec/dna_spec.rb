require 'minitest/autorun'
require './lib/dna'

# Problem: http://rosalind.info/problems/dna/

class TestNucleotide < MiniTest::Unit::TestCase

  def setup
    dna = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    @nucleotide = Nucleotide.new(dna)
  end

  def test_that_counts_nucleobases
    assert_equal "20 12 17 21", @nucleotide.nucleobases_count
  end

  def test_that_calculate_dna_legth
    assert @nucleotide.nt == 70
  end
end