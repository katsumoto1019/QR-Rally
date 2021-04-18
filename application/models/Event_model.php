<?php if(!defined('BASEPATH')) exit('No direct script access allowed');

/**
 * Class : User_model (User Model)
 * User model class to get to handle user related data
 * @author : Katsumoto Hideo
 * @version : 1.0
 * @since : 2021-04-01
 */
class Event_model extends CI_Model
{
    function getEventListCount($searchText = ''){
        return 0;
    }

    function getEventList($searchText = '', $page, $segment)
    {
        $this->db->select('*');
        $this->db->from('tbl_event');
        if(!empty($searchText)) {
            $likeCriteria = "(eventTitle  LIKE '%".$searchText."%')";
            $this->db->where($likeCriteria);
        }
        $this->db->order_by('createdDtm', 'DESC');
        $this->db->limit($page, $segment);
        $query = $this->db->get();

        $result = $query->result();
        return $result;
    }
}

  