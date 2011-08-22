class PagesController < ApplicationController

  def home
    @title = "Home"
  end

  def collections
    @title = "Collections"

    @cover = {
      :grey_olive => ["collections/grey_olive_family.png", "collections/grey_olive_family_ro.png"],
      :navy_slate => ["collections/navy_slate_family.png", "collections/navy_slate_family_ro.png"],
      :carmine_red => ["collections/carmine_red_family.png", "collections/carmine_red_family_ro.png"],
      :collection_a => ["collections/collection_a.png", "collections/collection_a_ro.png"]
    }

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

        :B1 => ["B1_front_navy.png", "B1_back_navy.png", "B1_detail_navy.png","B1_info_navy.png"],
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

  def information
    @title = "Information"
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
