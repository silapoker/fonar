module UniAdminHelper

  ###################################
  # switch table row css style for uni_form_table
  ###################################
  def switch_tr_class
    @row_odd = (@row_odd.nil? || @row_odd) ? false:true
    @row_odd ? "class=\"odd\"" : ""
  end

end
