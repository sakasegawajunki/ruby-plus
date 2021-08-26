umeda = Gate.new(:umeda)
mikuni = Gate.new(:mikuni)

ticket = Ticket.new(150)
p umeda.enter(ticket)
p mikuni.exit(ticket)

ticket = Ticket.new(190)
p umeda.enter(ticket)
p mikuni.exit(ticket)