require 'test_helper'

class PostTest < ActiveSupport::TestCase
	test "should not save post without title" do
	  post = Post.new
	  assert !post.save
	end
	
	test "should create post" do
	  assert_difference('Post.count') do
		post :create, post: {titulo: 'Titulo'}
	  end
	 
	  assert_redirected_to post_path(assigns(:post))
	end
	
	it "should create post" do
		assert_difference('Post.count') do
			post :create, post: {titulo: 'Titulo'}
		end
			assert_redirected_to post_path(assigns(:post))
	end
	
end

