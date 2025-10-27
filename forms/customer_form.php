<fieldset>
    <div class="form-group">
        <label for="f_name">Name *</label>
          <input type="text" name="f_name" value="<?php echo htmlspecialchars($edit ? $customer['f_name'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="Full Name" class="form-control" required="required" id = "f_name" >
    </div> 

    <div class="form-group">
        <label for="l_name">UUID *</label>
        <input type="text" name="l_name" value="<?php echo htmlspecialchars($edit ? $customer['l_name'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="UUID" class="form-control" required="required" id="l_name">
    </div> 

    <div class="form-group">
        <label>Gender * </label>
        <label class="radio-inline">
            <input type="radio" name="gender" value="male" <?php echo ($edit &&$customer['gender'] =='male') ? "checked": "" ; ?> /> Male
        </label>
        <label class="radio-inline">
            <input type="radio" name="gender" value="female" <?php echo ($edit && $customer['gender'] =='female')? "checked": "" ; ?> id="female"/> Female
        </label>
    </div>

    <div class="form-group">
        <label for="address">Address</label>
          <textarea name="address" placeholder="Address" class="form-control" id="address"><?php echo htmlspecialchars(($edit) ? $customer['address'] : '', ENT_QUOTES, 'UTF-8'); ?></textarea>
    </div> 
    
    <div class="form-group">
        <label>Subscription type </label>
           <?php $opt_arr = array("Monthly", "Yearly", "Permanent"); 
                            ?>
            <select name="state" class="form-control selectpicker" required="required">
                <option value="Monthly" >Please select a subscription type</option>
                <?php
                foreach ($opt_arr as $opt) {
                    if ($edit && $opt == $customer['state']) {
                        $sel = "selected";
                    } else {
                        $sel = "";
                    }
                    echo '<option value="'.$opt.'"' . $sel . '>' . $opt . '</option>';
                }

                ?>
            </select>
    </div>  
    <div class="form-group">
        <label for="email">Email of the customer</label>
            <input  type="email" name="email" value="<?php echo htmlspecialchars($edit ? $customer['email'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="E-Mail Address" class="form-control" id="email">
    </div>

    <div class="form-group">
        <label>Status </label>
           <?php $opt_arr1 = array("Active", "Inactive"); ?>
            <select name="phone" class="form-control selectpicker" required="required">
                <option value="Active" >Please select a status</option>
                <?php
                foreach ($opt_arr1 as $opt1) {
                    if ($edit && $opt1 == $customer['phone']) {
                        $sel1 = "selected";
                    } else {
                        $sel1 = "";
                    }
                    echo '<option value="'.$opt1.'"' . $sel1 . '>' . $opt1 . '</option>';
                }

                ?>
            </select>
    </div>  



   <!--  <div class="form-group">
        <label for="phone">Status</label>
            <input name="phone" value="<?php echo htmlspecialchars($edit ? $customer['phone'] : '', ENT_QUOTES, 'UTF-8'); ?>" placeholder="1/2" class="form-control"  type="text" id="phone">
    </div>  -->

    <div class="form-group">
        <label>Subscription expire date</label>
        <input name="date_of_birth" value="<?php echo htmlspecialchars($edit ? $customer['date_of_birth'] : '', ENT_QUOTES, 'UTF-8'); ?>"  placeholder="Expire date" class="form-control"  type="date" required="required">
    </div>

    <div class="form-group text-center">
        <label></label>
        <button type="submit" class="btn btn-warning" >Save <span class="glyphicon glyphicon-send"></span></button>
    </div>            
</fieldset>
