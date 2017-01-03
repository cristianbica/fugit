
#
# Specifying fugit
#
# Tue Jan  3 11:31:29 JST 2017  Ishinomaki
#

require 'spec_helper'


describe Fugit::Duration do

  DAY_S = 24 * 3600

  DURATIONS = [
    [ '1y2M', '1Y2M', 'P1Y2M', 365 * DAY_S + 60 * DAY_S ],
    [ '10d10h', '10D10h', 'P10DT10H', 10 * DAY_S + 10 * 3600 ],
  ]

  describe '.parse' do

    DURATIONS.each do |source, target, iso_target, sec|

      it "parses #{source.inspect}" do

        d = Fugit::Duration.parse(source)

        expect(d.class).to eq(::Fugit::Duration)
        expect(d.to_plain_s).to eq(target)
        expect(d.to_iso_s).to eq(iso_target)
        expect(d.to_sec).to eq(sec)
      end
    end
  end

  describe '#compact' do

    it 'compacts'
  end
end
