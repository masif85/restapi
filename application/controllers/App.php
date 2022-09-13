<?php   
require(APPPATH.'libraries/REST_Controller.php');     
class App extends REST_Controller {    
	/**
     * Get All Data from this method.
     *
     * @return Response
    */
    public function __construct() {
       parent::__construct();
       $this->load->database();
    }       
    /**
     * Get All Data from this method.
     *
     * @return Response
    */

	public function index_get()
	{		
		$table="";		
		/*$keys=$this->input->server($key_name);
		$ip=$this->input->ip_address();
		$key=$keys['HTTP_X_API_KEY'];*/
		$key=$this->rest->key;
		$table=$this->rest->target_table;	
		//$table="tbl_vouchers2";
		$id=$this->input->get("id");		
	
		if(!empty($id)){
		$data=array("status"=>"true","msg"=>"Wow nice try you mentiond $id");
			$this->set_response($data, REST_Controller::HTTP_OK);
		}
		else
		{
			$data=array("status"=>"false","error"=>"Hey Prabha, its Invalid Data");
			$this->set_response($data, REST_Controller::HTTP_OK);
		}
		$this->set_response($data_final, REST_Controller::HTTP_OK);
	}
    /**
     * Get All Data from this method.
     *
     * @return Response
    */
    public function index_post()
    {
		/*
        $input = $this->input->post();		
		unset($input['submit']);
        $this->db->insert('items',$input);     
        $this->response(['Item created successfully.'], REST_Controller::HTTP_OK);
		*/
    }
    /**
     * Get All Data from this method.
     *
     * @return Response
    */
    public function index_put()
    {
		$table="";
		$key = $this->_args['X-API-KEY'];
		$table=$this->rest->target_table;		
		$id=$this->input->get("id");
		$ukey=$this->input->get("uniquekey");
		$message="";		
		//$table="tbl_vouchers2";
        //$input = $this->put();
		$data_final = array(
			'ResponseCode'=>0,
			'Response'=>"Failure",
			'Description'=>$message
			);	
		
		
		$this->response($data_final, REST_Controller::HTTP_OK);
    }     
    /**
     * Get All Data from this method.
     *
     * @return Response
    */
    public function index_delete($id)
    {
		/*
        $this->db->delete('tbl_vouchers', array('id'=>$id));
       
        $this->response(['Item deleted successfully.'], REST_Controller::HTTP_OK);
		*/
    }    	
}