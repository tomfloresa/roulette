json.extract! player, :id, :name, :surename, :money, :created_at, :updated_at
json.url player_url(player, format: :json)