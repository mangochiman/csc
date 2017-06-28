class PagesController < ApplicationController
  def home
    @title = "Creative Solutions Consulting Malawi - Home"
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''

    render :layout => "main"
  end

  def our_services
    @title = "Creative Solutions Consulting Malawi - Our Services"
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
    @title = "Creative Solutions Consulting Malawi - About Us"
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
    @title = "Bantu Motors- Our Mission"
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
    @title = "Bantu Motors- Gallery"
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
    @title = "Creative Solutions Consulting Malawi - Contact Us"
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
    @title = "Creative Solutions Consulting Malawi - Solutios"
    @contact_us_page = Page.find_by_page_type('contact_us')
    @email = Setting.find_by_key('email').value rescue ''
    @office_phone = Setting.find_by_key('office_phone').value rescue ''
    @postal_address = Setting.find_by_key('postal_address').value rescue ''
    @strengths = Setting.find_by_key('strengths').value rescue ''
    @fax = Setting.find_by_key('fax').value rescue ''
    @company_description = Page.find_by_page_type('company_description').content rescue ''
    render :layout => "main"
  end

end
