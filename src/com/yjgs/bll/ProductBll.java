package com.yjgs.bll;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspWriter;

import com.yjgs.dal.ProductDal;
import com.yjgs.dal.ProductListDal;
import com.yjgs.dal.ProductParamDal;
import com.yjgs.dal.ProductPictureDal;
import com.yjgs.dal.ProductTypeDal;
import com.yjgs.dcl.Product;
import com.yjgs.dcl.ProductList;
import com.yjgs.dcl.ProductParam;
import com.yjgs.dcl.ProductPicture;
import com.yjgs.dcl.ProductType;

public class ProductBll {

	/**
	 * 加载类别列表
	 * 
	 * @param fOut		JSP输出对象
	 */
	public void loadTypeList(int fTypeID,JspWriter fOut) {
		
		ProductTypeDal ptDal = null;
		ArrayList<ProductType> types = null;
		
		try {
			
			//步骤1：先加载所有类别
			fOut.println(String.format("<li %s><a href='ProductList.jsp?typeID=0' >所有产品</a></li>"
					, fTypeID == 0? "id=\"curType\"" : ""));
			
			//步骤2：实例化DAL并获取类别数据
			ptDal = new ProductTypeDal();
			types = ptDal.getAllTypes();
			if(types == null) return;
			
			//步骤3：输出列表
			for(ProductType aType : types) {
				
				fOut.println(String.format("<li %s><a href='ProductList.jsp?typeID=%d' >%s</a></li>"
						,fTypeID == aType.getTypeID()? "id=\"curType\"" : "", aType.getTypeID(),aType.getTypeName()));
			}
			
		} catch (Exception e) {
			
			System.out.println("加载产品类别列表异常");
			e.printStackTrace();
			return;
		}
	}
	
	/**
	 * 获取总页数
	 * 
	 * @param fTypeID		类别ID
	 * @return					返回总页数
	 */
	public int getPageNum(int fTypeID) {
		
		int pageSize = 8;
		int productNum = 0;
		int pageNum = 1;
		
		ProductListDal pDal = new ProductListDal();
		ProductList product = new ProductList();
		product.setProductTypeID(fTypeID);
		ArrayList<ProductList> products = pDal.getListByType(product);
		if (products == null)
			productNum = 0;
		else
			productNum = products.size();
		
		//步骤3：计算总页数
		if(productNum != 0) {
			pageNum = (productNum - 1)/pageSize +1;
		}
		
		return pageNum;
	}
	
	/**
	 * 加载指定类别，指定页数的产品列表
	 * 
	 * @param fOut			Jsp输出对象
	 * @param fTypeID		类型ID
	 * @param fPage			页码
	 */
	public void loadProductList(JspWriter fOut,int fTypeID,int fPage) {
		
		ProductListDal pListDal = null;
		ProductList product = null;
		ArrayList<ProductList> products = null;
		
		try {
			
			//步骤1：实例化DAL并获取相应数据
			pListDal = new ProductListDal();
			product = new ProductList();
			product.setProductTypeID(fTypeID);
			products = pListDal.getList_fs(product, fPage);
			
			//步骤2：遍历产品数据集合并输出
			for(ProductList aProduct : products) {
				
				fOut.println("<div class='productDiv'>");
				fOut.println(String.format("<a href='ProductPage.jsp?typeID=%d&productID=%d'>", fTypeID,aProduct.getProductID()));
				fOut.println(String.format("<img src='%s' width=285 height=180 />",  
						aProduct.getProductBreAddr()==null? "../Image/NoBrePic.jpg":aProduct.getProductBreAddr()));
				fOut.println(String.format("<span>%s</span>", aProduct.getProductName()));
				fOut.println("</a>");
				fOut.println("</div>");
			}
			
		} catch (Exception e) {
			
			System.out.println("加载产品列表异常");
			e.printStackTrace();
			return;
		}
	}
	
