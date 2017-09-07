<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<script>
    $(function () {
        var saveBtn = $('#user-saveBtn');
        var form = $('#userAdd-fm');

        $(saveBtn).bind('click', function () {
          
            var obj = toObject(form);
            if (!$(form).form('validate')) {
                closeLoading();
                return false;
            }
            console.log(obj);
            $.ajax({
                type: "POST",
                url: '${basePath}manager/user/addUser.do',
                data: obj,
                dataType: "json",
                async: "false",
                success: function (data) {
                    if (data.flag === "success") {
                        layer.msg(data.msg);
                        parent.$('#user-add').window('close');
                        $("#user-grid").datagrid('reload'); // 刷新数据网格
                    }else{
                    	 layer.msg(data.msg);
                    }
                }
            });
        });
    });
    
</script>
<form id="userAdd-fm" method="post" novalidate style="margin-top: 50px;">
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">用户名 :</label> 
		<input name="username"  missingMessage="不能为空"   class="easyui-textbox" required="true" style="width: 180px; height: 26px;">
	    <label style="margin-left: 20px" align="right">昵称 :</label>
		<input name="petName" data-options="required:true,validType:'NAME'"  class="easyui-textbox"  style="width: 180px; height: 26px;">
	</div>
		<div class="fitem" style="margin-top: 20px;">
		<label align="right">电话 :</label> 
		<input name="phone" data-options="required:true,validType:'mobile'" class="easyui-textbox" required="true" style="width: 180px; height: 26px;">
	   <label style="margin-left: 20px" align="right">邮箱 :</label>
		<input name="email" data-options="required:true,validType:'email'" class="easyui-textbox" required="true" style="width: 180px; height: 26px;">
	</div>
		<div class="fitem" style="margin-top: 20px;">
		<label align="right">QQ :</label> 
		<input name="qq" data-options="validType:'QQ'" class="easyui-textbox"  style="width: 180px; height: 26px;">
	   <label style="margin-left: 20px" align="right">公司名称 :</label>
		<input name="companyName" maxlength='100' class="easyui-textbox" data-options="required:true,validType:'blank'" style="width: 180px; height: 26px;">
	</div>
		<div class="fitem" style="margin-top: 20px;">
		<label align="right">公司电话 :</label>
		<input name="companyPhone" class="easyui-textbox" data-options="validType:'_number'"  style="width: 180px; height: 26px;">
	   <label style="margin-left: 20px" align="right">公司地址 :</label>
		<input name="companyAddr" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<!-- <label align="right">推荐码 :</label> 
		<input name="myReferralCode" validtype="length[5,20]" data-options="required:true,validType:'_number'" class="easyui-textbox"  style="width: 180px; height: 26px;"> -->
		<label align="right">姓名 :</label>
		<input name="name" class="easyui-textbox" style="width: 180px; height: 26px;">
		<label style="margin-left: 20px" align="right">手机绑定次数 </label> 
		<input name="bindMobileCount" required="true" class="easyui-numberbox" value="3" precision="0" min = "0" style="width: 180px; height: 26px;">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">出生年月 :</label> 
		<input name="birthday" class="easyui-datebox"  style="width: 180px; height: 26px;">
	   <label style="margin-left: 20px" align="right">性别 :</label>
	   <select name="sex" style="width: 180px; height: 26px;">
	   		<option value="1" selected="selected">男</option>
	   		<option value="0">女</option>
	   </select>
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">住址 :</label> 
		<input name="address" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;">
	 	<label style="margin-left: 20px" align="right">家乡住址:</label>
	 	 <input name="homeTown" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">备注 :</label> 
		<input name="remark"  class="easyui-textbox"  style="width: 180px; height: 26px;">
	</div>
</form>
<p align="center" style="margin-top: 50px;">
	<a id="user-saveBtn" class="easyui-linkbutton"><font size="2">提&nbsp;&nbsp;交</font></a>
</p>