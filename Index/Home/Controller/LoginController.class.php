<?php
namespace Home\Controller;
use Think\Controller;
class LoginController extends Controller {
	public function login(){
	    $this->display('login');
	}
	public function login_deal(){
		$username = I('post.username');
		$password = I('post.password');
		$user=D('user','Api');
		$user_info=$user->login($username,$password);
 		if(!$user_info)
		{	
			$this->error("User name or password is error");
		}	
		else		
		{
			$dis_name=$user_info['dis_name'];
			$user_id=$user_info['Id'];
			$user_authority=$user_info['authority'];
			cookie('user_id',$user_id);
			cookie('user_authority',$user_authority);
			//echo("setup cookie<br>");
			//exit;
			$login_times = $user_info['login_times'];
			if($login_times != "")
				$login = intval($login_times)+1;
			else
				$login = 1;;
			$date = date('Y-m-d H:i:s',time());
			$data['Id']=$user_id;			
			$data['login_times']=$login;
			$data['last_login']=$date;
			$user->set_user_info($data);
			$this->redirect('Index/index');
		}

	}
    function logout(){
		cookie("user_authority",null);
		cookie("user_id",null);
    	//cookie(null);//清空所有session信息,这个函数有bug
		$this->redirect('Index/index');
    }
	
}
?>