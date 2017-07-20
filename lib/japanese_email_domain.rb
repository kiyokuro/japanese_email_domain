require "japanese_email_domain/version"

module JapaneseEmailDomain

  class Validator
    valid_mail_regexp = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    mail_domains = %W(docomo.ne.jp ezweb.ne.jp softbank.ne.jp i.softbank.jp)

    def initialize(address)
      return false unless address.match(valid_mail)
      @account, @domain = address.split('@')
    end
    def valid?
      mail_domains.include?(@domain)
    end
  end
end