	/**
	 * 加载页码列表
	 * 
	 * @param fOut			JSP输出对象
	 * @param fTypeID		类别ID
	 * @param fPage			页码
	 */
	public void loadPageLinks(JspWriter fOut,int fTypeID,int fPage) {
		
		int pageNum = 1;
		int startPage = 0;
		int endPage = 0;
		int pageLinksNum =5;  //一组页码列表的个数
		
		try {
			
			//步骤2：计算总页数
			pageNum = getPageNum(fTypeID);

			//步骤3：计算页码列表的开始项和结尾项
			startPage = ((fPage -1)/pageLinksNum) * pageLinksNum;
			if(startPage == 0) startPage = 1;
			endPage = startPage + pageLinksNum;
			if(endPage > pageNum) endPage = pageNum;
			
			//步骤4：输出页码列表
			
			//输出“上一页”
			if(fPage > 1) {
				
				fOut.println(String.format("<a href='ProductList.jsp?typeID=%d&page=%d' class='upPage'>上一页 </a> "
						, fTypeID,fPage - 1));
			}
			
			//输出页码列表
			for(int i = startPage; i <= endPage; i++) {
				
				fOut.println(String.format("<a href='ProductList.jsp?typeID=%d&page=%d'>%d</a> "
						, fTypeID,i,i));
			}
			
			//输出“下一页”
			if(fPage < pageNum) {
				
				fOut.println(String.format("<a href='ProductList.jsp?typeID=%d&page=%d' class='downPage'>下一页 </a> "
						, fTypeID,fPage + 1));
			}
			
		} catch (Exception e) {

			System.out.println("加载页码列表异常");
			e.printStackTrace();
			return;
		}
		
	}
	
	/**
	 * 加载页码选择下拉框
	 * 
	 * @param fOut				JSP输出对象
	 * @param fPageNum		总页数
	 */
	public void loadPageOption(JspWriter fOut , int fPageNum) {
		
		try {
			
			for(int i = 1; i<= fPageNum; i++) {
				
				fOut.println(String.format("<option value=%d >%d</option>", i,i));
			}
			
		} catch (Exception e) {
			
			System.out.println("加载页码下拉框异常");
			e.printStackTrace();
			return;
		}
	}
	
	/**
	 * 获取产品名称
	 * 
	 * @param fProductID		产品ID	
	 * @return						返回产品名称
	 */		
	public String getProductName(int fProductID) {
		
		ProductDal pDal = null;
		Product product = null;
		
		try {
			
			product = new Product();
			product.setProdcuctID(fProductID);
			
			pDal = new ProductDal();
			product = pDal.getProduct(product);
			
			
		} catch (Exception e) {
			
			System.out.println("获取产品名称异常");
			e.printStackTrace();
			return null;
		}
		
		return product.getProductName();
	}
	
	/**
	 * 加载产品参数
	 * 
	 * @param fOut				JSP输出对象
	 * @param fProductID		产品ID
	 */
	public void loadProductParam(JspWriter fOut,int fProductID) {
		
		ProductParamDal ppDal = null;
		ArrayList<ProductParam> params = null;
		
		try {
			
			//步骤1：实例化DAL并获取数据
			ppDal = new ProductParamDal();
			ProductParam param = new ProductParam();
			param.setProductID(fProductID);
			
			params = ppDal.getParam(param);
			if(params == null) return;
			fOut.println("<h4><span class='je'>产品参数</span><span class='eng'>Products Parameters：</span></h4>");
			fOut.println("<ul>");
			//步骤2：遍历参数集合,输出参数
			for(ProductParam aParam : params) {
				
				fOut.println(String.format("<li title='%s' class='liparams'>%s:", aParam.getParamValue(),aParam.getParamName()));
				fOut.println(String.format("%s</li>", aParam.getParamValue()));
			}
			fOut.println("</ul>");
			
		} catch (Exception e) {
			
			System.out.println("加载产品参数异常");
			e.printStackTrace();
			return;
		}
		
	}
	
