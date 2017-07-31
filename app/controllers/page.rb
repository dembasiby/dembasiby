Dembasiby::App.controllers :page do

  get :home, :map => '/' do
    render :erb, 'index'
  end

  get :contact, :map => '/contact' do
    render :erb, 'contact'
  end

  get :about, :map => '/about' do
    render :erb, 'about'
  end

  get :blog, :map => '/blog' do
    render :erb, 'blog'
  end
end
