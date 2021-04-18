<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

require APPPATH . '/libraries/BaseController.php';

/**
 * Class : Event (EventController)
 * User Class to control all user related operations.
 * @author : Katsumoto Hideo
 * @version : 1.0
 * @since : 2021-04-05
 */
class Event extends BaseController
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
        $this->global['pageTitle'] = 'QRラリー : イベント管理';

        $searchText = $this->security->xss_clean($this->input->post('searchText'));
        $data['searchText'] = $searchText;

        $this->load->library('pagination');

        $count = $this->event_model->getEventListCount($searchText);

        $returns = $this->paginationCompress ( "eventList/", $count, 10 );

        $data['eventRecords'] = $this->event_model->getEventList($searchText, $returns["page"], $returns["segment"]);

        $this->global['pageTitle'] = 'QRラリー : ユーザー一覧';

        $this->loadViews("eventList", NULL, $data, NULL);
    }

    public function eventAdd() {
        $this->global['pageTitle'] = 'QRラリー : イベント登録';
        $data = array();
        $this->loadViews("eventAdd", $this->global, $data, NULL);
    }

}

?>