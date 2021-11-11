package vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class TvVO {

	int pno;
	String code;
	String pname;
	String pdesc;
	String brand;
	int price;
	String regdate;
	int energy;
	String imgfile;
	int psize;
	int pixel;
	String codename;
	
}
