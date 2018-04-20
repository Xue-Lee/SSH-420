package com.icss.entity;

public class American implements Person {
	private Axe axe;
	private String name;
	@Override
	public void userAxe() {
		//依赖axe
		System.out.println(name+" say:"+axe.chop());
	}
	public Axe getAxe() {
		return axe;
	}
	public void setAxe(Axe axe) {
		this.axe = axe;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
