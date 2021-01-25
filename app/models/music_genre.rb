class MusicGenre < ActiveHash::Base
  self.data = [
    { id: 1, name: 'ロック' }, { id: 2, name: 'ポップス' }, { id: 3, name: 'ブルース' },
    { id: 4, name: 'ジャズ' }, { id: 5, name: 'バラード' }, { id: 6, name: 'J-POP' },
  ]

  include ActiveHash::Associations
  has_many :recruitments
end
