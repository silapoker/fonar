class UniAdminController < ApplicationController
  layout "uni_admin_layout"
  
  def dashboard
  end

  def demo
    @records = Array.new
    for i in 0..9
      @records[i] = [
          "first name #{i}",
          "last name #{i}",
          "email #{i}",
          "address #{i}",
          "phone number #{i}",
          "fax number #{i}"
      ]
    end
  end
  
  def search
    redirect_to :action => 'dashboard'
  end
end
