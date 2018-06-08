<?if($id == 'add'){?>
    
<div class="add-title"><?=lang('add');?> <?=lang('photo');?></div>
<form action="admin.php?view=insert&t=photos" method="post" enctype="multipart/form-data" id="add-edit">
    <label for="title"><?=lang('title');?></label><input type="text" name="title" value="" size="60" /><br />
    <input type="file" name="filename" value="" size="60" /><br />
    <input type="hidden" name="date" value="<?=date('Y-m-d');?>" size="10" />
    <input type="hidden" name="time" value="<?=date('H:i:s');?>" size="10" /><br />
    <input type="hidden" name="lang" value="<?=$_SESSION['lang'];?>"/>
    <input type="submit" name="add" value="Добавить" class="button" onclick="alert('Фото успешно добавлено!');" />
</form>
    
<?}else{?>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="table_headlines">ID</td>
  <td class="table_headlines"><?=lang('photo');?></td>
  <td class="table_headlines"><?=lang('title');?></td>
  <td class="table_headlines2"><?=lang('action');?></td>
 </tr>

<?foreach($data as $item):?>
<tr>
  <td class="articles_type"><?=$item['id'];?></td>
  <td class="articles_photo"><a href="#"><img src="userfiles/photos/<?=$item['img'];?>" alt="" width="50" /></a></td>
  <td class="articles_topic"><a href="#"><?=$item['title'];?></a></td>
  <td class="articles_actions"><a href="admin.php?view=delete&t=photos&id=<?=$item['id'];?>" onclick="return confirmDel()" ><img src="images/admin/delete.png" alt=""/></a></td>
 </tr>
 <?endforeach;?>
 
</table>
<?}?>