class ContentController < ApplicationController
  def works
  end

  def featured_works
  end

  def contact_us
  end


  def send_email


    respond_to do |format|
      p params
      cust_name = params[:first_name] + ' ' + params[:last_name]
      customer_email = params[:your_email]
      subject = cust_name + " " + params[:your_email]
      message = params[:message] + "!"
      p message
      

      RestClient.post "https://api:key-0b4b9928196d594ec7d29f57a4f6779b"\
      "@api.mailgun.net/v3/sandbox9e4f8f9b914e4318ac4b333b40daa36b.mailgun.org/messages",
      :from => "Mailgun Sandbox <postmaster@sandbox9e4f8f9b914e4318ac4b333b40daa36b.mailgun.org>",  #  need to change too a autherized domain
      :to => "audiowithdrawal@gmail.com", # change too send_to_email when done with testing and after you have set up autherized domain.  will ned to authorize recipients, ie send to emails.
      :subject => "#{subject}",
      :text => "#{message}"
      if status == 200
        redirect_to root_path, :flash => {:notice => "Email successfully sent"}
      else
        redirect_to root_path, :flash => {:alert => "Email was not sent correctly"}
      end
    end
  end
end
