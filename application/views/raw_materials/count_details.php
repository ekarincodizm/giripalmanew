      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
        <h4 class="modal-title"><?php echo $this->lang->line('items_basic_information'); ?></h4>
      </div>
      <div class="modal-body">
        <div class="row">
          <div class="col-md-5">
            <fieldset id="inv_item_basic_info">
              <table align="center" border="0" bgcolor="#CCCCCC">
                <div class="field_row clearfix">
                  <tr>
                    <td><?php echo form_label($this->lang->line('items_item_number').':', 'name',array('class'=>'wide')); ?></td>
                    <td>
                      <?php $inumber = array (
                        'name'=>'item_number',
                        'id'=>'item_number',
                        'value'=>$item_info->item_number,
                        'style'       => 'border:none',
                        'readonly' => 'readonly'
                        );
                        echo form_input($inumber);
                      ?>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo form_label($this->lang->line('items_name').':', 'name',array('class'=>'wide')); ?></td>
                    <td>
                      <?php $iname = array (
                        'name'=>'name',
                        'id'=>'name',
                        'value'=>$item_info->name,
                        'style'       => 'border:none',
                        'readonly' => 'readonly'
                        );
                        echo form_input($iname);
                      ?>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo form_label($this->lang->line('items_category').':', 'category',array('class'=>'wide')); ?></td>
                    <td>
                      <?php $cat = array (
                        'name'=>'category',
                        'id'=>'category',
                        'value'=>$item_info->category,
                        'style'       => 'border:none',
                        'readonly' => 'readonly'
                        );
                                    
                        echo form_input($cat);
                      ?>
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo form_label($this->lang->line('items_stock_location').':', 'stock_location',array('class'=>'wide')); ?></td>
                    <td>
                      <?php echo form_dropdown('stock_location',$stock_locations,current($stock_locations),'onchange="display_stock(this.value)", class="form-control');?> 
                    </td>
                  </tr>
                  <tr>
                    <td><?php echo form_label($this->lang->line('items_current_quantity').':', 'quantity',array('class'=>'wide')); ?></td>
                    <td>
                      <?php $qty = array (
                      'name'=>'quantity',
                      'id'=>'quantity',
                      'value'=>current($raw_material_quantities),
                      'style'       => 'border:none',
                      'readonly' => 'readonly'
                      );
                                    
                      echo form_input($qty);
                      ?>
                    </td>
                  </tr>
                </div>  
              </table>

              <div class="field_row clearfix">
                <div class='form_field'></div>
              </div>

              <div class="field_row clearfix">
                <div class='form_field'></div>
              </div>
            </fieldset>
          </div> <!-- ./col-md-6 -->
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-warning pull-left" data-dismiss="modal">Close</button>
      </div>
<script type='text/javascript'>
$(document).ready(function()
{
    display_stock(<?php echo json_encode(key($stock_locations)); ?>);
});

function display_stock(location_id)
{
    var item_quantities= <?php echo json_encode($item_quantities ); ?>;
    $("#quantity").val(item_quantities[location_id]);
}  
</script>