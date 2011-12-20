class SimpleValidator
  class << self
    def isEmail(email)
      return /^[A-z0-9_]+(\.[A-z0-9]*)*@[A-z0-9_]+\.[A-z0-9_]{2,4}$/.match(email) != nil
    end
  
    def isPersonNr(pnr)
      return /^(\d{12})|(\d{10})|(\d{6}-\d{4})|(\d{8}-\d{4})$/.match(pnr) != nil
    end
  end
end