<div class="special-product-main">
<div class="container">
<div class="row">
<div class="special-carousel products-list small_product">
<div class="box-heading">
<h3><?php echo $heading_title; ?></h3>
</div>
<div class="special-items products-carousel row">
  <?php foreach ($products as $product) { ?>
    <div class="product-layouts">
	  <div class="product-thumb transition">
	  	<?php if ($product['special']) { ?>
		  <div class="sale-icon">Sale</div>
		<?php } ?>
      	  <div class="image">
	   <?php if ($product['thumb_swap']) { ?>
				<a href="<?php echo $product['href']; ?>">
					<img class="image_thumb" src="<?php echo $product['thumb']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
					<img class="image_thumb_swap" src="<?php echo $product['thumb_swap']; ?>" title="<?php echo $product['name']; ?>" alt="<?php echo $product['name']; ?>" />
				</a>

			<?php } else { ?>

				<a href="<?php echo $product['href']; ?>">
					<img class="img-responsive" src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" />
				</a>
			<?php } ?>
			
	  </div>
	  	  <div class="thumb-description">
   		 <div class="caption">
         <h4><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></h4>
        <!--<p class="description"><?php echo $product['description']; ?></p>-->
		
		<?php if ($product['rating']) { ?>
			<div class="rating">
          <?php for ($i = 1; $i <= 5; $i++) { ?>
          <?php if ($product['rating'] < $i) { ?>
          <span class="fa fa-stack"><i class="fa fa-star off fa-stack-2x"></i></span>
          <?php } else { ?>
          <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i></span>
          <?php } ?>
          <?php } ?>
        </div>
		<?php } ?>
	    <?php if ($product['price']) { ?>
        <div class="price">
          <?php if (!$product['special']) { ?>
          <?php echo $product['price']; ?>
          <?php } else { ?>
          <span class="price-new"><?php echo $product['special']; ?></span> <span class="price-old"><?php echo $product['price']; ?></span>
          <?php } ?>
          <?php if ($product['tax']) { ?>
          <span class="price-tax"><?php echo $text_tax; ?> <?php echo $product['tax']; ?></span>
          <?php } ?>
        </div>
        <?php } ?>
		 </div>
		 <div class="button-group">
		 <button class="btn-cart" type="button" onclick="cart.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-shopping-cart"></i>
		 <span class="hidden-xs hidden-sm hidden-md"><?php echo $button_cart; ?></span></button>
		 <button class="btn-wishlist" type="button" onclick="wishlist.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-heart"></i></button>
         <button class="btn-compare" type="button" onclick="compare.add('<?php echo $product['product_id']; ?>');"><i class="fa fa-exchange"></i></button>
       </div>
		</div>
		  
	  </div>
    </div>
  <?php } ?>
</div>
</div>
</div>
</div>
</div>
<script	 type="text/javascript">
// product Carousel
var ttspecialproduct = $(".tt-special-block .special-items.products-carousel");
    ttspecialproduct.owlCarousel({
items:4,
    itemsDesktop : [1200,4],
    itemsDesktopSmall : [991,3],
    itemsTablet: [767,2],
    itemsMobile : [480,1],
	navigation: true,
	pagination: false
     });
</script>
