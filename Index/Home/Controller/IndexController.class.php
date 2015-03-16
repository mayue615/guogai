<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
		$user=D('user');
		$data=$user->select();
		//dump($data);
		$this->display();
    }
    public function my_info(){
		$user=D('user');
		$data=$user->select();
		//dump($data);
		$this->display();
    }	
}