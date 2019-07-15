<nav>
    <a class="btn" href="<?php echo action('item@add') ?>"><i class="icon-arrow-up"></i> Check Out item</a>  
            
    <?php if( Auth::is('Admin')  || Auth::is('Super Admin')  || Auth::is('Manager') ) ?>
        <a class="btn" href="<?php echo action('item@add') ?>"><i class="icon-arrow-down"></i> Check In item</a>
        <a class="btn" href="<?php echo action('item@add') ?>"><i class="icon-plus-sign icon-black"></i> Add item</a>
    <?php endif; ?>
</nav>

