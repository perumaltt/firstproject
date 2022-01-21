class CardetailsSerializer < ActiveModel::Serializer
  attributes :id,:car_name,:amount,:user_name,:user_phone,:user_email,user_address

  def user_name

    object.users.name

  end

  def student_class_name

    object.class_name
  end
  def student_roll_no

    object.roll_no
  end
  def m1

    object.marks.m1

  end

  def m2

    object.marks.m2
  end

  def m3

    object.marks.m3
  end


end
