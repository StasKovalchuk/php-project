<table width="100%" border="0" cellspacing="0" cellpadding="0">
 <tr>
  <td class="table_headlines">ID</td>
  <td class="table_headlines"><?=lang('photo');?></td>
  <td class="table_headlines"><?=lang('title');?></td>
  <td class="table_headlines"><?=lang('link');?></td>
  <td class="table_headlines2" width="60"><?=lang('action');?></td>
 </tr>

<?foreach($main_news as $item):?>
<tr>
  <td class="articles_type"><?=$item['id'];?></td>
  <td class="articles_photo"><a href="admin.php?view=news&t=<?=$item['id'];?>"><img src="userfiles/news/<?=$item['img'];?>" alt="" width="50" /></a></td>
  <td class="articles_topic"><a href="admin.php?view=news&t=<?=$item['id'];?>"><?=$item['title'];?></a></td>
  <td class="articles_comment"><a href="index.php?view=news&t=<?=$item['title_url'];?>" target="_blank">ссылка</a></td>
  <td class="articles_actions"><a href="admin.php?view=news&t=<?=$item['id'];?>"><img src="images/admin/edit.png" alt=""/></a> <a href="admin.php?view=delete&t=news&id=<?=$item['id'];?>"  onclick="return confirmDel()" ><img src="images/admin/delete.png" alt=""/></a></td>
 </tr>
<?endforeach;?>
 
</table>