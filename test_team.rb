require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def setup

    @team = Team.new('Team-name', 'Team-level', ['user1', 'user2', 'user3'])

  end

  def test_to_hash

    hash = {team_name: 'Team-name', level: 'Team-level', points: 0 }
      assert_equal(@team.to_hash, hash)
  end
end
