package bzu

/**
 * 班级
 * 
 * @author zhbo
 *
 */
class ClassGrade {
	/**
	 * 班级名称（简称，唯一的）
	 */
	String name
	/**
	 * 年级
	 */
	Integer grade
	/**
	 * 班号
	 */
	Integer classNo
	/**
	 * 专业
	 */
	Specialty specialty
	/**
	 * 学生
	 */
	Set<Student> students
	
	static belongsTo = [specialty:Specialty]
	
	static hasMany = [students:Student]

    static constraints = {
		name nullable:false, blank:false, unique:true, maxSize:50
		specialty nullable:false
		grade nullable:false, range:2010..2025
		classNo nullable:false, range:1..20
    }
	
	static mapping = {
		sort 'name'
	}
	
	String toString() {
		name
	}
}
