require "simpleValidator"
require "test/unit"
 
# Tests for SimpleValidator 
class TestSimpleValidator < Test::Unit::TestCase
 
  def test_email_validation_valid
    assert_equal(true, SimpleValidator.new().isEmail("johan@baminfo.se"))
    assert_equal(true, SimpleValidator.new().isEmail("johan.astborg@baminfo.com"))
    assert_equal(true, SimpleValidator.new().isEmail("johan_astborg1984@baminfo.com"))
  end
  
  def test_email_validation_invalid
    assert_equal(false, SimpleValidator.new().isEmail("johan@baminfo.s"))
  end
  
  def test_personnr_validation_valid
    assert_equal(true, SimpleValidator.new().isPersonNr("19840916-1241"))
    assert_equal(true, SimpleValidator.new().isPersonNr("198409161241"))
    assert_equal(true, SimpleValidator.new().isPersonNr("8409161241"))
  end
  
  def test_personnr_validation_invalid
    assert_equal(false, SimpleValidator.new().isPersonNr("840916124"))
    assert_equal(false, SimpleValidator.new().isPersonNr("840-916124"))
  end
 
end