﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Steam_WebForm.aspx.cs" Inherits="Steam_API_.Steam_WebForm" %>

<!DOCTYPE html>

<html>
<head runat="server">
    
    <link href="Content/style/WishList.css" rel="stylesheet" />
    <link href="Content/style/StoreRecommendedSlideShow.css" rel="stylesheet" />
    <link href="Content/style/StoreProducts.css" rel="stylesheet" />
    <link href="Content/style/StoreMenu.css" rel="stylesheet" />
    <link href="Content/style/SteamHolderAndMainMenu.css" rel="stylesheet" />
    <link href="Content/style/ShortCutsTitles.css" rel="stylesheet" />
    <link href="Content/style/Searching_ShowingModal.css" rel="stylesheet" />
    <link href="Content/style/Searching.css" rel="stylesheet" />
    <link href="Content/style/OtherHolder.css" rel="stylesheet" />
    <link href="Content/style/Cart.css" rel="stylesheet" />

    <style>
      body {
        margin: 0;
        padding: 0;

        background-color: black;

        font-family: "Motiva Sans", Sans-serif;
      }
    </style>

</head>
   <body>
      <div id="SteamHolder">
      <!-- SteamMainMenu => -->
      <div id="SteamMainMenu">
        <img
          src="Content/Media/Menu/logo_steam.svg"
          alt="Logo"
          id="SteamLogoMainMenu"
        />
        <a
          id="StoreSectionBt"
          class="SelectedMenu"
          onclick="Going_StoreSection();"
          >STORE</a
        >
        <a id="SearchInGames" onclick="Going_SearchingSection();">SEARCH</a>
        <a id="StoreSectionBt" onclick="Going_AboutSection()">ABOUT</a>
        <a id="StoreSectionBt" onclick="Going_SupportSection()">SUPPORT</a>
      </div>

      <!-- StoreSection => -->
      <div id="StoreSection" style="display: block">
        <div class="StoreMenu" id="StoreMenu">
          <div class="StoreMenu_Top">
            <div class="items YourStore">
              You'r Store
              <img
                class="YourStoreProfile"
                src="../Content/Media/StoreMenu/profileLogo.png"
              />
            </div>
            <div class="items Noteworthy">News and Noteworthy</div>
            <div class="items Categories">Categories</div>
            <div class="items PointShop">PointShop</div>
            <div class="items News">News</div>
            <div class="items Labs">Labs</div>
            <input class="items Search" placeholder="search" id="MainSearch" />
          </div>
          <video
            src="../Content/Media/StoreMenu/webm_page_bg_english.mp4"
            id="StoreMenuBackgroundVideo"
          ></video>
          <div class="StoreMenu_WishListCart">
            <div class="WishList items" id="OpenWishListBT"></div>
            <div class="Cart items" id="OpenCartBT"></div>
          </div>
        </div>

        <div class="otherholder" id="otherholder">
          <div id="RecommendedSlideShow">
            FEATURED & RECOMMENDED

            <div class="galleryHolder">
              <div id="RecommendedSlideShow_gallery">
                <div class="items">
                  <img src="" class="BigShow" id="StoreMenu_Slider_BigShow" />

                  <div class="detail">
                    <h1 id="StoreMenu_Slider_GameName"></h1>
                    <div class="minigal">
                      <img
                        src=""
                        class="items_img"
                        id="StoreMenu_Slider_MiniGal_Img1"
                        onmouseover="MiniGalHovering(1)"
                        onmouseout="MiniGalHovering(0)"
                      />
                      <img
                        src=""
                        class="items_img"
                        id="StoreMenu_Slider_MiniGal_Img2"
                        onmouseover="MiniGalHovering(2)"
                        onmouseout="MiniGalHovering(0)"
                      />
                      <img
                        src=""
                        class="items_img"
                        id="StoreMenu_Slider_MiniGal_Img3"
                        onmouseover="MiniGalHovering(3)"
                        onmouseout="MiniGalHovering(0)"
                      />
                      <img
                        src=""
                        class="items_img"
                        id="StoreMenu_Slider_MiniGal_Img4"
                        onmouseover="MiniGalHovering(4)"
                        onmouseout="MiniGalHovering(0)"
                      />
                    </div>
                    <span class="title" id="StoreMenu_Slider_GameTitle"></span>
                    <span class="tags">
                      <div class="items_tags">Online Co-op</div>
                      <div class="items_tags">Team-based</div>
                      <div class="items_tags">Battle Royale</div>
                      <div class="items_tags">PvP</div>
                    </span>
                    <span class="price" id="StoreMenu_Slider_GamePrice"></span>
                  </div>
                </div>
              </div>
            </div>

            <div
              id="RecommendedSlideShow_RightBottom"
              onclick="RecommendedSlideShow_RightBottomClick()"
            >
              <img
                src="Content/Media/Store_recommended/Right&LeftBottom.png"
                alt="go_right"
              />
            </div>
            <div
              id="RecommendedSlideShow_LeftBottom"
              onclick="RecommendedSlideShow_LeftBottomClick()"
            >
              <img
                src="Content/Media/Store_recommended/Right&LeftBottom.png"
                alt="go_left"
              />
            </div>
          </div>
          <div id="Products">
            <img
              src="Content/Media/Store_Products/deck_banner_desktop_english.gif"
              alt=""
            />
            <img src="Content/Media/Store_Products/store_index_promo.jpg" alt="" />
          </div>
        </div>

        <div id="ShortCutsTitles">
          <div class="items it1">
            <img src="Content/Media/shortcuts/steamcards_promo.png" />
            <h1>STEAM GIFT CARDS</h1>
            <h2>Give The Gift of Game</h2>
          </div>
          <div class="items it2">
            <h1>RECOMMENDED</h1>
            <h2>By Friends</h2>
            <h2>By Curators</h2>
            <h2>Tags</h2>
          </div>
          <div class="items it3">
            <h1>BROWS CATEGORIES</h1>
            <h2>Top Sellers</h2>
            <h2>New Releases</h2>
            <h2>Upcoming</h2>
            <h2>Special</h2>
            <h2>VR Titles</h2>
            <h2>Controller-Friendly</h2>
            <h2>Great on Deck</h2>
          </div>
          <div class="items it4">
            <h1>BROWS BY GENRE</h1>
            <h2>Top Sellers</h2>
            <h2>New Releases</h2>
            <h2>Upcoming</h2>
            <h2>Special</h2>
            <h2>VR Titles</h2>
            <h2>Controller-Friendly</h2>
            <h2>Great on Deck</h2>
            <h2>Special</h2>
            <h2>VR Titles</h2>
            <h2>Controller-Friendly</h2>
            <h2>Great on Deck</h2>
          </div>
        </div>
      </div>

       <!-- SearchSection => -->
      <div id="SearchingHolder" class="hide">
        <span class="searched" id="searchedvalue">ALL PRODUCTS</span>
        <div class="searchingBackground" id="searchingBackground"></div>

        <div class="DetailHolder" id="DetailHolderSearching">
          <div class="showing">
            <div class="sortINshow">
              <div id="ShowResualt"></div>
              sort By
              <div
                class="SelectingSortInShow"
                id="SelectingSortInShow"
                onclick="SSISPickerClicked()"
              >
                <span style="font-size: 11px">Relevence</span>
                <ul>
                  <li onclick="SSISPickerItemsClicked(0)">Relevence</li>
                  <li onclick="SSISPickerItemsClicked(1)">Release Date (Y)</li>
                  <li onclick="SSISPickerItemsClicked(2)">Name</li>
                  <li onclick="SSISPickerItemsClicked(3)">Highest Price</li>
                  <li onclick="SSISPickerItemsClicked(4)">Lowest Price</li>
                </ul>
              </div>
            </div>
            <div id="ShowingGrid">
              <!-- <div class="items">
                <img src="Media/Store_recommended/gallery/01_1.png" />

                <div class="NameAndSystem">
                  <h3 class="Name">Arma 3</h3>
                  <div class="System">
                    <span class="macOS"></span>
                    <span class="Windows"></span>
                    <span class="SteamOSLinux"></span>
                  </div>
                </div>

                <div class="ReleaseDate">12 Sep, 2013</div>

                <div class="Review positive"></div>

                <div class="Discount_pct">-80%</div>

                <div class="ShowingPrice">
                  <span class="FirstPrice">27.99€</span>
                  <span class="PriceWithDiscount">5.59€</span>
                </div>
              </div> -->

              <!-- <div class="nothingF">No games were found according to what you are looking for ))): </div> -->
            </div>
          </div>
          <div class="sorting">
            <div class="items it1" id="NarroPriceSection">
              <h3 id="NarroPriceSectionName">
                Narrow By Price
                <div id="NarroPriceSectionMore" class="MoreArrow"></div>
              </h3>
              <input
                id="PriceRangeInput"
                type="range"
                min="0"
                max="13"
                value="13"
                onmousemove="
                inputONchange()"
                onchange="
                inputONchange()"
              />
              <div class="price_range" id="price_range">Any Price</div>

              <div class="checkboxHolder">
                <input type="checkbox" id="Offer" />
                <label for="Offer">Special Offers</label>

                <input type="checkbox" id="HideFree" />
                <label for="HideFree" id="HideFreeLable"
                  >Hide free to play items</label
                >
              </div>
            </div>
            <div class="items it2" id="NarroTagSection">
              <h3 id="NarroTagSectionName">
                Narrow By Tag
                <div id="NarroTagSectionMore" class="MoreArrow"></div>
              </h3>

              <div class="checkboxHolder">
                <input type="checkbox" id="ActionTag" />
                <label for="ActionTag">Action</label>

                <input type="checkbox" id="PVPTag" />
                <label for="PVPTag">PVP</label>

                <input type="checkbox" id="Team_basedTag" />
                <label for="Team_basedTag">Team-based</label>

                <input type="checkbox" id="shooterTag" />
                <label for="shooterTag">shooter</label>

                <input type="checkbox" id="Online_Co_opTag" />
                <label for="Online_Co_opTag">Online Co-op</label>

                <input type="checkbox" id="FPSTag" />
                <label for="FPSTag">FPS</label>

                <input type="checkbox" id="Battle_RoyaleTag" />
                <label for="Battle_RoyaleTag">Battle Royale</label>
              </div>
            </div>
            <div class="items it3" id="NarroOSSection">
              <h3 id="NarroOSSectionName">
                Narrow By OS
                <div id="NarroOSSectionMore" class="MoreArrow"></div>
              </h3>

              <div class="checkboxHolder">
                <input type="checkbox" id="Windows_OS" />
                <label for="Windows_OS">Windows</label>

                <input type="checkbox" id="macOS_OS" />
                <label for="macOS_OS">macOS</label>

                <input type="checkbox" id="Linux_OS" />
                <label for="Linux_OS">SteamOS + Linux</label>
              </div>
            </div>
          </div>
        </div>
      </div>

       <!-- ShowingModal => -->
      <div id="ShowingModal" class="hidingModal_Search">
        <div id="closeModal"></div>

        <div class="holder">
          <h1 id="Modal_GameName"></h1>

          <div class="pic_Detail_holder">
            <div id="PicShow">
              <img src="" id="Modal_BigPic" />

              <div class="ModalPic_holder">
                <img src="" id="Modal_Pic1" class="pictuars" />
                <img src="" id="Modal_Pic2" class="pictuars" />
                <img src="" id="Modal_Pic3" class="pictuars" />
                <img src="" id="Modal_Pic4" class="pictuars" />
              </div>
            </div>

            <div class="detailModal">
              <img src="" id="onvanPic" />

              <p id="GameDiscription">
                Winner of over 175 Game of the Year Awards and recipient of over
                250 perfect scores, RDR2 is the epic tale of outlaw Arthur
                Morgan and the infamous Van der Linde gang, on the run across
                America at the dawn of the modern age. Also includes access to
                the shared living world of Red Dead Online.
              </p>

              <div class="holder">
                <h3>Release Date:</h3>
                <h2 id="GameDateDetail">5 Dec, 2019</h2>
              </div>

              <div class="holder">
                <h3>Developer:</h3>
                <h2 id="DeveloperData" style="color: #67c1f5">Rockstar</h2>
              </div>

              <div class="holder">
                <h3>Publisher:</h3>
                <h2 id="PublisherData" style="color: #67c1f5">Rockstar</h2>
              </div>
            </div>
          </div>

          <div class="Add">
            <span id="AddCartBT"></span>
            <span id="AddWishListBT"></span>
          </div>
        </div>
      </div>

       <!-- cart => -->
      <div id="Cart">
        <div class="Holder" id="HolderCart">
          <div class="ShowPrice" id="ShowPrice_Cart">
            TotalPrice:
            <h1 id="TotalPrice">123.56 €</h1>
            <span id="PayMentBT" onclick="PayIsSucssess()">PAYMENT</span>
          </div>
          <div id="ShowingGridCart">
            <!-- <div class="items">
              <img src="Media/Store_recommended/gallery/01_1.png" alt="" />
              <h1>Arma 3</h1>
              <span class="Quantity">2</span>
              <span class="Price">23.76$</span>
              <span class="DeleteBT">Delete</span>
            </div> -->
          </div>
        </div>
        <div id="CloseCartBT" onclick="CloseCart()"></div>
      </div>

       <!-- wishlist => -->
      <div id="WishList">
        <div class="Holder" id="HolderWishList">
          <div id="ShowingGridWishList">
            <!-- <div class="items">
              <img src="Media/Store_recommended/gallery/01_1.png" alt="" />
              <h1>Arma 3</h1>
              <span class="Quantity">2</span>
              <span class="Price">23.76$</span>
              <span class="DeleteBT">Delete</span>
            </div> -->
          </div>
        </div>
        <div id="CloseWishListBT" onclick="CloseWishList()"></div>
      </div>
    </div>
    

       <script src="Content/javascript/StoreMenu.js"></script>
       <script src="Content/javascript/GamesDataJason.js"></script>

       <script src="Content/javascript/Searching.js"></script>
       <script src="Content/javascript/CreatGamesDataJasonForSearching.js"></script>
              
       <script src="Content/javascript/Modal.js"></script>      
       <script src="Content/javascript/Cart.js"></script>
       <script src="Content/javascript/WishList.js"></script>
   
       <script src="Content/javascript/CreatGamesDataJasonForRecommendedSlider.js"></script>
       

    </body>
   
</html>
