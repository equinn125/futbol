class Manager
  def load(file_path, object)
    data = CSV.read(file_path, headers: true)
    objects = []
    data.each do |row|
      objects.push(object.new(row))
    end
    objects
  end
end
