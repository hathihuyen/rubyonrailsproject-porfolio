//Check off Specific Todos By Clicking
$("ul").on("click", "li", function(){//effect with all "li" inside of "ul" event with the future one
	$(this).toggleClass("completed");
});

//CLick on X to delete Todo
$("ul").on("click", "span", function(event){ //effect with all "span" tag inside of "ul".
	$(this).parent().fadeOut(function(){
		$(this).remove(); //this $(this) equal to $(this).parent().
	});
	//stop using the parent layout events
	event.stopPropagation();
});

//Add new Todo
$("input[type='text']").keypress(function(event){
	if(event.which === 13){
		var newTodo = $(this).val();
		if (newTodo === "") {
			$("#message").html("There is no task to add!");
			$("#message").addClass("message");
		} else {
			//create a new li and add to ul
			$("ul").append("<li><span><i class='fa fa-trash'></i></span> " + newTodo + "</li>");
			$(this).val(""); //clear the textbox
			$("#message").removeClass("message");
			$("#message").html(newTodo + " added!");
		}		
	}
});

//toggling the input form
$(".fa-plus").click(function(){
	$("input[type='text']").fadeToggle();
	$("#message").removeClass("message");
	$("#message").html("What did you do today?!");
});