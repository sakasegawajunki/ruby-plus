umeda = Gate.new(:umada)
mikuni = Gate.new(:miluni)

ticket = Ticket.new(150)
umeda.enter(ticket)
mikuni.exit(ticket)

ticket = Ticket.new(190)
umeda.enter(ticket)
mikun.exit(ticket)