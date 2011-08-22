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
        :image => "collections/grey_olive_family.png",
        :ro_image => "collections/grey_olive_family_ro.png"
      }

    elsif params[:family] == "navy_slate"
      #set family parameter
      params[:family] = "navy_slate"
      #set cover picture / family
      @cover = {
        :image => "collections/navy_slate_family.png",
        :ro_image => "collections/navy_slate_family_ro.png"
      }

    elsif params[:family] == "carmine_red"
      #set family parameter
      params[:family] = "carmine_red"
      #set cover picture / family
      @cover = {
        :image => "collections/carmine_red_family.png",
        :ro_image => "collections/carmine_red_family_ro.png"
      }

    elsif params[:family] == "collection_a"
      #set family parameter
      params[:family] = "collection_a"
      #set cover picture / family
      @cover = {
        :image => "collections/collection_a.png",
        :ro_image => "collections/collection_a_ro.png"
      }

    elsif params[:family] == "collection_b"
      #set family parameter
      params[:family] = "grey_olive"
      #set cover picture / family
      @cover = {
        :image => "collections/collection_b.png",
        :ro_image => "collections/collection_b_ro.png"
      }
    else
      #set family parameter
      params[:family] = "grey_olive"
      #set cover picture / family
       @cover = {
        :image => "collections/grey_olive_family.png",
        :ro_image => "collections/grey_olive_family_ro.png"
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

        :B1 => ["B1_front_grey.png", "B1_back_grey.png", "B1_detail_grey.png"],
        :B5 => ["B5_front_grey.png", "B5_angled_grey.png", "B5_back_grey.png"],
        :B6 => ["B6_tall_grey.png", "B6_angled_grey.png", "B6_detail_grey.png"],
        :B7 => ["B7_front_grey.png", "B7_angled_grey.png", "B7_detail_grey.png"]
      }

    elsif params[:family] == "navy_slate"
      @family = {

        :B1 => ["B1_front_navy.png", "B1_back_navy.png", "B1_detail_navy.png"],
        :B5 => ["B5_front_navy.png", "B5_angled_navy.png", "B5_back_navy.png"],
        :B6 => ["B6_tall_navy.png", "B6_angled_navy.png", "B6_detail_navy.png"],
        :B7 => ["B7_front_navy.png", "B7_angled_navy.png", "B7_detail_navy.png"]
      }

    elsif params[:family] == "carmine_red"
      @family = {

        :B1 => ["B1_front_red.png", "B1_back_red.png", "B1_detail_red.png"],
        :B5 => ["B5_front_red.png", "B5_angled_red.png", "B5_back_red.png"],
        :B6 => ["B6_tall_red.png", "B6_angled_red.png", "B6_detail_red.png"],
        :B7 => ["B7_front_red.png", "B7_angled_red.png", "B7_detail_red.png"]
      }

    elsif params[:family] == "collection_a"
      @family = {

        :B1 => ["B1_front.png", "B1_back.png", "B1_detail.png"],
        :B5 => ["B5_front.png", "B5_angled.png", "B5_back.png"],
        :B6 => ["B6_tall.png", "B6_angled.png", "B6_detail.png"],
        :B7 => ["B7_front.png", "B7_angled.png", "B7_detail.png"]
      }

    else
       @family = {

        :B1 => ["B1_front_grey.png", "B1_back_grey.png", "B1_detail_grey.png"],
        :B5 => ["B5_front_grey.png", "B5_angled_grey.png", "B5_back_grey.png"],
        :B6 => ["B6_tall_grey.png", "B6_angled_grey.png", "B6_detail_grey.png"],
        :B7 => ["B7_front_grey.png", "B7_angled_grey.png", "B7_detail_grey.png"]
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
