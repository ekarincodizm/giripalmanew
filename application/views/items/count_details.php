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
                      'value'=>current($item_quantities),
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
          <div class="col-md-7">
            <?php
            $inventory_array = $this->Inventory->get_inventory_data_for_item($item_info->item_id)->result_array();
            $employee_name = array();
            foreach( $inventory_array as $row)
            {
                $person_id = $row['trans_user'];
                $employee = $this->Employee->get_info($person_id);
                array_push($employee_name, $employee->first_name." ".$employee->last_name);
            }
            ?>
            <table id="inventory_result" class="table table-bordered">
              <tr align="center"><th colspan="4">Inventory Data Tracking</th></tr>
              <tr align="center"><td>Date</td><td>Employee</td><td>In/Out Qty</td><td>Remarks</td></tr>
            </table>
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
    document.getElementById("quantity").value = item_quantities[location_id];
    
    var inventory_data = <?php echo json_encode($inventory_array); ?>;
    var employee_data = <?php echo json_encode($employee_name); ?>;
    
    var table = document.getElementById("inventory_result");
    //Remove old query
    var rowCount = table.rows.length;
    for (var index = rowCount; index > 2; index--)
    {
        table.deleteRow(index-1);       
    }
    
    //Add new query
    for (var index = 0; index < inventory_data.length; index++) 
    {                
        var data = inventory_data[index];
        if(data['trans_location'] == location_id)
        {
          $('#inventory_result tbody').append('<tr><td>'+data['trans_date']+'</td><td>'+employee_data[index]+'</td><td>'+data['trans_inventory']+'</td><td>'+data['trans_comment']+'</td></tr>');
            // var tr = document.createElement('TR');
            // // if(index % 2 == 0)
            // //   tr.setAttribute("bgColor","#f9f9f9");
            // tr.setAttribute("align","#center");
            
            // var td = document.createElement('TD');
            // td.appendChild(document.createTextNode(data['trans_date']));
            // tr.appendChild(td);
            
            // td = document.createElement('TD');
            // td.appendChild(document.createTextNode(employee_data[index]));
            // tr.appendChild(td);
            
            // td = document.createElement('TD');
            // td.setAttribute("align","right");
            // td.appendChild(document.createTextNode(data['trans_inventory']));
            // tr.appendChild(td);
            
            // td = document.createElement('TD');            
            // td.appendChild(document.createTextNode(data['trans_comment']));
            // tr.appendChild(td);

            // table.appendChild(tr);
        }
    }
   
}  
</script>