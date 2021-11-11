package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@Data
@NoArgsConstructor
public class ProductVO {
	int pno;
	String code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String redate;
	int energy;
	String imgfile;
	int psize;
	int pixel;

}
