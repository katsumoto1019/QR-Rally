<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : Event (EventController)
 * User Class to control all user related operations.
 * @author : Katsumoto Hideo
 * @version : 1.0
 * @since : 2021-04-05
 */
class Fileupload extends BaseController
{
    /**
     * This is default constructor of the class
     */
    public function __construct()
    {
        parent::__construct();
        $this->load->model('event_model');
//        $this->isLoggedIn();
    }

    /**
     * This function used to load the first screen of the user
     */
    public function index()
    {
        if(!empty($_FILES)){
            $uploadDir = FCPATH . "uploads/";
            $fileName = $_FILES['file']['name'];
            $uploadedFile = $uploadDir.$fileName;
            if(move_uploaded_file($_FILES['file']['tmp_name'],$uploadedFile)) {
//                $mysqlInsert = "INSERT INTO uploads (file_name, upload_time)VALUES('".$fileName."','".date("Y-m-d H:i:s")."')";
//                mysqli_query($conn, $mysqlInsert);
            }
        }
    }

}

?>