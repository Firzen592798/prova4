require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "Verifica se postagens sem titulo sao salvas" do
	  post = Post.new
	  assert !post.save
	end
end

