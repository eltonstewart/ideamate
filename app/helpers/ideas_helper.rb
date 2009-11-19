module IdeasHelper
  
  
  def getMail 
    imap = Net::IMAP.new(WEB_CONFIG['server'],WEB_CONFIG['port'],true)
    imap.login(WEB_CONFIG['username'], WEB_CONFIG['password'])
    imap.select('INBOX')
    imap.search(["NOT", "DELETED"]).each do |message_id|
      MailFetcher.receive(imap.fetch(message_id, "RFC822")[0].attr["RFC822"])
      imap.store(message_id, "+FLAGS", [:Deleted])
    end
    imap.logout()
    imap.disconnect()
  end
    
  
end
