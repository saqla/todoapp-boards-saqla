# == Schema Information
#
# Table name: tasks
#
#  id         :bigint           not null, primary key
#  content    :text
#  limit      :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
