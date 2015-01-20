class AuctionItemsController < ApplicationController

	before_action :find_item, only: [:show, :edit]
  
  def index

    @auction_items = AuctionItem.all

  end

  def new

  	@auctionItem = AuctionItem.new

  end

  def create
    @current_user = User.find_by(id: 5)
  	@auctionItem = @current_user.auction_items.build(auction_params)

    @auctionItem.absolute_url =  "#{request.protocol}#{request.host_with_port}#{ @auctionItem.image}"
    
  	if @auctionItem.save
  		flash[:success] = "Auction item was successfully added, #{@auctionItem.absolute_url}\nitem:#{ @auctionItem.image}\nhost with port: #{request.host_with_port}"
  		redirect_to auctions_path
  	else
  		render 'new'
  	end
  end


  def edit
  	@auctionItem = AuctionItem.find_by(id: params[:id])
  end



  def update
  	@auctionItem = AuctionItem.find_by(id: params[:id])

  	if @auctionItem.update_atributes(params[:id])
  		flash[:success] = "Auction item has been updated"
  		redirect_to auction_items_path
  	else
  		flash[:error] = "Something went wrong while updating auction item."
  		redirect_to root_path
  	end
  	
  end

  def find_item
      @auctionItem = AuctionItem.find_by(id: params[:id])
    end

    def auction_params
      params.require(:auction_item).permit(:code, :name, :description, :status, :quantity, :image, :absolute_url)
    end


  # def private

  	
  
end
