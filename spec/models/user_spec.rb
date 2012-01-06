# encoding: UTF-8
require 'spec_helper'

describe User do
  it "Ao criar um usuário novo deve ser criado como não sendo Staff" do
    user = User.create! email: "user@exemplo.com",
                        password: "foobar"
    user.staff.should_not be_true
  end
end
