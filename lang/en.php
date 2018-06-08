<?

function lang($str)
{
    $lang = array(

        'main' => 'Main',
        'news' => 'News',
        'video' => 'Videos',
        'gallery' => 'Gallery',
        'read' => 'Read',
        'read_more' => 'Read more',
        'see' => 'See',
        'signup' => 'SignUp',
        'forgot' => 'Forgot password?',
        'enter' => 'Enter',
        'posted' => 'Posted',
        'send' => 'Send',
        'name' => 'Your name',
        'text' => 'Text',
        'captcha' => 'Captcha',
        'comments' => 'Comments',
        'post_comment' => 'Post comment',
        'says' => 'says',
        'login' => 'Login',
        'pswd' => 'Password',
        'again' => 'again',
        'signup' => 'SignUp',
        'email' => 'Email',
        'menu' => 'Menu',
        'all' => 'All',
        'add' => 'Add',
        'photo' => 'photo',
        'title' => 'Title',
        'action' => 'Action',
        'link' => 'Link',
        'author' => 'Author',
        'date' => 'Date',
        'time' => 'Time',
        'text' => 'Text',
        'keywords' => 'Keywords',
        'description' => 'Meta description',
        'code' => 'Code of video (iframe)',
        'status' => 'Status',
        'save' => 'Save',
        'edit' => 'Edit',
        'hello' => 'Hello',
        'exit' => 'Exit'

    );
    
    $str = $lang[$str];
    
    if(in_array($str, $lang)) return $str; else return false;
}




?>