import t.*

class BootStrap {

    def init = { servletContext ->
    	def p1 = new Person(name:"amanda").save()
    	def p2 = new Person(name:"daniel").save()
    	def p3 = new Person(name:"hadned").save()

    	p1.addToNicknames("lamanda")
    	p1.addToNicknames("mama")

    	p2.addToNicknames("nelo")

    	p3.addToNicknames("rat")
    	p3.addToNicknames("stone")
    	p3.addToNicknames("gordon")
    }
    def destroy = {
    }
}
