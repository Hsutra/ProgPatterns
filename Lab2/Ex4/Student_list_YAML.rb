load("C:/Users/artus/VsCodeProjects/RubyLabs/Lab2/Ex4/Student_list_strategy.rb")
require 'yaml'

class StudentListYaml<StudentListStrategy
  public_class_method :new

  #получение массива хэшей из строки
  def list_hash_from_str(str)
    YAML.load(str).map {|hash| hash.transform_keys(&:to_sym)}
  end

  #получение строки заданного вида из массива хэшей
  def list_hash_to_str(list_hash)
    list_hash.map{ |hash| hash.transform_keys(&:to_s)}.to_yaml
  end

end