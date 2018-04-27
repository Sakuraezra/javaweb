package entity;

public class DL {
	private Integer rid;
	private String age;
	private String income;
	private String distance;
	private String weather;
	private String result;
	private String province;
	
	public String getProvince() {
		return province;
	}
	public void setProvince(String province) {
		this.province = province;
	}
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getIncome() {
		return income;
	}
	public void setIncome(String income) {
		this.income = income;
	}
	public String getDistance() {
		return distance;
	}
	public void setDistance(String distance) {
		this.distance = distance;
	}
	public String getWeather() {
		return weather;
	}
	public void setWeather(String weather) {
		this.weather = weather;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return 	rid +" "+ age + " " + income + " "+ distance + " " + weather + " "+ result+" "+province;
	}
	
	public String getRuseltByType(String type){
		String result = null;
		if(type.equals("Income"))
		 result	= income;
		else if(type.equals("Age"))
		 result = age;
		else if(type.equals("Distance"))
		 result = distance;
		else if(type.equals("Weather"))
		 result = weather;
		return result;	
	}
	
}
