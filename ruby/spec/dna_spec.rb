require 'minitest/autorun'
require './lib/dna'

# Problem: http://rosalind.info/problems/dna/

class TestNucleotide < MiniTest::Unit::TestCase

  def setup
    dna = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    @nucleotide = Nucleotide.new(dna)
  end

  def test_that_counts_nucleobases_correctly
    assert_equal "20 12 17 21", @nucleotide.nucleobases_summary
  end

  def test_that_counts_the_rigth_nucleobase
    assert_equal 20, @nucleotide.adenine
    assert_equal 12, @nucleotide.cytosine
    assert_equal 17, @nucleotide.guanine
    assert_equal 21, @nucleotide.thymine
  end

  def test_that_calculate_dna_legth
    assert @nucleotide.nt == 70
  end
end