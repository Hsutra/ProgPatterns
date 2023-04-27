class Student

  attr_accessor :id, :surname, :name, :father_name, :phone, :telegram, :email, :git

  def initialize(surname:, name:, father_name:, id:nil, phone:nil, telegram:nil, email:nil, git:nil)
    self.id=id
    self.surname = surname
    self.name = name
    self.father_name = father_name
    self.phone=phone
    self.telegram=telegram
    self.email=email
    self.git=git
  end
   
  def to_s
      "ID: #{@id}, Фамилия: #{@surname}, Имя: #{@name}, Отчество: #{@father_name}, Телефон: #{@phone}, Телеграм: #{@telegram}, Почта: #{@email}, Гит: #{@git}\n"
    end

    def self.is_right_phone(phone)
      phone.match /^((8|\+7))\d{10}$/ 
    end

    def phone=(phone)
      raise ArgumentError,"Invalid phone number" if !phone.nil? && !Student.is_right_phone(phone)
      @phone = phone
    end

end