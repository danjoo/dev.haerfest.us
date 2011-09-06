class PagesController < ApplicationController

#caching
caches_page :home
caches_page :collections
caches_page :styles
caches_page :information
caches_page :contact

  def home
    @title = "Home"
  end

  def collections
    @title = "Collections"

    @cover = {
      #:collection_b => ["collections/collection_b.jpg", "collections/collection_b_ro.jpg"],
      :grey_olive => ["collections/grey_olive_family.jpg"],
      :navy_slate => ["collections/navy_slate_family.jpg"],
      :carmine_red => ["collections/carmine_red_family.jpg"],
      :collection_a => ["collections/collection_a.jpg"]
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

        :B1 => ["B1_front_grey.jpg", "B1_back_grey.jpg", "B1_detail_grey.jpg"],
        :B5 => ["B5_front_grey.jpg", "B5_angled_grey.jpg", "B5_back_grey.jpg"],
        :B6 => ["B6_angled_grey.jpg", "B6_tall_grey.jpg", "B6_detail_grey.jpg"],
        :B7 => ["B7_front_grey.jpg", "B7_angled_grey.jpg", "B7_detail_grey.jpg"]
      }

    elsif params[:family] == "navy_slate"
      @family = {

        :B1 => ["B1_front_navy.jpg", "B1_back_navy.jpg", "B1_detail_navy.jpg","B1_info_navy.png"],
        :B5 => ["B5_front_navy.jpg", "B5_angled_navy.jpg", "B5_back_navy.jpg"],
        :B6 => ["B6_angled_navy.jpg", "B6_navy_navy.jpg", "B6_detail_navy.jpg"],
        :B7 => ["B7_front_navy.jpg", "B7_angled_navy.jpg", "B7_detail_navy.jpg"]
      }

    elsif params[:family] == "carmine_red"
      @family = {

        :B1 => ["B1_front_red.jpg", "B1_back_red.jpg", "B1_detail_red.jpg"],
        :B5 => ["B5_front_red.jpg", "B5_angled_red.jpg", "B5_back_red.jpg"],
        :B6 => ["B6_angled_red.jpg", "B6_tall_red.jpg", "B6_detail_red.jpg"],
        :B7 => ["B7_front_red.jpg", "B7_angled_red.jpg", "B7_detail_red.jpg"]
      }

    elsif params[:family] == "collection_a"
      @family = {

        :A1 => ["HAERFEST_A1_front_black.jpg",
                "HAERFEST_A1_back_black.jpg",
                "HAERFEST_A1_front_navy.jpg",
                "HAERFEST_A1_back_navy.jpg",
                "haerfestinfo_A1.jpg"],
        :A2 => ["HAERFEST_A2_front_black.jpg",
                "HAERFEST_A2_detail_black.jpg",
                "HAERFEST_A2_front_navy.jpg",
                "HAERFEST_A2_detail_navy.jpg",
                "haerfestinfo_A2.jpg"],
        :A3 => ["HAERFEST_A3_front_black.jpg",
                "HAERFEST_A3_front_navy.jpg",
                "HAERFEST_A3_side_black.jpg",
                "HAERFEST_A3_side_navy.jpg",
                "haerfestinfo_A3.jpg"],
        :A4 => ["HAERFEST_A4_front.jpg",
                "HAERFEST_A4_detail.jpg",
                "HAERFEST_A4_top.jpg",
                "haerfestinfo_A4.jpg"],
      }

    else
       @family = {

        :B1 => ["B1_front_grey.jpg", "B1_back_grey.jpg", "B1_detail_grey.jpg"],
        :B5 => ["B5_front_grey.jpg", "B5_angled_grey.jpg", "B5_back_grey.jpg"],
        :B6 => ["B6_tall_grey.jpg", "B6_angled_grey.jpg", "B6_detail_grey.jpg"],
        :B7 => ["B7_front_grey.jpg", "B7_angled_grey.jpg", "B7_detail_grey.jpg"]
      }

    end

    @collection_label =":B1"

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
