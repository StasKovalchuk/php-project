<?if(isset($id)){?>
    
<form action="admin.php?view=update&t=users&id=<?=$page_data['id'];?>" method="post" id="add-edit">
    <label><?=lang('login');?></label><input type="text" name="username" value="<?=$page_data['username'];?>" size="16" /><br />
    <label><?=lang('email');?></label><input type="text" name="email" value="<?=$page_data['email'];?>" size="50" /><br />
    <label><?=lang('password');?></label><input type="text" name="password" value="<?=$page_data['password'];?>" size="50" /><br />
    <label><?=lang('status');?></label><select name="status">
        <option><?=$page_data['status'];?></option>
        <option>1</option>
        <option>2</option>
        <option>3</option>
    </select><br />
    <input type="submit" name="save" value="<?=lang('save');?>" class="button" onclick="alert('Данные успешно обновлены!');" />
</form>
    
    
<?}else{?>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="table_headlines">ID</td>
  <td class="table_headlines"><?=lang('login');?></td>
  <td class="table_headlines"><?=lang('email');?></td>
  <td class="table_headlines"><?=lang('status');?></td>
  <td class="table_headlines2" width="60"><?=lang('action');?></td>
 </tr>

<?foreach($users as $user):?>
<tr>
  <td class="articles_type"><?=$user['id'];?></td>
  <td class="articles_topic"><a href="admin.php?view=users&t=<?=$user['id'];?>"><?=$user['username'];?></a></td>
  <td class="articles_comment"><?=$user['email'];?></td>
  <td class="table_headlines"><?=$user['status'];?></td>
  <td class="articles_actions"><a href="admin.php?view=users&t=<?=$user['id'];?>"><img src="images/admin/edit.png" alt=""/></a> <a href="admin.php?view=delete&t=users&id=<?=$user['id'];?>"  onclick="return confirmDel()" ><img src="images/admin/delete.png" alt=""/></a></td>
 </tr>
 <?endforeach;?>
 
</table>

<?}?>