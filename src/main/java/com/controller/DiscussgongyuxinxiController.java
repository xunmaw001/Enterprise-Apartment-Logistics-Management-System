package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.DiscussgongyuxinxiEntity;
import com.entity.view.DiscussgongyuxinxiView;

import com.service.DiscussgongyuxinxiService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;


/**
 * 公寓信息评论表
 * 后端接口
 * @author 
 * @email 
 * @date 2021-03-27 15:17:13
 */
@RestController
@RequestMapping("/discussgongyuxinxi")
public class DiscussgongyuxinxiController {
    @Autowired
    private DiscussgongyuxinxiService discussgongyuxinxiService;
    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,DiscussgongyuxinxiEntity discussgongyuxinxi, 
		HttpServletRequest request){

        EntityWrapper<DiscussgongyuxinxiEntity> ew = new EntityWrapper<DiscussgongyuxinxiEntity>();
		PageUtils page = discussgongyuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discussgongyuxinxi), params), params));
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,DiscussgongyuxinxiEntity discussgongyuxinxi, HttpServletRequest request){
        EntityWrapper<DiscussgongyuxinxiEntity> ew = new EntityWrapper<DiscussgongyuxinxiEntity>();
		PageUtils page = discussgongyuxinxiService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, discussgongyuxinxi), params), params));
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( DiscussgongyuxinxiEntity discussgongyuxinxi){
       	EntityWrapper<DiscussgongyuxinxiEntity> ew = new EntityWrapper<DiscussgongyuxinxiEntity>();
      	ew.allEq(MPUtil.allEQMapPre( discussgongyuxinxi, "discussgongyuxinxi")); 
        return R.ok().put("data", discussgongyuxinxiService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(DiscussgongyuxinxiEntity discussgongyuxinxi){
        EntityWrapper< DiscussgongyuxinxiEntity> ew = new EntityWrapper< DiscussgongyuxinxiEntity>();
 		ew.allEq(MPUtil.allEQMapPre( discussgongyuxinxi, "discussgongyuxinxi")); 
		DiscussgongyuxinxiView discussgongyuxinxiView =  discussgongyuxinxiService.selectView(ew);
		return R.ok("查询公寓信息评论表成功").put("data", discussgongyuxinxiView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        DiscussgongyuxinxiEntity discussgongyuxinxi = discussgongyuxinxiService.selectById(id);
        return R.ok().put("data", discussgongyuxinxi);
    }

    /**
     * 前端详情
     */
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        DiscussgongyuxinxiEntity discussgongyuxinxi = discussgongyuxinxiService.selectById(id);
        return R.ok().put("data", discussgongyuxinxi);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody DiscussgongyuxinxiEntity discussgongyuxinxi, HttpServletRequest request){
    	discussgongyuxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discussgongyuxinxi);

        discussgongyuxinxiService.insert(discussgongyuxinxi);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody DiscussgongyuxinxiEntity discussgongyuxinxi, HttpServletRequest request){
    	discussgongyuxinxi.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(discussgongyuxinxi);

        discussgongyuxinxiService.insert(discussgongyuxinxi);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody DiscussgongyuxinxiEntity discussgongyuxinxi, HttpServletRequest request){
        //ValidatorUtils.validateEntity(discussgongyuxinxi);
        discussgongyuxinxiService.updateById(discussgongyuxinxi);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        discussgongyuxinxiService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<DiscussgongyuxinxiEntity> wrapper = new EntityWrapper<DiscussgongyuxinxiEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}


		int count = discussgongyuxinxiService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	


}
