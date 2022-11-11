require "test_helper"

class ChartSampleControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chart_sample_index_url
    assert_response :success
  end
end
