package t

class Person implements Serializable{

	String name

    static constraints = {
    	name blank:false
    }

    static hasMany = [nicknames:String]

    String toString() {
    	name
    }
}
