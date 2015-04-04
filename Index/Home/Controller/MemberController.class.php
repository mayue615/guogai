<?php
namespace Home\Controller;
use Think\Controller;
class MemberController extends Controller {

	
	public function my_info(){
		$user_id=cookie('user_id');
		$user=D('user','Api');
		$data=$user->get_user_info($user_id);
		$data['phone']=substr($data['phone'],1,strlen($data['phone']));
		$this->assign('user',$data);	
		$this->display();		
	}	
	public function my_info_deal(){
		$user_id=cookie('user_id');	
		$user=D('user','Api');
		$data=$user->create();
		//dump($data);
		$user->save($data);
		$this->upload();
		$this->success('信息修改成功');	
	}
	
	public function upload(){
		$user_id=cookie('user_id');	
		$upload = new \Think\Upload();// 实例化上传类
		$upload->maxSize   =     3145728 ;// 设置附件上传大小
		$upload->exts      =     array('jpg', 'gif', 'png', 'jpeg');// 设置附件上传类型
		$upload->rootPath  =     './Uploads/'; // 设置附件上传根目录
		$upload->autoSub   = 	false;
		$upload->savePath  =     './'.$user_id.'/'; // 设置附件上传（子）目录
		// 上传文件 
		$info   =   $upload->upload();
		//dump($info);
		if(!$info) {// 上传错误提示错误信息
			$this->error($upload->getError());
		}else{// 上传成功
			$user=D('user','Api');
			foreach($info as $file){

				$photo=$file['savepath'].$file['savename'];
				$user->set_user_photo($user_id,$photo);
			}
			$this->success('上传成功！');
		}
	}
	
	
	
}