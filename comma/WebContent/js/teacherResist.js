

function carreerIN(){
	
	var category = $("#careerSelect option:selected").val();
	var career = $("#carrerText").val();
	
	var uni = category +":"+ career;
	alert(uni);
	var cat = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var catH5 = $('<h5 style="font-size:15px;">'+category+'</h5>');
	
	var car = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>')
		var carH5 = $('<h5 style="font-size:15px;">'+career+'년</h5>')
	
	var del = $('<div style="border-bottom:1px solid black; heigt:50px;"></div>');
		var delBtn = $('<input type="button" id="delCareerBtn" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="carreerOUT(this)">')
	
	var hide = $('<div style="display:none"></div>');
		var hideInput = $("<input style='display:none' type='hide' name='t_career' value='"+uni+"'>");
		
	$(cat).append(catH5);
	$(car).append(carH5);
	$(del).append(delBtn);
	$(hide).append(hideInput);
	
		
	$("#careerCat").append(cat);
	$("#careerNum").append(car);
	$("#careerDel").append(del);
	$("#careerHide").append(hide);
}


	

function carreerOUT(me){
	alert("탔어~");
	var index = $(me).parent().index();
	alert(index);
	
	$("#careerCat div").eq(index).remove();
	$("#careerNum div").eq(index).remove();
	$("#careerDel div").eq(index).remove();
	$("#careerHide div").eq(index).remove();
} 


function univIN(){
	
	alert("함수야~");
	var schoolName = $("#schoolInput").val();
	var majorName = $("#majorInput").val();
	
	var uni = schoolName+":"+majorName;
	
	var sc = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var scH5 = $('<h5 style="font-size:15px;">'+schoolName+'</h5>');

	var maj = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>')
		var majH5 = $('<h5 style="font-size:15px;">'+majorName+'</h5>')

	var del = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var delBtn = $('<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="carreerOUT(this)">')

	var hide = $('<div style="display:none"></div>');
		var hideInput = $("<input style='display:none' type='hide' name='t_education' value='"+uni+"'>");
	
		
		$(sc).append(scH5);
		$(maj).append(majH5);
		$(del).append(delBtn);
		$(hide).append(hideInput);
		
		
	$("#scDIV").append(sc);
	$("#majorDIV").append(maj);
	$("#scDelDIV").append(del);
	$("#scHideDIV").append(hideInput);
	
}

function carreerOUT(me){
	alert("탔어~");
	var index = $(me).parent().index();
	alert(index);
	
	$("#scDIV div").eq(index).remove();
	$("#majorDIV div").eq(index).remove();
	$("#scDelDIV div").eq(index).remove();
	$("#scHideDIV div").eq(index).remove();
} 


function licIN(){
	var licName = $("#licInput").val();
	
	
	var lic = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var licH5 = $('<h5 style="font-size:15px;">'+licName+'</h5>');

	var del = $('<div style="border-bottom:1px solid black; heigt:50px;"> </div>');
		var delBtn = $('<input type="button" class="btn btn-primary" value="삭제" style="height:24px; font-size:13px;" onclick="licOUT(this)">')

	var hide = $('<div style="display:none"></div>');
		var hideInput = $("<input style='display:none' type='hide' name='t_license' value='"+licName+"'>");
	
		
		$(lic).append(licH5);
		$(del).append(delBtn);
		$(hide).append(hideInput);
		
		
	$("#licDIV").append(lic);
	$("#licDelDIV").append(del);
	$("#licHideDIV").append(hideInput);
}

function licOUT(me){
	var index = $(me).parent().index();
	alert(index);
	
	$("#licDIV div").eq(index).remove();
	$("#licDelDIV div").eq(index).remove();
	$("#licHideDIV div").eq(index).remove();
}


function Tc_resist(){
	alert("으아~~")
	var formData = $("#t_resistForm").serializeObject();
	
	$.ajax({
		
		url:"t_Resist.do",
		cache: false,
		type:"POST",
		contentType:"application/json; charset=UTF-8",
		data:JSON.stringify(formData),
		success:function(data){
			alert("들왔어?");
			var form = new FormData(document.getElementById("t_resistForm"));
			$.ajax({
				url:"t_ResistFile.do",
				cache: false,
				data: form,
				dataType: 'text',
				processData: false,
				contentType: false,
				type: 'POST',
				success: function(response){
					alert(response);
				},
				error: function(jqXHR, error){
					alert('error : ' + error);
				}
			});
		},
		error:function(xhr, status, error){
			alert("["+xhr.status+"]" + error);
		}
	});
	
	
}

function profileChange(me){
	
	alert(me.files[0].name);
	
	
	var file = me.files[0];
	
	var reader = new FileReader();
	
	reader.onload = function(e){
		var myphoto = $("#my_prophoto");
		
		myphoto.attr('src', e.target.result);
		
	}
	
	reader.readAsDataURL(file);
	
	
}




function birthCheck(me){
	
	var patt = "/^(19[0-9][0-9]|20\d{2})(0[0-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$/ ";
	
	var birth = $("#tr_birth");
	
	var res = birth.val().match(patt);
	
	if(res==false){
		alert("생년월일!");
	}else{
		alert(birth.val());
		alert(res);
		alert("아니야!")
	}
	
	
}


function phoneCheck(me){
	
	var patt = "/^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i";
	
	var res = me.val().match(patt);
}

function accountCheck(me){
	
	var patt = "/^\d{3}-\d{3,4}-\d{4}$/";
	
	var res = me.val().match(patt);
}

