require 'test_helper'

# Tests
class UrijiIconsRailsTest < ActionDispatch::IntegrationTest
  teardown { clean_sprockets_cache }

  test 'engine is loaded' do
    assert_equal ::Rails::Engine, UrijiIcons::Rails::Engine.superclass
  end

  test 'fonts are served' do
    get '/assets/uriji-icons.eot'
    assert_response :success
    get '/assets/uriji-icons.woff'
    assert_response :success
    get '/assets/uriji-icons.ttf'
    assert_response :success
    get '/assets/uriji-icons.svg'
    assert_response :success
  end

  test 'stylesheets are served' do
    get '/assets/uriji-icons.css'
    assert_uriji_icons(response)
  end

  test 'stylesheets contain asset pipeline references to fonts' do
    get '/assets/uriji-icons.css'
    assert_match %r{/assets/uriji-icons(-\w+)?\.eot\?lcbnul}, response.body
    assert_match %r{/assets/uriji-icons(-\w+)?\.eot\?lcbnul#iefix}, response.body
    assert_match %r{/assets/uriji-icons(-\w+)?\.woff\?lcbnul}, response.body
    assert_match %r{/assets/uriji-icons(-\w+)?\.ttf\?lcbnul},  response.body
    assert_match %r{/assets/uriji-icons(-\w+)?\.svg\?lcbnul#uriji-icons}, response.body
  end

  test 'stylesheet is available in a css sprockets require' do
    get '/assets/sprockets-require.css'
    assert_uriji_icons(response)
  end

  test 'stylesheet is available in a sass import' do
    get '/assets/sass-import.css'
    assert_uriji_icons(response)
  end

  test 'stylesheet is available in a scss import' do
    get '/assets/scss-import.css'
    assert_uriji_icons(response)
  end

  private

  def clean_sprockets_cache
    FileUtils.rm_rf File.expand_path('dummy/tmp', __dir__)
  end

  def assert_uriji_icons(response)
    assert_response :success
    assert_match(/font-family:\s*'UrijiIcons';/, response.body)
  end
end
