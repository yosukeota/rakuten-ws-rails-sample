require 'spec_helper'

describe BookmarkController do
  specify 'Open Bookmark' do
    visit bookmark_path
  end
end
