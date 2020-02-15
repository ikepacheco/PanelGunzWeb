<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="icon" href="img/demonfas.ico" type="image/ico" />
<% 
	//request.getRequestDispatcher("menu.jsp").forward(request, response);
%>
<jsp:include page="menu.jsp"></jsp:include>
<body>
<!-- 
<table border="1" style="border-collapse: collapse" id="changename">
<tr><td colspan="2"><b><?php echo $_STR[Char0]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;<?php echo $_STR[Char2]; ?>:&nbsp;&nbsp;<input type="text" name="nname" />
    &nbsp;&nbsp;<input type="submit" name="changename" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="deletechar">
<tr><td colspan="2"><b><?php echo $_STR[Char4]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />
    &nbsp;&nbsp;<input type="submit" name="deletechar" value="<?php echo $_STR[Char5]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="deletecitems">
<tr><td colspan="2"><b><?php echo $_STR[Char6]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />
    &nbsp;&nbsp;<input type="submit" name="deletecitems" value="<?php echo $_STR[Char5]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="deleteaitems">
<tr><td colspan="2"><b><?php echo $_STR[Char7]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
        <option value="2">AID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />
    &nbsp;&nbsp;<input type="submit" name="deleteaitems" value="<?php echo $_STR[Char5]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="senditem">
<tr><td colspan="2"><b><?php echo $_STR[Char8]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;ItemID:&nbsp;&nbsp;<input type="text" name="itemid" />
    &nbsp;&nbsp;<input type="submit" name="senditem" value="<?php echo $_STR[Char10]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="deleteitem">
<tr><td colspan="2"><b><?php echo $_STR[Char9]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;ItemID:&nbsp;&nbsp;<input type="text" name="itemid" />
    &nbsp;&nbsp;<input type="submit" name="deleteitem" value="<?php echo $_STR[Char5]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="resetchar">
<tr><td colspan="2"><b><?php echo $_STR[Char11]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />
    &nbsp;&nbsp;<input type="submit" name="resetchar" value="<?php echo $_STR[Char12]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changexp">
<tr><td colspan="2"><b><?php echo $_STR[Char13]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;EXP:&nbsp;&nbsp;<input type="text" name="exp" />
    &nbsp;&nbsp;<input type="submit" name="changexp" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changelvl">
<tr><td colspan="2"><b><?php echo $_STR[Char14]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;LvL:&nbsp;&nbsp;<input type="text" name="lvl" />
    &nbsp;&nbsp;<input type="submit" name="changelvl" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changebounty">
<tr><td colspan="2"><b><?php echo $_STR[Char15]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;Bounty:&nbsp;&nbsp;<input type="text" name="bounty" />
    &nbsp;&nbsp;<input type="submit" name="changebounty" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changesex">
<tr><td colspan="2"><b><?php echo $_STR[Char16]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;
    <select name="sex">
        <option value="0"><?php echo $_STR[Char17]; ?></option>
        <option value="1"><?php echo $_STR[Char18]; ?></option>
    </select>
    &nbsp;&nbsp;<input type="submit" name="changesex" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changehair">
<tr><td colspan="2"><b><?php echo $_STR[Char19]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;<?php echo $_STR[Char20]; ?>
    <select name="hair">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
    </select>
    &nbsp;&nbsp;<input type="submit" name="changehair" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br />
<table border="1" style="border-collapse: collapse" id="changeface">
<tr><td colspan="2"><b><?php echo $_STR[Char21]; ?></b></td></tr>
<tr><td colspan="2">&nbsp;</td></tr>
<form method="post" action="index.php?do=characters">
<tr>
    <td>
    <select name="type">
        <option value="0"><?php echo $_STR[Char1]; ?></option>
        <option value="1">CID</option>
    </select>:&nbsp;&nbsp;<input type="text" name="id" />&nbsp;&nbsp;<?php echo $_STR[Char22]; ?>
    <select name="face">
        <option value="0">0</option>
        <option value="1">1</option>
        <option value="2">2</option>
        <option value="3">3</option>
    </select>
    &nbsp;&nbsp;<input type="submit" name="changeface" value="<?php echo $_STR[Char3]; ?>" />
    </td>
</tr>
<tr><td colspan="2">&nbsp;</td></tr>
</form>
</table>
<br /><br />
-->

</body>
</html>