Dembasiby::App.controllers :posts do

  get :index do
    @posts = Post.order(:created_at).reverse_order.all
    render :erb, 'posts/index'
  end

  get :show, :with => :id do
    @post = Post[id: params[:id]]
    render :erb, 'posts/show'
  end

end
