<script>
	$(function() {
		$( "#datepicker" ).datepicker({
			showOn: "button",
			buttonImage: "images/calendar.png",
			buttonImageOnly: true
		});
        
        $('#timepicker').timepicker();
	});
</script>
<?if(isset($id) && $id != 'add'){?>

<div class="add-title"><?=lang('edit');?> <?=lang('news');?> - "<?=$page_data['title'];?>" </div>
<form action="admin.php?view=update&t=news&id=<?=$page_data['id'];?>" method="post" id="add-edit">
    <label for="title"><?=lang('title');?></label><input type="text" name="title" value="<?=$page_data['title'];?>" size="60" /><br />
    <label><?=lang('text');?></label><textarea name="text" cols="55" rows="11"><?=$page_data['text'];?></textarea><br />
    <label><?=lang('keywords');?></label><textarea name="keywords" cols="44" rows="5"><?=$page_data['keywords'];?></textarea><br />
    <label><?=lang('description');?></label><textarea name="description" cols="44" rows="5"><?=$page_data['description'];?></textarea><br />
    <label><?=lang('date');?></label><input type="text" readonly="readonly" name="date" id="datepicker" value="<?=$page_data['date'];?>" size="10" />
    <label><?=lang('time');?></label><input type="text" readonly="readonly" name="time" id="timepicker" value="<?=$page_data['time'];?>" size="10" /><br />
    <input type="hidden" name="title_url" value="<?=$page_data['title_url'];?>"/>
    <input type="submit" name="save" value="<?=lang('save');?>" class="button" onclick="alert('Данные успешно обновленны');" />
</form>
<?}if($id == 'add'){?>

<div class="add-title"><?=lang('add');?> <?=lang('news');?></div>
<form action="admin.php?view=insert&t=news" method="post" enctype="multipart/form-data" id="add-edit" >
    <label><?=lang('title');?></label><input type="text" name="title" value="" size="60" /><br />
    <label><?=lang('text');?></label><textarea name="text" cols="55" rows="11"></textarea><br />
    <label><?=lang('keywords');?></label><textarea name="keywords" cols="44" rows="5"></textarea><br />
    <label><?=lang('description');?></label><textarea name="description" cols="44" rows="5"></textarea><br />
    <input type="file" name="filename" /><br /><br />
    <label><?=lang('date');?></label><input type="text" readonly="readonly" name="date" id="datepicker" value="<?=date('Y-m-d');?>" size="10" />
    <label><?=lang('time');?></label><input type="text" readonly="readonly" name="time" id="timepicker" value="<?=date('H:i');?>" size="10" /><br />
    <input type="hidden" name="lang" value="<?=$_SESSION['lang'];?>"/>
    <input type="submit" name="add" class="button" value="<?=lang('add');?>"  onclick="alert('Новость успешно добавлена!');" />
</form>

<?}if(!isset($id)){?>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="table_headlines">ID</td>
  <td class="table_headlines"><?=lang('photo');?></td>
  <td class="table_headlines"><?=lang('title');?></td>
  <td class="table_headlines"><?=lang('link');?></td>
  <td class="table_headlines2" width="60"><?=lang('action');?></td>
 </tr>

<?foreach($data as $item):?>
<tr>
  <td class="articles_type"><?=$item['id'];?></td>
  <td class="articles_photo"><a href="admin.php?view=news&t=<?=$item['id'];?>"><img src="userfiles/news/<?=$item['img'];?>" alt="" width="50" /></a></td>
  <td class="articles_topic"><a href="admin.php?view=news&t=<?=$item['id'];?>"><?=$item['title'];?></a></td>
  <td class="articles_comment"><a href="index.php?view=news&t=<?=$item['title_url'];?>" target="_blank">ссылка</a></td>
  <td class="articles_actions"><a href="admin.php?view=news&t=<?=$item['id'];?>"><img src="images/admin/edit.png" alt=""/></a> <a href="admin.php?view=delete&t=news&id=<?=$item['id'];?>" onclick="return confirmDel()" ><img src="images/admin/delete.png" alt=""/></a></td>
 </tr>
 <?endforeach;?>
 
</table>
<?}?>
<script type="text/javascript">
    CKEDITOR.replace('text');
</script>