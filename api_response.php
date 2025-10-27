<?php
    if (isset($_POST['api_key']) && isset($_POST['uuid']) && isset($_POST['status']))
    {
        $api_key_sanitize = filter_input(INPUT_POST, 'api_key');
        $uuid_sanitize = filter_input(INPUT_POST, 'uuid');
        $status_sanitize = filter_input(INPUT_POST, 'status');

        if ($api_key_sanitize == 'f2441e3810794d37a34dd7f8f6995df4') {

            require_once 'config/config.php';
            require_once BASE_PATH . '/lib/Costumers/Costumers.php';
            $costumers = new Costumers();
            $db = getDbInstance();

            $db->where ("l_name", $uuid_sanitize);
            $user = $db->getOne ("customers");
            if (!empty($user['l_name'])) {
                if ($user['phone'] == 'Active') {

                    $result_json = array('status' => 'Active');
                    // headers for not caching the results
                    header('Cache-Control: no-cache, must-revalidate');
                    header('Expires: Mon, 26 Jul 2023 05:00:00 GMT');
                    header('Content-type: application/json');
                    #return json_encode($result_json);
                    exit(json_encode($result_json));
                }
                
            }else{
                return false;
            }
        }
        
    }
    else
    {
        echo "Post not received anything.";
    }
?>