	/**
	 * 加载预览图
	 * 
	 * @param fOut				JSP输出对象
	 * @param fProductID		产品ID
	 */
	public void loadPreviewPic(JspWriter fOut,int fProductID) {
		
		ProductPictureDal ppicDal = null;
		ArrayList<ProductPicture> pictures = null;		
		try {
			
			//步骤1：实例化DAL并获取数据
			ppicDal = new ProductPictureDal();
			ProductPicture picture = new ProductPicture();
			picture.setProductID(fProductID);
			pictures = ppicDal.getProBrePics(picture);
			
			
			//步骤2：输出第一个图片的大图以及原图地址
			
			//做没有图片时的处理
			if(pictures == null)  {
				
				fOut.println("<div class='bigPic'><img src='../Image/NoBrePic.jpg' width=285 height=180 /></div>");
				return;
			}
			//fOut.println("");
			fOut.println("<div class='bigPic'>");
			fOut.println(String.format("<a href='%s' id='picLink' target='_blank'>", pictures.get(0).getPictureAddr()));
			fOut.println(String.format("<img src='%s' width=420 height=270  /></a>", pictures.get(0).getPictureAddr()));
			fOut.println("</div>");
			
			//步骤3：输出缩略图选择列表
			fOut.println("<div class='smartPic'>");
			for(ProductPicture aPicture : pictures) {
				
				fOut.println(String.format("<a href='#' onmouseover='changePic(%d); return false' >", aPicture.getPictureID()));
				fOut.println(String.format("<img src='%s' width=84 height=54  /></a>", aPicture.getPictureBreAddr()));
			}
			fOut.println("</div>");
		} catch (Exception e) {

			System.out.println("加载产品预览图异常");
			e.printStackTrace();
			return;
		}
		
	}
	
	/**
	 * 获取产品原图
	 * 
	 * @param fPicID		图片ID
	 * @return				返回图片的原图地址
	 */
	public String getOPicPath(int fPicID) {
		
		ProductPictureDal ppicDal = null;
		ProductPicture picture = null;
		
		try {
			
			picture = new ProductPicture();
			picture.setPictureID(fPicID);
			
			ppicDal = new ProductPictureDal();
			picture = ppicDal.getAPicture(picture);
			
		} catch (Exception e) {
			
			System.out.println("获取产品原图异常");
			e.printStackTrace();
			return null;
		}
		
		return picture.getPictureAddr();
	}
	
	/**
	 * 加载产品介绍
	 * 
	 * @param fOut				JSP输出对象
	 * @param productID		产品ID
	 */
	public void loadProIntroduce(JspWriter fOut,int productID) {
		
		ProductDal pDal = null;
		Product product = null;
		
		
		try {
			
			
			//步骤1：获取数据
			product = new Product();
			product.setProdcuctID(productID);
			
			pDal = new ProductDal();
			product = pDal.getProduct(product);
			
			//步骤2：输出介绍
			if(product.getIntroduct() == null||product.getIntroduct().length()==0||product.getIntroduct().equals("null")) return;
			fOut.println("<h4><span class='je'>产品介绍</span><span class='eng'>Product Introduction：</span></h4>");
			fOut.println("<div class='IntroducePicList'>");
			fOut.println(product.getIntroduct());
			fOut.println("</div>");
			
		} catch (Exception e) {
			
			System.out.println("加载产品介绍异常");
			e.printStackTrace();
			return;
		}
		
	}
	
	/**
	 * 对产品进行搜索，并输出搜索结果
	 * 
	 * @param fKeyWords			搜索关键字
	 * @param fPage					页码
	 * @param fOut					JSP输出对象
	 * @return 							总页数
	 */
	public int productSearch(String fKeyWords,int fPage,JspWriter fOut) {
		
		ProductListDal plDal = null;
		ArrayList<ProductList> products = null;
		int pageSize = 12;
		int pageNum = 1;  //总页数
		
		
		try {

			// 步骤1：调用私有方法获取搜索结果（产品集合）
			products = getSearchResult(fKeyWords);
			if (products == null) {

				fOut.println("<p class='noProduct'>暂时没有找到符合条件的商品！</p>");
				return 1;
			}
			
			//获取总页数
			int productNum = products.size();
			pageNum = (productNum - 1)/pageSize +1;
			
			//步骤2：根据页码计算所需展现的数据
			int startIndex = 0;
			int endIndex = 0;
			startIndex =  pageSize*(fPage - 1);
			endIndex = startIndex + pageSize - 1;
			if(endIndex > productNum) endIndex = productNum;
			
			//实际截取
			plDal = new ProductListDal();
			products.add(new ProductList()); //防止截取时越界
			List<ProductList>  tarProducts = products.subList(startIndex, endIndex + 1);
			
			products = new ArrayList<ProductList>();
			Iterator<ProductList> it = tarProducts.iterator();
			while(it.hasNext()) {
				
				products.add(it.next());
			}
			
			//步骤3：获取实际的数据
			products = plDal.getListByID(products);

			// 步骤4：遍历产品数据集合并输出
			fOut.println("<div>");
			for (ProductList aProduct : products) {

				fOut.println("<div class='productDiv'>");
				fOut.println(String.format("<a href='ProductPage.jsp?productID=%d'>",
						aProduct.getProductID()));
				fOut.println(String.format("<img src='%s' width=285 height=180 />",
						aProduct.getProductBreAddr() == null ?
								"../Image/NoBrePic.jpg": aProduct.getProductBreAddr()));
				fOut.println(String.format("<span>%s</span>",aProduct.getProductName()));
				fOut.println("</a>");
				fOut.println("</div>");
			}
			fOut.println("</div>");
		} catch (Exception e) {

			System.out.println("加载产品列表异常");
			e.printStackTrace();
			return 1;
		}
		
		return pageNum;
	}
	
