$(document).ready(function() {
	//ʹ�� Ajax �ķ�ʽ �жϵ�¼  
	$("#btn_login").click(function() {
		if(!check(login)){
			return;
		}
		var url = 'user/checkLogin.action';

		//��ȡ��ֵ������json��������ʽ���浽params��  
		var params = {
			"username" : $("#username").val(),
			"password" : $("#password").val(),
		};
		//ʹ��$.post��ʽ      
		$.post(url, //������Ҫ���ܵ�url                   
		params, //���ݵĲ���                        
		function cbf(data) { //���������غ�ִ�еĺ��� ���� data����ľ��Ƿ��������͵��ͻ��˵�����                    
			var member = eval("(" + data + ")"); //�����ݽ���Ϊjson ��ʽ    
			alert(member.name);
			//alert(member.admin);
			if(member.flag == "true"){
				if(member.admin == "yes"){
				    window.location.href="Admin/index.jsp";//����Ա����
				}
				else{
					window.location.href="User/index.jsp";//��ͨ�û�
				}
				
			}
	
		}, 'json' //���ݴ��ݵ�����  json 
		).fail(function test(jqXHR, textStatus, errorThrown) {
			alert("error");
			alert(textStatus + "\n" + errorThrown);
		});

	});

});