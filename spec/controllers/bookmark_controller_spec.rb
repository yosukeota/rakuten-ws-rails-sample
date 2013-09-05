require 'spec_helper'

describe BookmarkController do
  specify 'Open Bookmark' do
    visit bookmark_path
    #expect(page).to have_css('h1', text: 'Bookmark')
  end
end