	/**
	 * 实际的搜索过程
	 * 
	 * @param fKeyWords		关键字
	 * @param fPage				页码
	 * @return						产品集合
	 */
	private ArrayList<ProductList> getSearchResult(String fKeyWords) {
		
		ProductTypeDal ptDal = null;
		ProductDal pDal = null;
		ArrayList<ProductList> productList = null;
		
		//步骤1：实例化DAL以及结果列表
		ptDal = new ProductTypeDal();
		pDal = new ProductDal();
		productList = new ArrayList<ProductList>();
		
		//步骤2：搜索类别
		ArrayList<ProductType> types = ptDal.typeSearch(fKeyWords);
		if(types != null) {
			
			for(ProductType aType : types) {
				
				Product product = new Product();
				product.setProductTypeID(aType.getTypeID());
				ArrayList<Product> products = pDal.getProductsByType(product);
				for(Product aProduct : products) {
					
					ProductList listItem = new ProductList();
					listItem.setProductID(aProduct.getProdcuctID());
					productList.add(listItem);
				}
			}
		}
		
		//步骤3：产品搜索
		ArrayList<Product> products = pDal.productSearch(fKeyWords);
		if(products == null)  return null;
		for(Product aProduct : products) {
			
			ProductList listItem = new ProductList();
			listItem.setProductID(aProduct.getProdcuctID());
			
			//排除重复的产品
			boolean isHas = false;
			for(ProductList aItem : productList) {
				
				if(aItem.getProductID() == aProduct.getProdcuctID()) {
					
					isHas = true;
					break;
				}
			}
			if(!isHas) {
				productList.add(listItem);
			}
		}
		
		return productList;
	}
	
	public void loadSearchPageList(JspWriter fOut,String fKeyWords,int fPageNum,int fPage) {
		
		int startPage = 0;
		int endPage = 0;
		int pageLinksNum =5;  //一组页码列表的个数
		
		try {

			//步骤1：计算页码列表的开始项和结尾项
			startPage = ((fPage -1)/pageLinksNum) * pageLinksNum;
			if(startPage == 0) startPage = 1;
			endPage = startPage + pageLinksNum;
			if(endPage > fPageNum) endPage = fPageNum;
			
			//步骤4：输出页码列表
			fOut.println("<div id='pageNum'>");
			//输出“上一页”
			if(fPage > 1) {
				
				fOut.println(String.format("<a href='ProductSearch.jsp?keyWords=%s&page=%d' class='upPage'>上一页 </a> "
						, fKeyWords,fPage - 1));
			}
			
			//输出页码列表
			for(int i = startPage; i <= endPage; i++) {
				
				fOut.println(String.format("<a href='ProductSearch.jsp?keyWords=%s&page=%d'>%d </a> "
						, fKeyWords,i,i));
			}
			
			//输出“下一页”
			if(fPage < fPageNum) {
				
				fOut.println(String.format("<a href='ProductSearch.jsp?keyWords=%s&page=%d' class='downPage'>下一页 </a> "
						, fKeyWords,fPage + 1));
			}
			fOut.println("</div>");
			
		} catch (Exception e) {

			System.out.println("加载页码列表异常");
			e.printStackTrace();
			return;
		}
	}
}
