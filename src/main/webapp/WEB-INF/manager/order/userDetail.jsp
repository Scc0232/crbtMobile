<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<table align="center" style="width:850px;margin-top:40px;margin-left:40px;margin-right:30px;" cellpadding="0" cellspacing="0">
	<tr style="height:50px;background-color:#00bfa5;">
			<th colspan="6" style="font-size:20px;color:white;padding-left:20px">用户名</th>
	</tr>
</table>
<table align="center" style="width:850px;margin-left:40px;margin-right:30px;margin-bottom:30px;" border="1px #000 solid"  cellpadding="0" cellspacing="0">
	<tr style="height:50px">
		<th align="center" style="width:15%;">用户名</th>
		<td style="width:17%;">${user.username}</td>
		<th align="center" style="width:15%;">密码</th>
		<td style="width:18%;">${user.password}</td>
		<th align="center" style="width:15%;">姓名</th>
		<td style="width:20%;">${user.name}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">手机唯一key</th>
		<td>${user.mobilePhoneKey}</td>
		<th align="center">手机号</th>
		<td>${user.phone}</td>
		<th align="center">可更换手机绑定次数</th>
		<td>${user.bindMobileCount}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">QQ</th>
		<td>${user.qq}</td>
		<th align="center">微信</th>
		<td>${user.wechat}</td>
		<th align="center">头像</th>
		<td>${user.icon}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">推荐码</th>
		<td>${user.referralCode}</td>
		<th align="center">我的推荐码</th>
		<td>${user.myReferralCode}</td>
		<th align="center">公司名称</th>
		<td>${user.companyName}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">公司电话</th>
		<td>${user.companyPhone}</td>
		<th align="center">公司地址</th>
		<td>${user.job}</td>
		<th align="center">用户类型</th>
		<td>${user.userType}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">创建人</th>
		<td>${user.createPersonId}</td>
		<th align="center">创建时间</th>
		<td><fmt:formatDate value='${user.createTime}' type='both'/></td>
		<th align="center">修改人</th>
		<td>${user.modifyPersonId}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">备注</th>
		<td>${user.remark}</td>
		<th align="center">职位编号</th>
		<td>${user.empno}</td>
		<th align="center">字典ID</th>
		<td>${user.dictId}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">出生年月日</th>
		<td>${user.birthday}</td>
		<th align="center">性别</th>
		<td>
			<c:if test='${user.sex==1}'>男</c:if>
			<c:if test='${user.sex==0}'>女</c:if>
		</td>
		<th align="center">住址</th>
		<td>${user.address}</td>
	</tr>
	<tr style="height:50px">
			<th align="center">家乡地址</th>
			<td>${user.homeTown}</td>
			<th align="center">邮箱</th>
			<td>${user.email}</td>
			<th align="center">令牌</th>
			<td>${user.token}</td>
	</tr>
	<tr style="height:50px">
		<th align="center">公司地址</th>
		<td>${user.companyAddr}</td>
		<th align="center">状态</th>
		<td>${user.isValid}</td>
		<th align="center">修改时间</th>
		<td><fmt:formatDate value='${user.modifyTime}' type='both'/></td>
	</tr>
	<tr style="height:50px">
		<th align="center">授权APP登录</th>
		<td>${user.accredit}</td>
		<th align="center">昵称</th>
		<td colspan="3">${user.petName}</td>
	</tr>
</table>	

