/datum/component/ai
	var/datum/component/controller/controller

	var/state = 0 // AI_STATE_* of the AI.

/datum/component/ai/ReceiveSignal(var/message_type, var/list/args)
	switch(message_type)
		if(COMSIG_STATE) // list("name"="statename")
			state = args["name"]

/datum/component/ai/InitializeComponent(var/list/args)
	controller = owner.TryGetComponent(/datum/component/controller)
