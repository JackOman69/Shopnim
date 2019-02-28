<div id="cart" class="btn-group">
  <button type="button" data-toggle="dropdown" data-loading-text="<?php echo $text_loading; ?>" class="btn btn-inverse btn-block btn-lg dropdown-toggle"><i class="fa fa-shopping-cart"></i>
  <span id="cart-total"><?php echo $text_items; ?></span>
  </button>
  <ul class="dropdown-menu pull-right header-cart-toggle">
    <?php if ($products || $vouchers) { ?>
    <li>
      <table class="table table-striped">
        <?php foreach ($products as $product) { ?>
        <tr>
          <td class="text-center image"><?php if ($product['thumb']) { ?>
            <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" /></a>
            <?php } ?></td>
			
			<td class="text-left name"><?php echo $product['quantity']; ?>&nbsp x<a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a>
            <?php if ($product['option']) { ?>
            <?php foreach ($product['option'] as $option) { ?>
            <br />
            - <small><?php echo $option['name']; ?> <?php echo $option['value']; ?></small>
            <?php } ?>
            <?php } ?>
            <?php if ($product['recurring']) { ?>
            <br />
            - <small><?php echo $text_recurring; ?> <?php echo $product['recurring']; ?></small>
            <?php } ?></td>
          
          <!--<td class="text-right">x <?php echo $product['quantity']; ?></td>-->
          <td class="text-right amount"><?php echo $product['total']; ?></td>
          <td class="text-center button"><button type="button" onclick="cart.remove('<?php echo $product['cart_id']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
        <?php foreach ($vouchers as $voucher) { ?>
        <tr>
          <td class="text-center"></td>
          <td class="text-left"><?php echo $voucher['description']; ?></td>
          <td class="text-right">x&nbsp;1</td>
          <td class="text-right amount"><?php echo $voucher['amount']; ?></td>
          <td class="text-center text-danger"><button type="button" onclick="voucher.remove('<?php echo $voucher['key']; ?>');" title="<?php echo $button_remove; ?>" class="btn btn-danger btn-xs"><i class="fa fa-times"></i></button></td>
        </tr>
        <?php } ?>
      </table>
    </li>
    <li>
      <div>
        <table class="table table-bordered">
          <?php foreach ($totals as $total) { ?>
          <tr>
            <td class="text-right"><strong><?php echo $total['title']; ?></strong></td>
            <td class="text-right price-total"><?php echo $total['text']; ?></td>
          </tr>
          <?php } ?>
        </table>
       </div>
	   <p class="text-right">
	   <a href="<?php echo $cart; ?>" class="ttviewcart"><strong><!--<i class="fa fa-shopping-cart"></i>--> <?php echo $text_cart; ?></strong></a>
	   <a href="<?php echo $checkout; ?>" class="ttcheckout"><strong><!--<i class="fa fa-share"></i>--> <?php echo $text_checkout; ?></strong></a></p>
    </li>
    <?php } else { ?>
    <li>
      <p class="text-center"><?php echo $text_empty; ?></p>
    </li>
    <?php } ?>
  </ul>
</div>