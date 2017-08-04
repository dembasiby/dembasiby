Dembasiby::App.controllers :posts do

  get :index do
    @posts = Post.order(:created_at).reverse_order.all
    render 'posts/index'
  end

  get :show, :with => :id do
    @post = Post.find(params[:id].to_i)
    render 'posts/show'
  end

end
