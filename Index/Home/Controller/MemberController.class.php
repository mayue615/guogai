<?php
namespace Home\Controller;
use Think\Controller;
class MemberController extends Controller {

	public function my_info(){
		$club_id = cookie('club_id');
		$user_id=cookie('user_id');
		$user=D('user','Api');
		$data=$user->get_user_info($user_id);		
		$this->assign('user',$data);	
		$this->display();		
	}	
	public function my_info_deal(){
		$user_id=cookie('user_id');	
		$user=D('user','Api');
		$data=$user->create();
		$user->save($data);
		$this->success();	
	}
	
}