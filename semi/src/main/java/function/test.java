package function;

import dao.recentlyViewedItemsDAO;
import vo.recentlyViewedItemsVO;

public class test {

	public static void main(String[] args) {
		recentlyViewedItemsDAO dao = new recentlyViewedItemsDAO();
		recentlyViewedItemsVO vo = dao.selectRvd("ss");
		
		dao.updateRvd1("6", "../images/ball1.png", "asd");
		
	}

}
