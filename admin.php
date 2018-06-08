<?

include('db_fns.php');
include('reg_fns.php');
include('admin_fns.php');
session_start();

if(!empty($_SESSION['username']) && ($_SESSION['status']) == '3')
{

if(empty($_GET['view'])) $view = 'index';
else $view = $_GET['view'];

if($_SESSION['lang'] == '')
{
    $lang = 'ru';
    $_SESSION['lang'] = $lang;
}
else $lang = $_SESSION['lang']; 

if(isset($_POST['change_lang']))
{
    change_lang($_POST['lang']);
    header("Location: admin.php?view=".$view);
} 

include('lang/'.$lang.'.php');

$data = select_data($view, $lang);

switch($view)
{
    case "index":
        $main_news = get_main_news();
    break; 
    
    case "users":
        $id = $_GET['t'];
        if(isset($id))
        {
           $page_data = get_data_admin($view, $id);
        }
        $users = get_users();
    break;
    
    case "news":
        $id = $_GET['t'];
        if(isset($id) && $id != 'add')
        {
           $page_data = get_data_admin($view, $id);
        }
    break; 
    
    case "video":
        $id = $_GET['t'];
        if(isset($id) && $id != 'add')
        {
           $page_data = get_data_admin($view, $id);
        }
    break;
    
    case "photos":
        $id = $_GET['t'];
    break;
    
    case "insert":
    
        $table = $_GET['t'];
        $count = 0;
        
        foreach($_POST as $ArrKey => $ArrStr)
        {
            $row[$count] = $ArrKey;
            $data[$count] = "'".$_POST[$ArrKey]."'";
            $count++;
        }
        if($table != 'photos')
        {
            $row[$count] = 'title_url';
            $data[$count] = "'".translit($_POST['title'])."'";
        }
        if($table != 'video')
        {
            $img = upload_file($table);
            $row[$count+1] = 'img';
            $data[$count+1] = "'".$img."'";
        } 
        
        unset($row[$count-1]);
        unset($data[$count-1]);
        
        insert_data($table, $row, $data);
        header('Location: admin.php?view='.$table);
    
    break;
    
    
    case "update":
    
        $count = 0;
        $table = $_GET['t'];
        $id = $_GET['id'];
        
        foreach($_POST as $ArrKey => $ArrStr)
        {
            $row[$count] = $ArrKey;
            $data[$count] = $_POST[$ArrKey];
            if($row[$count] == 'title_url') $data[$count] = translit($_POST['title']);
            $count++;
        }
        update_data($table, $id, $row, $data);
        header("Location: admin.php?view=".$table);
        
        
    break;
    
    
    case "delete":
        $table = $_GET['t'];
        $id = $_GET['id'];
        delete_data($table, $id);
        header("Location: admin.php?view=".$table);
    break;
    
    case "exit_cab":
        exit_cab();
        header("Location: index.php");
    break;
    
    
}

$arr = array('index','news','video','comments','photos','users','insert','update','delete');
if(!in_array($view,$arr)) die("ERROR 404!");

include($_SERVER['DOCUMENT_ROOT'].'/views/layouts/admin.php');

}
else
{
    if(isset($_POST['enter']) && !empty($_POST['login']) && !empty($_POST['password']))
    {
        $login = clear_data($_POST['login']);
        $pswd = sha1(md5(clear_data($_POST['password'])));
        if(check_user($login, $pswd))
        {
            $status = get_status($login);
            $_SESSION['username'] = $login;
            $_SESSION['status'] = $status['status'];
            header("Location: admin.php");
        }
        else header("Location: admin.php");
    }
    include($_SERVER['DOCUMENT_ROOT'].'/views/layouts/login.php');
}


?>