package com.qhit.service.impl;

import java.util.List;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import javax.xml.registry.infomodel.User;

import org.springframework.stereotype.Service;

import com.qhit.dao.SysUserMapper;
import com.qhit.pojo.SysUser;
import com.qhit.service.UserService;
@Service(value="userService")
@Transactional
public class UserServiceImpl implements UserService{

	@Resource(name="userDao")
	private SysUserMapper userdao;
	@Override
	public SysUser login(String username, String password) {
	
		SysUser user=userdao.selectByUseName(username);
		if (user!=null) {
			System.out.println(user.getPassword());
			if (user.getPassword().equals(password)) {
				return  user;
			}
		}
		return null;
	}
	@Override
	public int register(SysUser user) {
		SysUser users=userdao.selectByUseName(user.getLoginName());
		if (users!=null) {
			return 0;
		}
		int a=userdao.insertSelective(user); 
		return a;
	}
	@Override
	public List<SysUser> selAllUser() {
		
		return userdao.selAllUser();
	}
	@Override
	public int delUser(int id) {
		// TODO Auto-generated method stub
		int count=userdao.deleteByPrimaryKey(id);
		return count;
	}

}
