# If SpreeStaticContent extension is also being used we list a Contact Us link with the other footer page links.
Deface::Override.new(:virtual_path => "spree/shared/_footer",
                     :name => "contact_us_in_footer",
                     :insert_top => ".footer-top",
                     :text => "<li class='<%= (request.fullpath.gsub('//','/') == '/contact') ? 'current' : 'not'%>'><%= link_to Spree.t(:contact_us_title), '/contact'  %></li>",
                     :original => '45ce7795da02814069b4c8421126cecb872df0d1')
