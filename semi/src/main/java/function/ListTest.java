package function;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

import vo.TongVO;

public class ListTest {

	public static void main(String[] args) {
//		TongDAO dao = new TongDAO();
//		TongVO vo = dao.selectOne("test", "1234");
//		System.out.println(dao.isExists("test"));
		
		// 최근본상품 저장 형식, 리스트로 저장후 세션으로 넘김
		ArrayList<String> list_str = new ArrayList<String>();

		list_str.add("1");
		list_str.add("2");
		list_str.add("3");
		list_str.add("4");
		list_str.add("5");

		
		String a = "2";
		// 중복값 받아오기 위한 변수 20으로 초기화 해놓고 만약 중복된 값이 있으면 temp의 값을 받아
		// 중복된 데이터 삭제
		int counter = 20;
		int temp = 0;
//		Iterator<String> iter = list_str.iterator();
		
//		 중복상품 검사 후 상품넣기 리스트에 상품이 있으면 원래있던 상품 삭제후 상품 추가
		for(String x : list_str) {
			if(x.equals(a)) {
//				System.out.println(x);
				counter = temp;
			}
			temp++;
		}
		list_str.remove(counter);
		list_str.add(a);
		list_str.add("7");
		
//		길이가 6이상이면 처음 본 상품 삭제
		if(list_str.size() >= 6) {
			list_str.remove(0);
		}
		
		for(String x : list_str) {
			System.out.println(x);
		}
//		System.out.println(list_str.size());	
		

	}

}
