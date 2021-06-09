package com.model2.mvc.service.product.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.model2.mvc.common.Search;
import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.domain.User;
import com.model2.mvc.service.product.ProductDao;

@Repository("productDaoImpl")
public class ProductDaoImpl implements ProductDao {
	
	///Field
	@Autowired
	@Qualifier("sqlSessionTemplate")
	private SqlSession sqlSession;
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	public ProductDaoImpl(){
		System.out.println(this.getClass());
	}

	public void addProduct(Product product) throws Exception {
		product.setManuDate(product.getManuDate().replace("-",""));		
		sqlSession.insert("ProductMapper.addProduct", product);
	}
	
	public Product getProduct(int  prodNo) throws Exception {
		return sqlSession.selectOne("ProductMapper.getProduct", prodNo);
	}
	
	public void updateProduct(Product product) throws Exception{
		product.setManuDate(product.getManuDate().replace("-",""));
		sqlSession.update("ProductMapper.updateProduct", product);
	}
	
	public List<Product> getProductList(Search search) throws Exception{
		System.out.println("프로덕트디에이오의 겟프로덕트리스트 리턴값 :");
		System.out.println(sqlSession.selectList("ProductMapper.getProductList", search));
		return sqlSession.selectList("ProductMapper.getProductList", search);
	}
	
	// 게시판 Page 처리를 위한 전체 Row(totalCount)  return
	public int getTotalCount(Search search) throws Exception {
		return sqlSession.selectOne("ProductMapper.getTotalCount", search);
	}

}