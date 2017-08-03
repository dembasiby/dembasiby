Dembasiby::App.controllers :posts do

  get :index do
    @posts = Post.reverse_order(:created_at).all
    render :erb, 'posts/index'
  end

  get :show, :with => :id do
    @post = Post[id: params[:id]]
    render :erb, 'posts/show'
  end

end
