class PagesController < ApplicationController
  def home
    @title = "#{Page.search_words} - Home"
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''

    render :layout => "main"
  end

  def our_services
    @title = "#{Page.search_words} - Our Services"
    @our_services_page = Page.find_by_page_type('our_services')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def about_us
    @title = "#{Page.search_words} - About Us"
    @about_us_page = Page.find_by_page_type('about_us') rescue ''
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''

    render :layout => "main"
  end

  def our_mission
    @title = "#{Page.search_words} - Our Mission"
    @our_mission_page = Page.find_by_page_type('our_mission')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def investors
    @title = "#{Page.search_words} - Investors"
    @our_mission_page = Page.find_by_page_type('our_mission')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def gallery
    @title = "#{Page.search_words}- Gallery"
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    @media = Car.all
    render :layout => "main"
  end

  def contact_us
    @title = "#{Page.search_words} - Contact Us"
    @contact_us_page = Page.find_by_page_type('contact_us')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def our_solutions
    @title = "#{Page.search_words} - Solutios"
    @contact_us_page = Page.find_by_page_type('contact_us')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def our_profile
    @title = "#{Page.search_words} - Our profile"
    @contact_us_page = Page.find_by_page_type('contact_us')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

  def send_message
    contact = Contact.new
    contact.author = params[:author]
    contact.email = params[:email]
    contact.subject = params[:subject]
    contact.message = params[:text]

    passed_params = {
      "receiver" => "creativesolutionsmw@gmail.com",
      "message" => params[:text],
      "subject" => params[:subject],
      "author_name" => params[:author],
      "author_email" => params[:email]
    }

    if (contact.save)
      Contact.send_email(passed_params)
      flash[:notice] = "Your message is sent. Thank you for contacting us."
      redirect_to("/contact_us") and return
    else
      flash[:error] = "Failed to send your message. Try again"
      redirect_to("/contact_us") and return
    end
  end

end
