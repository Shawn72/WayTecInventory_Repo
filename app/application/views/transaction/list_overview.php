    <div class="main container">
        <div class="head">
            <div class="title">
                <h2><?php echo __('site.transactions') . ' ' .  __('site.overview'); ?></h2>
            </div>
            <nav>
                <?php echo $item_buttons; ?>
            </nav>
        </div>
        <div class="body">
            <script>
            $(document).ready(function() {
                $('#example').dataTable( {
                    "fnDrawCallback": function( oSettings ) {
                      $('a.screenshot').imgPreview( {imgCSS: { width: 300, height: 300 }} );
                    },
                    "bProcessing": true,
                    "bServerSide": true,
                    "sAjaxSource": "<?php echo URL::to('ajax/transaction_overview/' . $id); ?>",
                    "iDisplayLength": 50,
                    "aoColumnDefs": [{ "bSortable": false, "aTargets": [ 7 ] }],
                    "aaSorting": [[ 0, "asc" ]],
                    "oLanguage": {"sUrl": "<?php echo URL::base(); ?>/app/assets/js/jquery.dataTables.<?php echo Config::get('application.language') ?>.txt"}
                } );
            } );
            </script>
            <div class="transactions_list add">
                <?php if(isset($id)): ?>
                <?php echo View::make('layout.blocks.nav_sections')->with('id', $id); ?>
                <?php endif; ?>
                <div class="message">
                    <?php Vsession::cprint('status'); ?>
                </div>
                <table cellpadding="0" cellspacing="0" border="0" class="display" id="example">
                    <thead>
                        <tr>
                            <th class="tid">Id</th>
                            <th><?php echo __('site.date'); ?></th>
                            <th><?php echo __('site.type'); ?></th>
                            <th><?php echo __('site.item'); ?></th>
                            <th><?php echo __('site.quantity'); ?></th>
                            <th><?php echo __('site.price'); ?></th>
                            <th><?php echo __('Total'); ?></th>
                            <th><?php echo __('site.edit'); ?></th>
                        </tr>
                    </thead>
                    <tbody>
                        
                    </tbody>
                </table>
            </div>
        </div>
    </div>
