<?php echo $header; ?>
<div class="container">
  <header>
    <div class="row">
      <div class="col-sm-6">
        <h1 class="pull-left">4<small>/4</small></h1>
        <h3><?php echo $heading_title; ?><br>
          <small><?php echo $text_step_4; ?></small></h3>
      </div>
      <div class="col-sm-6">
        <div id="logo" class="pull-right hidden-xs"><img src="view/image/logo.png" alt="ocStore" title="ocStore" /></div>
      </div>
    </div>
  </header>
  <?php if ($success) { ?>
  <div class="alert alert-success"><?php echo $success; ?></div>
  <?php } ?>
  <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
    <button type="button" class="close" data-dismiss="alert">&times;</button>
  </div>
  <div class="visit">
    <div class="row">
      <div class="col-sm-5 col-sm-offset-1 text-center">
        <p><i class="fa fa-shopping-cart fa-5x"></i></p>
        <a href="../" class="btn btn-secondary"><?php echo $text_catalog; ?></a></div>
      <div class="col-sm-5 text-center">
        <p><i class="fa fa-cog fa-5x white"></i></p>
        <a href="../admin/" class="btn btn-secondary"><?php echo $text_admin; ?></a></div>
    </div>
  </div>
  <div class="modules">
    <div class="row" id="extension">
      <h2 class="text-center"><i class="fa fa-circle-o-notch fa-spin"></i> <?php echo $text_loading; ?></h2>
    </div>
    <div class="row">
      <div class="col-sm-12 text-center"> <a class="btn btn-default" href="http://myopencart.com/extension/&utm_source=ocstore_install&utm_medium=store_link&utm_campaign=ocstore_install" target="_BLANK"><?php echo $text_extension; ?></a> </div>
    </div>
  </div>
  <div class="mailing">
    <div class="row">
      <div class="col-sm-12"><i class="fa fa-envelope-o fa-5x"></i>
        <h3><?php echo $text_mail; ?><br>
          <small><?php echo $text_mail_description; ?></small></h3>
        <a href="http://myopencart.com/subscribe/" target="_BLANK" class="btn btn-secondary"><?php echo $button_mail; ?></a></div>
    </div>
  </div>
  <div class="core-modules">
    <div class="row">
      <div class="col-sm-6 text-center"><img src="view/image/openbay_pro.gif" />
        <p><?php echo $text_openbay; ?></p>
        <a class="btn btn-primary" href="<?php echo $openbay; ?>"><?php echo $button_setup; ?></a></div>
      <div class="col-sm-6 text-center"><img src="view/image/maxmind.gif" />
        <p><?php echo $text_maxmind; ?></p>
        <a class="btn btn-primary" href="<?php echo $maxmind; ?>"><?php echo $button_setup; ?></a></div>
    </div>
  </div>
  <div class="support text-center">
    <div class="row">
      <div class="col-sm-4"><a target="_blank" href="https://www.facebook.com/ocstore" class="icon transition"> <i class="fa fa-facebook fa-4x"></i> </a>
        <h3><?php echo $text_facebook; ?></h3>
        <p><?php echo $text_facebook_description; ?></p>
        <a target="_blank" href="https://www.facebook.com/ocstore"><?php echo $text_facebook_visit; ?></a> </div>
      <div class="col-sm-4"><a target="_blank" href="https://vk.com/myopencartcom" class="icon transition"> <i class="fa fa-vk fa-4x"></i> </a>
        <h3><?php echo $text_vkontakte; ?></h3>
        <p><?php echo $text_vkontakte_description; ?></p>
        <a target="_blank" href="https://vk.com/myopencartcom"><?php echo $text_vkontakte_visit; ?></a> </div>
      <div class="col-sm-4"><a target="_blank" href="https://opencartforum.com/?utm_source=ocstore_install&utm_medium=forum_link&utm_campaign=ocstore_install" class="icon transition"> <i class="fa fa-comments fa-4x"></i> </a>
        <h3><?php echo $text_forum; ?></h3>
        <p><?php echo $text_forum_description; ?></p>
        <a target="_blank" href="https://opencartforum.com/?utm_source=ocstore_install&utm_medium=forum_link&utm_campaign=ocstore_install"><?php echo $text_forum_visit; ?></a> </div>
    </div>
  </div>
</div>
<?php echo $footer; ?>
<script type="text/javascript"><!--
$(document).ready(function() {
	$.ajax({
		url: '<?php echo $extension; ?>',
		type: 'post',
		dataType: 'json',
		success: function(json) {
			if (json['extensions']) {
				html  = '';

				for (i = 0; i < json['extensions'].length; i++) {
					extension = json['extensions'][i];

					html += '<div class="col-sm-6 module">';
					html += '  <a class="thumbnail pull-left" href="' + extension['href'] + '"><img src="' + extension['image'] + '" alt="' + extension['name'] + '" /></a>';
					html += '  <h5>' + extension['name'] + '</h5>';
					html += '  <p>' + extension['price'] + ' <a target="_BLANK" href="' + extension['href'] + '"><?php echo $text_view; ?></a></p>';
					html += '  <div class="clearfix"></div>';
					html += '</div>';

					i++;
				}

				$('#extension').html(html);
			} else {
				$('#extension').fadeOut();
			}
		}
	});
});
//--></script>