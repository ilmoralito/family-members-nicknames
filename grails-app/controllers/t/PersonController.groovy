package t

class PersonController {

    def index() {
    	[people:Person.list()]
    }

    def delete(Integer id) {
    	def person = Person.get(id)

    	if (!person) {
    		response.sendError 404
    	}

    	person.delete()

    	redirect action:"index"
    }

    def createPersonFlow = {
    	create {
    		on("createPerson") {
    			def person = new Person(name:params.name)

    			if (!person.save()) {
    				flow.person = person
    				return error()
    			}

    			[person:person]
   			}.to "addNicknames"

   			on("end").to "end"
    	}

    	addNicknames {
    		on("add") {
    			if (params.nickname) {
    				flow.person.addToNicknames(params.nickname)
    			} else {
    				error()
    			}
   			}.to "addNicknames"

   			on("deleteNickname") {
   				flow.person.removeFromNicknames(params.id)
			}.to "addNicknames"

   			on("end").to "end"
    	}

    	end {
    		redirect controller:"person", action:"index"
    	}
    }
}
