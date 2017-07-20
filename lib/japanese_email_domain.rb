require "japanese_email_domain/version"

module JapaneseEmailDomain

  class Validator
    VALID_MAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    MAIL_DOMAINS = %W(docomo.ne.jp ezweb.ne.jp softbank.ne.jp i.softbank.jp)

    def initialize(address)
      @address = address
      @account, @domain = address.split('@')
    end
    def valid?
      return false unless @address.match(VALID_MAIL_REGEXP)
      MAIL_DOMAINS.include?(@domain)
    end
  end
end
