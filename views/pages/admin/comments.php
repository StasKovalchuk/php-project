<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="table_headlines">ID</td>
  <td class="table_headlines"><?=lang('author');?></td>
  <td class="table_headlines"><?=lang('comment');?></td>
  <td class="table_headlines" width="150"><?=lang('date');?> / <?=lang('time');?></td>
  <td class="table_headlines2"><?=lang('action');?></td>
 </tr>

<?foreach($data as $item):?>
<tr>
  <td class="articles_type"><?=$item['id'];?></td>
  <td class="articles_photo"><?=$item['author'];?></td>
  <td class="articles_topic"><?=str_size($item['text'], 20).'...';?></td>
  <td class="articles_comment"><?=$item['date'];?> / <?=$item['time'];?></td>
  <td class="articles_actions"><a href="admin.php?view=delete&t=comments&id=<?=$item['id'];?>" onclick="return confirmDel()" ><img src="images/admin/delete.png" alt=""/></a></td>
 </tr>
 <?endforeach;?> 
 
 
</table>