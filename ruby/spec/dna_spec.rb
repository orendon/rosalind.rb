require 'minitest/autorun'
require './lib/dna'

class TestNucleotide < MiniTest::Unit::TestCase

  def test_that_counts_nucleobases
    dna = "AGCTTTTCATTCTGACTGCAACGGGCAATATGTCTCTGTGTGGATTAAAAAAAGAGTGTCTGATAGCAGC"
    nucleotide = Nucleotide.new(dna)

    assert_equal "20 12 17 21", nucleotide.nucleobases_count
  end
end