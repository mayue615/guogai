<?php
namespace Home\Model;
use Think\Model\RelationModel;
	class UserModel extends RelationModel{
	protected $_link = array(	
		'photo' => array(
		'mapping_type'      =>  self::HAS_ONE,
		'class_name'        =>  'photo',//子表名称
		'foreign_key'       =>  'user_id',
		'mapping_order'       =>  'Id',
		'as_fields'=>'photo:pic',
		//'mapping_fields' => array('level,body,title'),//默认所有的字段都查询
		),		
	);
	
	
	
		protected $_validate=array(
			array('password','require','验证码必须填写!'),
			array('password','checkCode','验证码错误!',0,'callback',1),
			array('user_name','require','用户必须填写!'),
			array('user_name','','用户已经存在',0,'unique',1),
			array('user_name','/^\w{6,}$/','用户名必须6个字母以上',0,'regex',1),
			array('repassword','password','确认密码不正确',0,'confirm'), 
		);

		
		
		protected function checkCode($code){
			if(md5($code)!=$_SESSION['code']){
				return false;
			}else{
				return true;
			}
		}
		public function user_model_ut(){
			echo("UserModel UT is successful!</br>");
		}
	}
?>
