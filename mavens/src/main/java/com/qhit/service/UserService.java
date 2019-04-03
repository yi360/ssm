package com.qhit.service;



import java.util.List;

import com.qhit.pojo.SysUser;

public interface UserService {
	
	public SysUser login(String loginName,String password);

	public int register(SysUser user);
	
	public List<SysUser> selAllUser();
	
	public int delUser(int id);
}
