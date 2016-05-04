require 'test_helper'

class SupportTicketsControllerTest < ActionController::TestCase
  setup do
    @support_ticket = support_tickets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:support_tickets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support_ticket" do
    assert_difference('SupportTicket.count') do
      post :create, support_ticket: { email: @support_ticket.email, message: @support_ticket.message, title: @support_ticket.title }
    end

    assert_redirected_to support_ticket_path(assigns(:support_ticket))
  end

  test "should show support_ticket" do
    get :show, id: @support_ticket
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support_ticket
    assert_response :success
  end

  test "should update support_ticket" do
    patch :update, id: @support_ticket, support_ticket: { email: @support_ticket.email, message: @support_ticket.message, title: @support_ticket.title }
    assert_redirected_to support_ticket_path(assigns(:support_ticket))
  end

  test "should destroy support_ticket" do
    assert_difference('SupportTicket.count', -1) do
      delete :destroy, id: @support_ticket
    end

    assert_redirected_to support_tickets_path
  end
end
