

<tr>
<th>비밀번호</th>
<td><input type="password" name="cust_pw" readonly></td>
</tr>
<tr>
<th>&nbsp;이름&nbsp;</th>
<td><input type="text" name="cust_name"></td>
</tr>
<tr>
<th>전화번호</th>
<td><select name="tel_no_region" >
		<option selected value="">서비스 구분</option>
		<option  value="010">010</option>
		<option  value="011">011</option>
		<option  value="016">016</option>
		<option  value="017">017</option>
		<option  value="018">018</option>
		<option  value="019">019</option>
	</select>
	-<input type="text" name="tel_num1" maxlength="4" readonly>
	-<input type="text" name="tel_num2" maxlength="4" readonly>
	</td>
<tr>
<th>&nbsp;주소&nbsp;</th>
<td><input type="text" name="cust_addr"></td>
</tr>
<tr>
<th>&nbsp;성별&nbsp;</th>
<td><input type="radio" name="cust_gender" value="M" >남자&nbsp;
	<input type="radio" name="cust_gender" value="F" >여자&nbsp;
</td>
</tr>
<tr>
<th>&nbsp;이메일&nbsp;</th>
<td><input type="text" name="cust_email_1" readonly>
	@<input type="text" name="cust_email_2" readonly>
</td>
</tr>