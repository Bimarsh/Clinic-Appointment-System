$(function() {
	// CSRF Registration for Ajax requests
	var token = $("meta[name='_csrf']").attr("content");
	var header = $("meta[name='_csrf_header']").attr("content");
	$(document).ajaxSend(function(e, xhr, options) {
		xhr.setRequestHeader(header, token);
	});
	
	// Application Path
	var appPath = $("#app-path").val();
	
	// Cleanup the modal editors.
	function cleanup(){
		$("#doctorId").val("");
		$("#firstName").val("");
		$("#lastName").val("");
		$("#email").val("");
		$("#speciality").val("CARDIOLOGIST");
	}
	
	// Show/hide the modal
	function toggleModal(show) {
		if(show) $("#doctor-modal").addClass("show");
		else $("#doctor-modal").removeClass("show");
	}
	
	// Add the Doctor (from AJAJ response) to the list or update the existing row.
	function bindDoctorToList(doctor){
		var $tr = $("#doctor-" + doctor.id);
		if ($tr.length > 0) {
			// Update the existing row.
			var $tds = $tr.find("td");
			$($tds[0]).text(doctor.firstName);
			$($tds[1]).text(doctor.lastName);
			$($tds[2]).text(doctor.email);
			$($tds[3]).text(doctor.speciality);
		}
		else {
			// Add a new row to the list.
			var $command = $("<td>").append($("<a>", {
				"class": "edit",
				"text": "Edit",
				"data-id": doctor.id
			})).append(" | ").append($("<a>", {
				"class": "delete",
				"text": "Delete",
				"data-id": doctor.id
			}));
			$("<tr>", {
				"id" : "doctor-" + doctor.id
			}).append($("<td>", {
				"text": doctor.firstName
			})).append($("<td>", {
				"text": doctor.lastName
			})).append($("<td>", {
				"text": doctor.email
			})).append($("<td>", {
				"text": doctor.speciality
			})).append($command).appendTo($("#doctor-list"));
		}
	}
	
	// "Add Doctor" button handler
	$("#add-doctor").click(function() {
		cleanup();
		toggleModal(true);
	});
	
	// "Edit" link handler
	// Must register this way because new rows will be added dynamically.
	$("#doctor-list").on("click", ".edit", function() {
		var $link = $(this);
		var $tds = $link.parent().parent().find("td");
		$("#doctorId").val($link.attr("data-id"))
		$("#firstName").val($($tds[0]).text());
		$("#lastName").val($($tds[1]).text());
		$("#email").val($($tds[2]).text());
		$("#speciality").val($($tds[3]).text());
		toggleModal(true);
	});
	
	// "Delete" link handler
	// Must register this way because new rows will be added dynamically.
	$("#doctor-list").on("click", ".delete", function() {
		var $link = $(this);
		var $tr = $link.parent().parent();
		var $tds = $tr.find("td");
		var message = "Do you really want to delete '" +
			$($tds[0]).text() + " " + $($tds[1]).text() + "' doctor?";
		if (confirm(message)) {
			$.ajax({
				type: "DELETE",
				url: appPath + "doctor/" + $link.attr("data-id"),
				contentType: "application/json",
				dataType: "json",
				success : function(succeeded) {
					if (succeeded) {
						// Delete the row from the list.
						$tr.remove();
					}
				},
				error: function(errorObject){
					alert("An error occurred. Please try again.")
				}
			});
		}
	});

	// Modal "Close" button handler
	$("#doctor-modal .close").click(function() {
		toggleModal(false);
	});

	// Modal "Save" button handler
	$("#save-doctor").click(function() {
		var dataToSave = {
			id: $("#doctorId").val(),
			firstName: $("#firstName").val(),
			lastName: $("#lastName").val(),
			email: $("#email").val(),
			speciality: $("#speciality").val()
		};
		$.ajax({
			type: "POST",
			url: appPath + "doctor",
			contentType: "application/json",
			dataType: "json",
			data: JSON.stringify(dataToSave),
			success: function(doctor){
				bindDoctorToList(doctor);
				cleanup();
				toggleModal(false);
			},
			error: function(errorObject){
				
			}
		});
	});
});