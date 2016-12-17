package com.carisok.ireports.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.carisok.ireports.model.User;

@Mapper
public interface UserMapper {

	public int updateUserSelective(User user);
	
	public List<String> findRoleNameByUserId(Long userId);
	
}
