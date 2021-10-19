class Character < ApplicationRecord
  enum element: { pyro: 0, geo: 1, dendro: 2, anemo: 3, hydro: 4, cyro: 5, electro: 6 }
end
