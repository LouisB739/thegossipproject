class DynamicPagesController < ApplicationController
  def id
    @id = params['id']
  end
  def gossip
    @id = params['id']
  end
  def author
    @id=params['id']
  end
end
