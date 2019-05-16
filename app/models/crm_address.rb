# License: AGPL-3.0-or-later WITH Web-Template-Output-Additional-Permission-3.0-or-later
class CrmAddress < Address
  attr_accessible :deleted, :name, :address, :city, :state_code, :zip_code, :country, :supporter_id
  has_many :address_tags

  scope :not_deleted, -> {where('COALESCE( deleted,FALSE) = FALSE')}
end