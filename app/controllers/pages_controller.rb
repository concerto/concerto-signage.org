class PagesController < ApplicationController
  before_action :authenticate_user!, :except => [:index, :show, :list_help, :list_announcements, :list_v1help, :frontpage]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /list_help
  # GET /list_help.json
  def list_help
    respond_to do |format|
      format.html { render :template => "pages/list_help" }
    end
  end

  # GET /list_blog
  # GET /list_blog.json
  def list_blog
    respond_to do |format|
      format.html { render :template => "pages/list_blog" }
    end
  end

  # GET /list_v1help
  # GET /list_v1help.json
  def list_v1help
    respond_to do |format|
      format.html { render :template => "pages/list_v1help" }
    end
  end

  # GET /list_v1help
  # GET /list_v1help.json
  def styleguide
    respond_to do |format|
      format.html { render :template => "pages/styleguide" }
    end
  end

  # GET /frontpage
  def frontpage
    respond_to do |format|
      format.html { render :template => "pages/frontpage" }
    end
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
    @page = Page.friendly.find(params[:id])
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    @page = Page.friendly.find(params[:id])
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to @page, notice: 'Page was successfully created.' }
        format.json { render action: 'show', status: :created, location: @page }
      else
        format.html { render action: 'new' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    @page = Page.friendly.find(params[:id])
    respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to @page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page = Page.friendly.find(params[:id])
    @page.destroy
    respond_to do |format|
      format.html { redirect_to pages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      params.require(:page).permit(:category_id, :language, :is_help_page, :title, :summary, :body)
    end
end
