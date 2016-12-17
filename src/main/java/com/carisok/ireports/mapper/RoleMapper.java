package com.carisok.ireports.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.carisok.ireports.model.Role;
@Mapper
public interface RoleMapper {
    int deleteByPrimaryKey(Integer rid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer rid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);
}