module HTML
  enum QuirksMode
    NONE
    FULL
    LIMITED

    def self.from(public_id : String, system_id : String?) : self
      case public_id
      when "-//W3O//DTD W3 HTML Strict 3.0//EN//" then FULL
      when "-/W3C/DTD HTML 4.0 Transitional/EN" then FULL
      when "HTML" then FULL
      when "http://www.ibm.com/data/dtd/v11/ibmxhtml1-transitional.dtd" then FULL
      when .starts_with?("+//Silmaril//dtd html Pro v0r11 19970101//") then FULL
      when .starts_with?("-//AS//DTD HTML 3.0 asWedit + extensions//") then FULL
      when .starts_with?("-//AdvaSoft Ltd//DTD HTML 3.0 asWedit + extensions//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0 Level 1//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0 Level 2//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0 Strict Level 1//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0 Strict Level 2//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0 Strict//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.0//") then FULL
      when .starts_with?("-//IETF//DTD HTML 2.1E//") then FULL
      when .starts_with?("-//IETF//DTD HTML 3.0//") then FULL
      when .starts_with?("-//IETF//DTD HTML 3.2 Final//") then FULL
      when .starts_with?("-//IETF//DTD HTML 3.2//") then FULL
      when .starts_with?("-//IETF//DTD HTML 3//") then FULL
      when .starts_with?("-//IETF//DTD HTML Level 0//") then FULL
      when .starts_with?("-//IETF//DTD HTML Level 1//") then FULL
      when .starts_with?("-//IETF//DTD HTML Level 2//") then FULL
      when .starts_with?("-//IETF//DTD HTML Level 3//") then FULL
      when .starts_with?("-//IETF//DTD HTML Strict Level 0//") then FULL
      when .starts_with?("-//IETF//DTD HTML Strict Level 1//") then FULL
      when .starts_with?("-//IETF//DTD HTML Strict Level 2//") then FULL
      when .starts_with?("-//IETF//DTD HTML Strict Level 3//") then FULL
      when .starts_with?("-//IETF//DTD HTML Strict//") then FULL
      when .starts_with?("-//IETF//DTD HTML//") then FULL
      when .starts_with?("-//Metrius//DTD Metrius Presentational//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 2.0 HTML Strict//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 2.0 HTML//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 2.0 Tables//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 3.0 HTML Strict//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 3.0 HTML//") then FULL
      when .starts_with?("-//Microsoft//DTD Internet Explorer 3.0 Tables//") then FULL
      when .starts_with?("-//Netscape Comm. Corp.//DTD HTML//") then FULL
      when .starts_with?("-//Netscape Comm. Corp.//DTD Strict HTML//") then FULL
      when .starts_with?("-//O'Reilly and Associates//DTD HTML 2.0//") then FULL
      when .starts_with?("-//O'Reilly and Associates//DTD HTML Extended 1.0//") then FULL
      when .starts_with?("-//O'Reilly and Associates//DTD HTML Extended Relaxed 1.0//") then FULL
      when .starts_with?("-//SQ//DTD HTML 2.0 HoTMetaL + extensions//") then FULL
      when .starts_with?("-//SoftQuad Software//DTD HoTMetaL PRO 6.0::19990601::extensions to HTML 4.0//") then FULL
      when .starts_with?("-//SoftQuad//DTD HoTMetaL PRO 4.0::19971010::extensions to HTML 4.0//") then FULL
      when .starts_with?("-//Spyglass//DTD HTML 2.0 Extended//") then FULL
      when .starts_with?("-//Sun Microsystems Corp.//DTD HotJava HTML//") then FULL
      when .starts_with?("-//Sun Microsystems Corp.//DTD HotJava Strict HTML//") then FULL
      when .starts_with?("-//W3C//DTD HTML 3 1995-03-24//") then FULL
      when .starts_with?("-//W3C//DTD HTML 3.2 Draft//") then FULL
      when .starts_with?("-//W3C//DTD HTML 3.2 Final//") then FULL
      when .starts_with?("-//W3C//DTD HTML 3.2//") then FULL
      when .starts_with?("-//W3C//DTD HTML 3.2S Draft//") then FULL
      when .starts_with?("-//W3C//DTD HTML 4.0 Frameset//") then FULL
      when .starts_with?("-//W3C//DTD HTML 4.0 Transitional//") then FULL
      when .starts_with?("-//W3C//DTD HTML Experimental 19960712//") then FULL
      when .starts_with?("-//W3C//DTD HTML Experimental 970421//") then FULL
      when .starts_with?("-//W3C//DTD W3 HTML//") then FULL
      when .starts_with?("-//W3O//DTD W3 HTML 3.0//") then FULL
      when .starts_with?("-//WebTechs//DTD Mozilla HTML 2.0//") then FULL
      when .starts_with?("-//WebTechs//DTD Mozilla HTML//") then FULL
      when .starts_with?("-//W3C//DTD HTML 4.01 Frameset//") then system_id ? FULL : LIMITED
      when .starts_with?("-//W3C//DTD HTML 4.01 Transitional//") then system_id ? FULL : LIMITED
      when .starts_with?("-//W3C//DTD XHTML 1.0 Frameset//") then LIMITED
      when .starts_with?("-//W3C//DTD XHTML 1.0 Transitional//") then LIMITED
      else
        NONE
      end
    end
  end
end
