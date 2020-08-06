@pokemons.each do |poke|
    json.set! poke.name do
        json.extract! poke, :id, :name, :attack, :defense, :moves, :poke_type
        json.image_url asset_path("pokemon_snaps/#{poke.image_url}")
    end
end