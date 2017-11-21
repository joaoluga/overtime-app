require 'rails_helper'

describe 'navigate' do
  before do
    user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
    login_as(user, :scope => :user)
  end

  describe 'index' do
    before do
      visit posts_path
    end
    it 'can be reached sucessfully' do
      expect(page.status_code).to eq(200)
    end

    it 'has a title of Posts' do
      expect(page).to have_content(/Posts/)
    end

    it 'has a list of posts' do
      # not sure if this user assignment makes sense (it is different from what the teacher did),
      # because the assignment was made in the 'before do' block
      # but this solution was not working (not really sure why)
      # Anyway, needed to move forward with the course, so I worked with this solution. Also, the teacher says
      # that all this 'uneeded' variables will be replace by factory/factories.
      user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", first_name: "Jon", last_name: "Snow")
      post1 = Post.create(date: Date.today, rationale: "Post1", user: user)
      post2 = Post.create(date: Date.today, rationale: "Post2", user: user)
      visit posts_path
      expect(page).to have_content(/Post1|Post2/)
    end

    describe 'creation' do
      before do
        visit new_post_path
      end
      it 'has a form that can be reached' do
        expect(page.status_code).to eq(200)
      end

      it 'can be created from new form page' do
        visit new_post_path
        fill_in 'post[date]', with: Date.today
        fill_in 'post[rationale]', with: "Some rationale"
        click_on "Save"
        expect(page).to have_content("Some rationale")
      end

      it 'will have a user associated it' do
        fill_in 'post[date]', with: Date.today
        fill_in 'post[rationale]', with: "User Association"
        click_on "Save"

        expect(User.last.post.last.rationale).to eq("User Association")
      end

    end


  end
end