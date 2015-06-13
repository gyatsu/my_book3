class Book3sController < ApplicationController
  before_action :set_book3, only: [:show, :edit, :update, :destroy]

  # GET /book3s
  # GET /book3s.json
  def index
    @book3s = Book3.all
  end

  # GET /book3s/1
  # GET /book3s/1.json
  def show
  end

  # GET /book3s/new
  def new
    @book3 = Book3.new
  end

  # GET /book3s/1/edit
  def edit
  end

  # POST /book3s
  # POST /book3s.json
  def create
    @book3 = Book3.new(book3_params)

    respond_to do |format|
      if @book3.save
        format.html { redirect_to @book3, notice: '登録できたよ〜' }
        format.json { render :show, status: :created, location: @book3 }
      else
        format.html { render :new }
        format.json { render json: @book3.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book3s/1
  # PATCH/PUT /book3s/1.json
  def update
    respond_to do |format|
      if @book3.update(book3_params)
        format.html { redirect_to @book3, notice: '更新できたよ〜' }
        format.json { render :show, status: :ok, location: @book3 }
      else
        format.html { render :edit }
        format.json { render json: @book3.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book3s/1
  # DELETE /book3s/1.json
  def destroy
    @book3.destroy
    respond_to do |format|
      format.html { redirect_to book3s_url, notice: '消しました！' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book3
      @book3 = Book3.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book3_params
      params.require(:book3).permit(:img,:bookname, :author, :price, :publisher, :date, :isbn)
    end
end
