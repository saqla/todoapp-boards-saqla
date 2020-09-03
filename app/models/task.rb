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
class Task < ApplicationRecord
end
