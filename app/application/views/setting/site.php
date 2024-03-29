    <div class="main container">
        <div class="head">
            <div class="title">
                <h2><?php echo __('site.settings'); ?></h2>
            </div>
        </div>
        <div class="body">
            <div class="site_settings add">
                <?php echo Form::open(); ?>
                <div class="message">
                    <?php Vsession::cprint('status'); ?>
                </div>
                <div class="left">
                    <div class="row1">
                        <div class="col1">
                        <?php
                        echo Form::label('language', __('site.language'));
                        echo Form::select('language', Config::get('site.languages'), Config::get('application.language'));
                        ?>
                        </div>
                        <div class="col2">
                        </div>
                    </div>
                </div>
                <div class="right">
                    <div class="row1">
                        <div class="col1">
                        </div>
                    </div>
                </div>
                <div class="row1 submit">
                    <div class="info">Shawn Inventory 1.0.0 - <a href="https://www.linkedin.com/in/shawn-andre-mbuvi-02062682/" target="_blank">30Dynasty Co.</a></div>
                    <?php echo Form::submit(__('site.save_settings'), array('name'=>'submit', 'class' => 'btn btn-primary')); ?>
                </div>

                <?php echo Form::close(); ?>
            </div>
        </div>
    </div>
