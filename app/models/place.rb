class Place < ApplicationRecord
  belongs_to :user
  def photo=(uploaded_io)
    File.open(Rails.root.join('public', 'uploads', uploaded_io.original_filename), 'wb') do |file|
        file.write(uploaded_io.read)
    end
    write_attribute(:photo,uploaded_io.original_filename)
  end
  def photo
    read_attribute(:photo)
  end
end
