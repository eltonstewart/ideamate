module HomeHelper
  
   require 'active_rdf'
   
   def getRDF

     # we add an existing SPARQL database as datasource
     ConnectionPool.add_data_source(:type => :sparql, :results => :sparql_xml,
      :url => "http://dbpedia.org/page/Sonic_Youth") 

     # we register a short-hand notation for the namespace used in this test data 
     Namespace.register :test, 'http://activerdf.org/test/'
     ObjectManager.construct_classes

     all_people = TEST::Person.find_all
     all_resources = RDFS::Resource.find_all

     # print all the people, and their friends
     all_people.each do |person|
       puts "#{person} has #{person.test::eye} eyes"
     end

     # find all people aged 27
     almost_thirties = TEST::Person.find_by_test::age(27)
     puts "the following people are almost thirty: #{almost_thirties}"
  end
  
end
