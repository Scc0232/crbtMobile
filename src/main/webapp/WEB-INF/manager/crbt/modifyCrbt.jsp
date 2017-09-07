<%--
  Created by IntelliJ IDEA.
  User: lidongwei
  Date: 16/1/21
  Time: 16:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
$(function(){
	$("user-fm").form('clear');
	$("#userModify-saveBtn").click(function(){
		 $("#user-fm").form('submit', { 
			 url : '${basePath}manager/user/modifyUser.do', 
			 onSubmit : function() {
            loading();
            if (!$('#user-fm').form('validate')) {
                closeLoading();
                return false;
            }
            return true;
        }, success : function(result) {
            closeLoading();
            var result = eval('(' + result + ')');
            console.log(result);
            if (result.flag === 'success') {
            	parent.$('#user-add').window('close');
            	layer.msg(result.msg);
                $("#user-grid").datagrid('reload'); // 刷新数据网格
            } else {
            	layer.msg(result.msg);
            }
        } });
	});
});

</script>

<form id="user-fm" method="post" novalidate style="margin-top: 50px;">
    <div>
        <input id="id" name="id" type="hidden" value="${userMap.id}"/>
	    <input id="password" name="password" type="hidden" value="${userMap.password}"/>
    </div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">用户名 :</label> 
		<input name="username" missingMessage="不能为空" class="easyui-textbox" required="true" style="width: 180px; height: 26px;" value="${userMap.username}">
	  	<label style="margin-left: 20px" align="right">昵称 :</label>
		<input name="petName" data-options="required:true,validType:'NAME'"  class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.petName}">
	</div>
		<div class="fitem" style="margin-top: 20px;">
		<label align="right">电话 :</label> 
		<input name="phone" data-options="required:true,validType:'mobile'" class="easyui-textbox" required="true" style="width: 180px; height: 26px;" value="${userMap.phone}">
	   <label style="margin-left: 20px" align="right">邮箱 :</label>
		<input name="email" data-options="required:true,validType:'email'" class="easyui-textbox" required="true" style="width: 180px; height: 26px;" value="${userMap.email}">
	</div>
		<div class="fitem" style="margin-top: 20px;">
		<label align="right">QQ :</label> 
		<input name="qq" data-options="validType:'QQ'" class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.qq}">
	   <label style="margin-left: 20px" align="right">公司名称 :</label>
		<input name="companyName" maxlength='100' class="easyui-textbox" data-options="required:true,validType:'blank'" style="width: 180px; height: 26px;" value="${userMap.companyName}">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">公司电话 :</label> 
		<input name="companyPhone"  class="easyui-textbox" data-options="validType:'_number'"  style="width: 180px; height: 26px;" value="${userMap.companyPhone}">
	   <label style="margin-left: 20px" align="right">公司地址 :</label>
		<input name="companyAddr" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.companyAddr}">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">姓名 :</label>
		<input name="name" class="easyui-textbox" style="width: 180px; height: 26px;" value="${userMap.name}">
		<label style="margin-left: 20px" align="right">手机绑定次数 </label> 
		<input name="bindMobileCount" required="true" class="easyui-numberbox" value="3" precision="0" min = "0" style="width: 180px; height: 26px;" value="${userMap.bindMobileCount}">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">出生年月 :</label> 
		<input name="birthday" class="easyui-datebox"  style="width: 180px; height: 26px;" value="${userMap.birthday}">
	   <label style="margin-left: 20px" align="right">性别 :</label>
	   <select name="sex" style="width: 180px; height: 26px;">
	   		<option value="1" <c:if test="${userMap.sex==1}">selected="selected"</c:if> >男</option>
	   		<option value="0" <c:if test="${userMap.sex==0}">selected="selected"</c:if> >女</option>
	   </select>
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">住址 :</label> 
		<input name="address" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.address}">
	 	<label style="margin-left: 20px" align="right">家乡住址:</label>
	 	 <input name="homeTown" maxlength='100' class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.homeTown}">
	</div>
	<div class="fitem" style="margin-top: 20px;">
		<label align="right">备注 :</label> 
		<input name="remark"  class="easyui-textbox"  style="width: 180px; height: 26px;" value="${userMap.remark}">
	</div>
</form>
<p align="center">
	<a id="userModify-saveBtn" class="easyui-linkbutton"><font size="2">提&nbsp;&nbsp;交</font></a>
</p>