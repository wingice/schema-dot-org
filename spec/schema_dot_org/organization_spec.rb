# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength

require 'spec_helper'
require 'schema_dot_org'

<<<<<<< HEAD
Organization = SchemaDotOrg::Organization
Person       = SchemaDotOrg::Person
Place        = SchemaDotOrg::Place
PostalAddress = SchemaDotOrg::PostalAddress
=======
>>>>>>> dogweather/master

RSpec.describe SchemaDotOrg::Organization do
  describe '#new' do
    it 'will not create with an unknown attribute' do
      expect do
<<<<<<< HEAD
        Organization.new(
          snack_time:       'today',
          name:             'Public.Law',
          founder:           Person.new(name: 'Robb Shecter'),
          founding_date:     Date.new(2009, 3, 6),
          founding_location: Place.new(address: PostalAddress.new(street_address: '3300 Bloor Street')),
          email:            'say_hi@public.law',
          url:              'https://www.public.law',
          logo:             'https://www.public.law/favicon-196x196.png',
          same_as:          [
=======
        SchemaDotOrg::Organization.new(
          snack_time: 'today',
          name: 'Public.Law',
          founder: SchemaDotOrg::Person.new(name: 'Robb Shecter'),
          founding_date: Date.new(2009, 3, 6),
          founding_location: SchemaDotOrg::Place.new(address: 'Portland, OR'),
          email: 'say_hi@public.law',
          url: 'https://www.public.law',
          logo: 'https://www.public.law/favicon-196x196.png',
          same_as: [
>>>>>>> dogweather/master
            'https://twitter.com/law_is_code',
            'https://www.facebook.com/PublicDotLaw'
          ]
        )
      end.to raise_error(NoMethodError)
    end

    it 'creates correct json correctly' do
<<<<<<< HEAD
      public_law = Organization.new(
        name:             'Public.Law',
        founder:           Person.new(name: 'Robb Shecter'),
        founding_date:     Date.new(2009, 3, 6),
        founding_location: Place.new(address: PostalAddress.new(street_address: '3300 Bloor Street')),
        email:            'say_hi@public.law',
        url:              'https://www.public.law',
        logo:             'https://www.public.law/favicon-196x196.png',
        same_as:          [
=======
      public_law = SchemaDotOrg::Organization.new(
        name: 'Public.Law',
        founder: SchemaDotOrg::Person.new(name: 'Robb Shecter'),
        founding_date: Date.new(2009, 3, 6),
        founding_location: SchemaDotOrg::Place.new(address: 'Portland, OR'),
        email: 'say_hi@public.law',
        url: 'https://www.public.law',
        logo: 'https://www.public.law/favicon-196x196.png',
        same_as: [
>>>>>>> dogweather/master
          'https://twitter.com/law_is_code',
          'https://www.facebook.com/PublicDotLaw'
        ]
      )

      expect(public_law.to_json_struct).to eq(
        '@type' => 'Organization',
        'name' => 'Public.Law',
        'email' => 'say_hi@public.law',
        'url' => 'https://www.public.law',
        'logo' => 'https://www.public.law/favicon-196x196.png',
        'foundingDate' => '2009-03-06',
        'founder' => {
          '@type' => 'Person',
          'name' => 'Robb Shecter'
        },
        'foundingLocation' => {
          "@type" => "Place",
          'address' => {
            '@type' => 'PostalAddress',
            'streetAddress' => '3300 Bloor Street'
          }
        },
        'sameAs' => [
          'https://twitter.com/law_is_code',
          'https://www.facebook.com/PublicDotLaw'
        ]
      )
    end
  end
end
# rubocop:enable Metrics/BlockLength
