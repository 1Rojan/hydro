require "application_system_test_case"

class TeamMembersTest < ApplicationSystemTestCase
  setup do
    @team_member = team_members(:one)
  end

  test "visiting the index" do
    visit team_members_url
    assert_selector "h1", text: "Team Members"
  end

  test "creating a Team member" do
    visit team_members_url
    click_on "New Team Member"

    fill_in "Achievement", with: @team_member.achievement
    fill_in "Department", with: @team_member.department_id
    fill_in "Name", with: @team_member.name
    fill_in "Position", with: @team_member.position
    click_on "Create Team member"

    assert_text "Team member was successfully created"
    click_on "Back"
  end

  test "updating a Team member" do
    visit team_members_url
    click_on "Edit", match: :first

    fill_in "Achievement", with: @team_member.achievement
    fill_in "Department", with: @team_member.department_id
    fill_in "Name", with: @team_member.name
    fill_in "Position", with: @team_member.position
    click_on "Update Team member"

    assert_text "Team member was successfully updated"
    click_on "Back"
  end

  test "destroying a Team member" do
    visit team_members_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Team member was successfully destroyed"
  end
end
