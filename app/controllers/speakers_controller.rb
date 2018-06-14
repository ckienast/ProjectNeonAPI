class SpeakersController < ApplicationController
  def index
    @speakers = Speaker.all.with_talks.to_json(
      except: %i[created_at updated_at],
      include: {
        talks: {
          except: %i[created_at updated_at]
        }
      }
    )

    render json: @speakers, status: 200
  end
end
