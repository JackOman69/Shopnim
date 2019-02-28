  <?php if ($footer_top) { ?>
  <div class="footer-top-cms">
 	<?php echo $footer_top; ?>
	</div>
  <?php } ?>
  <footer>
    <div class="container">
    <div class="row">
	  <?php if($footer_left) { ?>
	  <div class="footer-column footer-left-cms col-sm-3">
		<?php echo $footer_left; ?>
	  </div>
	  <?php } ?>
		<div class="col-sm-3 footer-column <?php echo strtolower('footer-'.str_replace(' ', '-', $text_extra)); ?>">
        <h5><?php echo $text_extra; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>
         <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>	
          <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
          <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
		   <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
        </ul>
      </div>
      <?php if ($informations) { ?>
      <div class="col-sm-3 footer-column <?php echo strtolower('footer-'.str_replace(' ', '-', $text_information)); ?>">
        <h5><?php echo $text_information; ?></h5>
        <ul class="list-unstyled">
          <?php foreach ($informations as $information) { ?>
          <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
          <?php } ?>
          
        </ul>
      </div>
      <?php } ?>
      
      <div class="col-sm-3 footer-column <?php echo strtolower('footer-'.str_replace(' ', '-', $text_account)); ?>">
        <h5><?php echo $text_account; ?></h5>
        <ul class="list-unstyled">
          <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
          <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
          <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
          <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
        </ul>
      </div>

	  <?php if($footer_right) { ?>
	  <div class="footer-column footer-right-cms col-sm-3">
		<?php echo $footer_right; ?>
	  </div>
    </div>
  </div>
   <?php } ?>
		<div class="footer-bottom">
		 <?php if ($footer_bottom) { ?>
	  <div class="footer-bottom-cms col-sm-12 footer-column">
			<?php echo $footer_bottom; ?>
	  </div>
	  <?php } ?>
		<p><?php echo $powered; ?></p>
	 
	</div>
</footer>
</div>
<!--
OpenCart is open source software and you are free to remove the powered by OpenCart if you want, but its generally accepted practise to make a small donation.
Please donate via PayPal to donate@opencart.com
//-->

<!-- Theme designed by TemplateTrip on OpenCart, www.templatetrip.com -->
</body></html>