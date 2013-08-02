require 'minitest/autorun'
require 'dna'

# Problem: http://rosalind.info/problems/rna/

class TestRNA < MiniTest::Unit::TestCase

  def setup
    @dna = "GATGGAACTTGACTACGTAAATT"
    @nucleotide = Nucleotide.new(@dna)
  end

  def test_that_transcribe_dna_into_rna
    assert @nucleotide.dna == @dna
    assert @nucleotide.rna == "GAUGGAACUUGACUACGUAAAUU"
  end
end