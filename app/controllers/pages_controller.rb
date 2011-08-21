class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def collections
    @title = "Collections"

    if params[:family].nil?
      params[:family] = "grey_olive"
    end

    if params[:family] == "grey_olive"
      #set family parameter
      params[:family] = "grey_olive"
      #set cover picture / family
      @cover = {
        :image => "grey_olive_family.jpg",
        :ro_image => "grey_olive_family_ro.jpg"
      }

    elsif params[:family] == "navy_slate"
      #set family parameter
      params[:family] = "navy_slate"
      #set cover picture / family
      @cover = {
        :image => "navy_slate_family.jpg",
        :ro_image => "navy_slate_family_ro.jpg"
      }

    elsif params[:family] == "carmine_red"
      #set family parameter
      params[:family] = "carmine_red"
      #set cover picture / family
      @cover = {
        :image => "carmine_red_family.jpg",
        :ro_image => "carmine_red_family_ro.jpg"
      }

    elsif params[:family] == "collection_a"
      #set family parameter
      params[:family] = "collection_a"
      #set cover picture / family
      @cover = {
        :image => "collection_a.jpg",
        :ro_image => "collection_a_ro.jpg"
      }

    elsif params[:family] == "collection_b"
      #set family parameter
      params[:family] = "grey_olive"
      #set cover picture / family
      @cover = {
        :image => "collection_b.jpg",
        :ro_image => "collection_b_ro.jpg"
      }
    else
      #set family parameter
      params[:family] = "grey_olive"
      #set cover picture / family
       @cover = {
        :image => "grey_olive_family.jpg",
        :ro_image => "grey_olive_family_ro.jpg"
      }

    end

  end

  def styles
    @title = "Styles"

    if params[:family].nil?
      params[:family] = "grey_olive"
    end

    @test= params

    if params[:family] == "grey_olive"
      @family = {

        :B1 => ["B1_front_grey.jpg", "B1_back_grey.jpg", "B1_detail_grey.jpg"],
        :B5 => ["B5_front_grey.jpg", "B5_angled_grey.jpg", "B5_back_grey.jpg"],
        :B6 => ["B6_tall_grey.jpg", "B6_angled_grey.jpg", "B6_detail_grey.jpg"],
        :B7 => ["B7_front_grey.jpg", "B7_angled_grey.jpg", "B7_detail_grey.jpg"]
      }

    elsif params[:family] == "navy_slate"
      @family = {

        :B1 => ["B1_front_navy.jpg", "B1_back_navy.jpg", "B1_detail_navy.jpg"],
        :B5 => ["B5_front_navy.jpg", "B5_angled_navy.jpg", "B5_back_navy.jpg"],
        :B6 => ["B6_tall_navy.jpg", "B6_angled_navy.jpg", "B6_detail_navy.jpg"],
        :B7 => ["B7_front_navy.jpg", "B7_angled_navy.jpg", "B7_detail_navy.jpg"]
      }

    elsif params[:family] == "carmine_red"
      @family = {

        :B1 => ["B1_front_red.jpg", "B1_back_red.jpg", "B1_detail_red.jpg"],
        :B5 => ["B5_front_red.jpg", "B5_angled_red.jpg", "B5_back_red.jpg"],
        :B6 => ["B6_tall_red.jpg", "B6_angled_red.jpg", "B6_detail_red.jpg"],
        :B7 => ["B7_front_red.jpg", "B7_angled_red.jpg", "B7_detail_red.jpg"]
      }

    elsif params[:family] == "collection_a"
      @family = {

        :B1 => ["B1_front.jpg", "B1_back.jpg", "B1_detail.jpg"],
        :B5 => ["B5_front.jpg", "B5_angled.jpg", "B5_back.jpg"],
        :B6 => ["B6_tall.jpg", "B6_angled.jpg", "B6_detail.jpg"],
        :B7 => ["B7_front.jpg", "B7_angled.jpg", "B7_detail.jpg"]
      }

    else
       @family = {

        :B1 => ["B1_front_grey.jpg", "B1_back_grey.jpg", "B1_detail_grey.jpg"],
        :B5 => ["B5_front_grey.jpg", "B5_angled_grey.jpg", "B5_back_grey.jpg"],
        :B6 => ["B6_tall_grey.jpg", "B6_angled_grey.jpg", "B6_detail_grey.jpg"],
        :B7 => ["B7_front_grey.jpg", "B7_angled_grey.jpg", "B7_detail_grey.jpg"]
      }

    end

  end

  def about
    @title = "About"
  end

  def stockists
    @title = "Stockists"
  end

  def inspiration
    @title = "Inspiration"
  end

  def contact
    @title = "Contact"
  end

end
