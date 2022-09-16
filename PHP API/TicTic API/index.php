<?php
	
		
	if(isset($_GET["p"]))
	{
		if($_GET["p"]=="uploadVideo")
		{
			uploadvideo();
		}
		else
		if($_GET["p"]=="gifupload")
		{
			gifupload();
		}
		
		else
		if($_GET["p"]=="signup")
		{
			signup();
		}
		else
		if($_GET["p"]=="showAllVideos")
		{
			showAllVideos();
		}
		else
		if($_GET["p"]=="showMyAllVideos")
		{
			showMyAllVideos();
		}
		else
		if($_GET["p"]=="likeDislikeVideo")
		{
			likeDislikeVideo();
		}
		else
		if($_GET["p"]=="postComment")
		{
			postComment();
		}
		else
		if($_GET["p"]=="showVideoComments")
		{
			showVideoComments();
		}
		else
		if($_GET["p"]=="updateVideoView")
		{
			updateVideoView();
		}
		else
		if($_GET["p"]=="allSounds")
		{
			allSounds();
		}
		else
		if($_GET["p"]=="fav_sound")
		{
			fav_sound();
		}
		else
		if($_GET["p"]=="my_FavSound")
		{
			my_FavSound();
		}
		else
		if($_GET["p"]=="my_liked_video")
		{
			my_liked_video();
		}
		else
		if($_GET["p"]=="discover")
		{
			discover();
		}
		else
		if($_GET["p"]=="edit_profile")
		{
			edit_profile();
		}
		else
		if($_GET["p"]=="follow_users")
		{
			follow_users();
		}
		else
		if($_GET["p"]=="get_user_data")
		{
			get_user_data();
		}
		
		
		
		
		
		//admin panel functions
		else
		if($_GET["p"]=="Admin_Login")
		{
			Admin_Login();
		}
		else
		if($_GET["p"]=="All_Users")
		{
			All_Users();
		}
		else
		if($_GET["p"]=="admin_all_sounds")
		{
			admin_all_sounds();
		}
		else
		if($_GET["p"]=="admin_uploadSound")
		{
			admin_uploadSound();
		}
		else
		if($_GET["p"]=="admin_getSoundSection")
		{
			admin_getSoundSection();
		}
		else
		if($_GET["p"]=="admin_show_allVideos")
		{
			admin_show_allVideos();
		}
		
		
		
		if($_GET["p"]=="All_ReportedUsers")
		{
			All_ReportedUsers();
		}
		else
		if($_GET["p"]=="Update_From_Firebase")
		{
			Update_From_Firebase();
		}
		else
		if($_GET["p"]=="All_Matched_Profile")
		{
			All_Matched_Profile();
		}
	    else
		if($_GET["p"]=="changePassword")
		{
			changePassword();
		}
		else
		if($_GET["p"]=="getProfilePictures")
		{
			getProfilePictures();
		}
		else
		if($_GET["p"]=="getProfilelikes")
		{
			getProfilelikes();
		}
		else
		if($_GET["p"]=="getmatchedprofiles")
		{
			getmatchedprofiles();
		}
		else
		if($_GET["p"]=="get_profiles_nameByID")
		{
			get_profiles_nameByID();
		}
		else
		if($_GET["p"]=="banned_user")
		{
			banned_user();
		}
		else
		if($_GET["p"]=="under_review_new_uploaded_pictures")
		{
			under_review_new_uploaded_pictures();
		}
		else
		if($_GET["p"]=="underReviewPictureStatusChange")
		{
			underReviewPictureStatusChange();
		}
	    	
	
	
	}
	else
	{
		echo"Not Found";

	}
	
	
	function signup()
	{
		require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		
		if(isset($event_json['fb_id']) && isset($event_json['first_name']) && isset($event_json['last_name']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$first_name=htmlspecialchars(strip_tags($event_json['first_name'] , ENT_QUOTES));
			$last_name=htmlspecialchars(strip_tags($event_json['last_name'] , ENT_QUOTES));
			$gender=htmlspecialchars(strip_tags($event_json['gender'] , ENT_QUOTES));
			$profile_pic=htmlspecialchars_decode(stripslashes($event_json['profile_pic']));
			$version=htmlspecialchars_decode(stripslashes($event_json['version']));
			$device=htmlspecialchars_decode(stripslashes($event_json['device']));
			$signup_type=htmlspecialchars_decode(stripslashes($event_json['signup_type']));
		    $username=$first_name.rand();
		    
			$log_in="select * from users where fb_id='".$fb_id."' ";
			$log_in_rs=mysqli_query($conn,$log_in);
			
			if(mysqli_num_rows($log_in_rs))
			{   
			    $rd=mysqli_fetch_object($log_in_rs);  
			     
				$array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
						"fb_id" => $rd->fb_id,
						"action" => "login",
						"profile_pic" => $rd->profile_pic,
						"first_name" => $rd->first_name,
						"last_name" => $rd->last_name,
						"username" => $rd->username,
						"bio" => $rd->bio,
						"gender" => $rd->gender
					);
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}	
			else
			{
			    
			    $qrry_1="insert into users(fb_id,username,first_name,last_name,profile_pic,version,device,signup_type,gender)values(";
    			$qrry_1.="'".$fb_id."',";
    			$qrry_1.="'".$username."',";
    			$qrry_1.="'".$first_name."',";
    			$qrry_1.="'".$last_name."',";
    			$qrry_1.="'".$profile_pic."',";
    			$qrry_1.="'".$version."',";
    			$qrry_1.="'".$device."',";
    			$qrry_1.="'".$signup_type."',";
    			$qrry_1.="'".$gender."'";
    			$qrry_1.=")";
    			if(mysqli_query($conn,$qrry_1))
    			{
				     $last_insert_fb_id = mysqli_insert_id($conn);
				     
				     $array_out = array();
    				 $array_out[] = 
    					//array("code" => "200");
    					array(
    						"fb_id" => $fb_id,
    						"username" => $username,
    						"action" => "signup",
    						"profile_pic" => $profile_pic,
    						"username" => $username,
    						"first_name" => $first_name,
    						"last_name" => $last_name,
    						"signup_type" => $signup_type,
    						"gender" => $gender
    					);
    				
    				$output=array( "code" => "200", "msg" => $array_out);
    				print_r(json_encode($output, true));
    			}
    			else
    			{
    			    //echo mysqli_error();
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"problem in signup");
            		
            		$output=array( "code" => "201", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	function gifupload()
	{
	            //giffimage
	            
				require_once("config.php");
        		$input = file_get_contents("php://input");
        	    $event_json = json_decode($input,true);
        	   
        	    //print_r($event_json);
        	    $gif1 = $event_json['giffimage']['file_data'];
        	    
        	    
        	    $event_json['giffimage'];
        	    //print_r($event_json['fb_id']);
        	    
        	    $gif = base64_decode($gif1);
			    
			    
			      $fileName="hamza".rand();
			 
			
		    	file_put_contents("upload/gif/".$fileName.".gif", $gif);
			    
			


	}
	
	function uploadVideo()
	{
	    require_once("config.php");
		$input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		
		if(isset($event_json['fb_id']) && isset($event_json['picbase64'])  && isset($event_json['videobase64']))
		{   
		    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
		    $sound_id=htmlspecialchars(strip_tags($event_json['sound_id'] , ENT_QUOTES));
		    $thum = $event_json['picbase64']['file_data'];
		    $video = $event_json['videobase64']['file_data'];
		    $gif = $event_json['gifbase64']['file_data'];
            
            $fileName=rand()."_".rand();
			$video_url="upload/video/".$fileName.".mp4";
			$thum_url="upload/thum/".$fileName.".jpg";
			$gif_url="upload/gif/".$fileName.".gif";
			
			/*list($type, $data) = explode(',', $data);
			list(, $data)      = explode(',', $data);*/
			$thum = base64_decode($thum);
			
			file_put_contents("upload/thum/".$fileName.".jpg", $thum);
			
			/*picture resize*/
				// File and new size
				$filename = 'upload/thum/'.$fileName.'.jpg';
				$newfilename='upload/thum/'.$fileName.'.jpg';
				$percent = 0.4;
				
				// Get new sizes
				list($width, $height) = getimagesize($filename);
				$newwidth = $width * $percent;
				$newheight = $height * $percent;
				// Load
				$thumb = imagecreatetruecolor($newwidth, $newheight);
				$source = imagecreatefromjpeg($filename);
				// Resize
				$res=imagecopyresized($thumb, $source, 0, 0, 0, 0, $newwidth, $newheight, $width, $height);
				// Output
				imagejpeg($thumb,$newfilename);
			/*picture resize*/
			
			
			$video = base64_decode($video);
			
			file_put_contents("upload/video/".$fileName.".mp4", $video);
			
			/*video upload*/
				// File and new size
				$filename = 'upload/video/'.$fileName.'.mp4';
				$newfilename='upload/video/'.$fileName.'.mp4';
				$percent = 0.2;
				// Get new sizes
				list($width, $height) = getimagesize($filename);
				$newwidth = $width * $percent;
				$newheight = $height * $percent;
				// Load
				$thumb = imagecreatetruecolor($newwidth, $newheight);
				$source = imagecreatefromjpeg($filename);
				// Resize
				$res=imagecopyresized($thumb, $source, 0, 0, 0, 0, $newwidth, $newheight, $width, $height);
				// Output
				imagejpeg($thumb,$newfilename);
				
			/*video upload*/
			
			
			$gif = base64_decode($gif);
			
			$filename = 'upload/gif/'.$fileName.'.mp4';
			
			file_put_contents("upload/gif/".$fileName.".gif", $gif);
			
		
			
			$qrry_1="insert into videos(video,sound_id,fb_id,gif,thum)values(";
			$qrry_1.="'".$video_url."',";
			$qrry_1.="'".$sound_id."',";
			$qrry_1.="'".$fb_id."',";
			$qrry_1.="'".$gif_url."',";
			$qrry_1.="'".$thum_url."'";
			$qrry_1.=")";
			if(mysqli_query($conn,$qrry_1))
			{
			   $array_out = array();
    			$array_out[] = 
    				array(
    					"response" => "file uploaded"
    				);
    			
    			$output=array( "code" => "200", "msg" => $array_out);
    			print_r(json_encode($output, true)); 
			}
			else
			{
			    $array_out = array();
    			$array_out[] = 
    				array(
    					"response" => "error in uploading files"
    				);
    			
    			$output=array( "code" => "201", "msg" => $array_out);
    			print_r(json_encode($output, true)); 
			}
			
			
			
			
		}
		else
		{
			$array_out = array();
			$array_out[] = 
				array(
					"response" => "json parem missing"
				);
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	
	}
	
	function showAllVideos()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		if(isset($event_json['fb_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$token=htmlspecialchars(strip_tags($event_json['token'] , ENT_QUOTES));
			
			@mysqli_query($conn,"update users set tokon='".$token."' where fb_id='".$fb_id."' ");
			
			$query=mysqli_query($conn,"select * from videos order by id DESC");
		        
    		$array_out = array();
    		while($row=mysqli_fetch_array($query))
    		{
    		    
    		    $query1=mysqli_query($conn,"select * from users where fb_id='".$row['fb_id']."' ");
		        $rd=mysqli_fetch_object($query1);
		       
		        $query112=mysqli_query($conn,"select * from sound where id='".$row['sound_id']."' ");
		        $rd12=mysqli_fetch_object($query112);
		        
		        $countLikes = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' ");
                $countLikes_count=mysqli_fetch_assoc($countLikes);
		        
		        $countcomment = mysqli_query($conn,"SELECT count(*) as count from video_comment where video_id='".$row['id']."' ");
                $countcomment_count=mysqli_fetch_assoc($countcomment);
                
                
                $liked = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' and fb_id='".$fb_id."' ");
                $liked_count=mysqli_fetch_assoc($liked);
		        
        	   	$array_out[] = 
        			array(
        			"id" => $row['id'],
        			"fb_id" => $row['fb_id'],
        			"user_info" =>array
            					(
            					    "first_name" => $rd->first_name,
                        			"last_name" => $rd->last_name,
                        			"profile_pic" => $rd->profile_pic
            					),
            		"count" =>array
            					(
            					    "like_count" => $countLikes_count['count'],
                        			"video_comment_count" => $countcomment_count['count']
            					),
            		"liked"=> $liked_count['count'],			
            	    "video" => $row['video'],
        			"thum" => $row['thum'],
        			"gif" => $row['gif'],
        			"sound" =>array
            					(
            					    "id" => $rd12->id,
            					    "audio_path" => 
                            			array(
                                			"mp3" => $API_path."/upload/audio/".$rd12->id.".mp3",
                    			            "acc" => $API_path."/upload/audio/".$rd12->id.".aac"
                                		),
                        			"sound_name" => $rd12->sound_name,
                        			"description" => $rd12->description,
                        			"thum" => $rd12->thum,
                        			"section" => $rd12->section,
                        			"created" => $rd12->created,
            					),
        			"created" => $row['created']
        		);
    			
    		}
    		$output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	function showMyAllVideos()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		if(isset($event_json['fb_id']) && isset($event_json['my_fb_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$my_fb_id=htmlspecialchars(strip_tags($event_json['my_fb_id'] , ENT_QUOTES));
			
		    $query1=mysqli_query($conn,"select * from users where fb_id='".$fb_id."' ");
		    $rd=mysqli_fetch_object($query1);
		    if(mysqli_num_rows($query1))
		    {
		        
		        $query=mysqli_query($conn,"select * from videos where fb_id='".$fb_id."' order by id DESC");
		        
		        $array_out_video = array();
        		while($row=mysqli_fetch_array($query))
        		{
        		  
        		   $countLikes = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' ");
                   $countLikes_count=mysqli_fetch_assoc($countLikes);
    		       
    		       $query112=mysqli_query($conn,"select * from sound where id='".$row['sound_id']."' ");
		           $rd12=mysqli_fetch_object($query112);
		        
    		       $countcomment = mysqli_query($conn,"SELECT count(*) as count from video_comment where video_id='".$row['id']."' ");
                   $countcomment_count=mysqli_fetch_assoc($countcomment);
                   
                   $liked = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' and fb_id='".$fb_id."' ");
                   $liked_count=mysqli_fetch_assoc($liked);
                
        		   $array_out_video[] = 
            			array(
            			"id" => $row['id'],
            			"video" => $row['video'],
            			"thum" => $row['thum'],
            			"gif" => $row['gif']."?time=".rand(),
            			"liked" => $liked_count['count'],
            			"count" =>array
            					(
            					    "like_count" => $countLikes_count['count'],
                        			"video_comment_count" => $countcomment_count['count'],
                        			"view" => $row['view'],
            					),
    					"sound" =>array
            					(
            					    "id" => $rd12->id,
            					    "audio_path" => 
                            			array(
                                			"mp3" => $API_path."/upload/audio/".$rd12->id.".mp3",
                    			            "acc" => $API_path."/upload/audio/".$rd12->id.".aac"
                                		),
                        			"sound_name" => $rd12->sound_name,
                        			"description" => $rd12->description,
                        			"thum" => $rd12->thum,
                        			"section" => $rd12->section,
                        			"created" => $rd12->created,
            					),
            			"created" => $row['created']
            		);
        			
        		}
		        
		        $count_video_rows=count($array_out_video);
		        if($count_video_rows=="0")
		        {
		            $array_out_video=array(0);
		        }
		        
		        
                $query2=mysqli_query($conn,"SELECT count(*) as count from follow_users where fb_id='".$my_fb_id."' and followed_fb_id='".$fb_id."' ");
		        $follow_count=mysqli_fetch_assoc($query2);
                
                if($follow_count['count']=="0")
                {
                    $follow="0";
                    $follow_button_status="Follow";
                }
                else
                if($follow_count['count']!="0")
                {
                    $follow="1";
                    $follow_button_status="Follow Back";
                }
                
                
		        $array_out = array();
		        $array_out[] = 
        			array(
        			"fb_id" => $fb_id,
        			"user_info" =>array
            					(
            					    "first_name" => $rd->first_name,
                        			"last_name" => $rd->last_name,
                        			"profile_pic" => $rd->profile_pic,
                        			"gender" => $rd->gender,
        	                		"created" => $rd->created,
            					),
        			"follow_Status" =>array
            					(
            					    "follow" => $follow,
                        			"follow_status_button" => $follow_button_status
            					),
        			"total_heart" => "100",
        			"total_fans" => "88",
        			"total_following" => "55",
        			"user_videos" => $array_out_video
            	    
        		);
		        
		      
		    } 
		    
		    $output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	function updateVideoView()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		if(isset($event_json['id']))
		{
			$id=htmlspecialchars(strip_tags($event_json['id'] , ENT_QUOTES));
		       
		    mysqli_query($conn,"update videos SET view =view+1 WHERE id ='".$id."' ");
    		
    		$array_out[] = 
				array(
				"response" =>"success");
				
		    $output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			$array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	
	
	
	function likeDislikeVideo()
	{
	    require_once("config.php");
		$input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		
		if(isset($event_json['fb_id']) && isset($event_json['video_id']) )
		{   
		    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
		    $video_id=htmlspecialchars(strip_tags($event_json['video_id'] , ENT_QUOTES));
		    $action=htmlspecialchars(strip_tags($event_json['action'] , ENT_QUOTES));
		   
		    if($action=="0")
		    {
		        mysqli_query($conn,"Delete from video_like_dislike where video_id ='".$video_id."' ");
	    
        	    $array_out = array();
        					
        			 $array_out[] = 
        				array(
        				"response" =>"video unlike");
        	        
            	$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
		    }
		    else
		    {
		        $qrry_1="insert into video_like_dislike(video_id,fb_id,action)values(";
    			$qrry_1.="'".$video_id."',";
    			$qrry_1.="'".$fb_id."',";
    			$qrry_1.="'".$action."'";
    			$qrry_1.=")";
    			if(mysqli_query($conn,$qrry_1))
    			{
    			   $array_out = array();
        			$array_out[] = 
        				array(
        					"response" => "actions success"
        				);
        			
        			$output=array( "code" => "200", "msg" => $array_out);
        			print_r(json_encode($output, true)); 
    			}
    			else
    			{
    			    $array_out = array();
        			$array_out[] = 
        				array(
        					"response" => "error in uploading files"
        				);
        			
        			$output=array( "code" => "201", "msg" => $array_out);
        			print_r(json_encode($output, true)); 
    			}
		    }
		   	
			
		}
		else
		{
			$array_out = array();
			$array_out[] = 
				array(
					"response" => "json parem missing"
				);
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
    function postComment()
    {
        
        require_once("config.php");
		$input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		if(isset($event_json['fb_id']) && isset($event_json['video_id']) )
		{   
		    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
		    $video_id=htmlspecialchars(strip_tags($event_json['video_id'] , ENT_QUOTES));
		    $comment=htmlspecialchars(strip_tags($event_json['comment'] , ENT_QUOTES));
		    
		    $query1=mysqli_query($conn,"select * from users where fb_id='".$fb_id."' ");
		    $rd=mysqli_fetch_object($query1);
		        
    	    $qrry_1="insert into video_comment(video_id,fb_id,comments)values(";
			$qrry_1.="'".$video_id."',";
			$qrry_1.="'".$fb_id."',";
			$qrry_1.="'".$comment."'";
			$qrry_1.=")";
			if(mysqli_query($conn,$qrry_1))
			{
			   $array_out = array();
    			$array_out[] = 
    				array(
    					"fb_id" => $fb_id,
    					"video_id" => $video_id,
    					"comments" => $comment,
    					"user_info" =>array
            					(
            					    "first_name" => $rd->first_name,
                        			"last_name" => $rd->last_name,
                        			"profile_pic" => $rd->profile_pic
            					),
    				);
    			
    			$output=array( "code" => "200", "msg" => $array_out);
    			print_r(json_encode($output, true)); 
			}
			else
			{
			    $array_out = array();
    			$array_out[] = 
    				array(
    					"response" => "error"
    				);
    			
    			$output=array( "code" => "201", "msg" => $array_out);
    			print_r(json_encode($output, true)); 
			}
			
		}
		else
		{
			$array_out = array();
			$array_out[] = 
				array(
					"response" => "json parem missing"
				);
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
		
    }
    
    function showVideoComments()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		if(isset($event_json['video_id']))
		{
			$video_id=htmlspecialchars(strip_tags($event_json['video_id'] , ENT_QUOTES));
			
			$query=mysqli_query($conn,"select * from video_comment where video_id='".$video_id."' order by id DESC");
		        
    		$array_out = array();
    		while($row=mysqli_fetch_array($query))
    		{
    		  
    		   $query1=mysqli_query($conn,"select * from users where fb_id='".$row['fb_id']."' ");
		       $rd=mysqli_fetch_object($query1);
		        
    		   $array_out[] = 
        			array(
        			"video_id" => $row['video_id'],
        			"fb_id" => $row['fb_id'],
        			"user_info" =>array
            					(
            					    "first_name" => $rd->first_name,
                        			"last_name" => $rd->last_name,
                        			"profile_pic" => $rd->profile_pic
            					),
            	    
        			"comments" => $row['comments'],
        			"created" => $row['created']
        		);
    			
    		}
    		$output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	function allSounds()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		$query=mysqli_query($conn,"select DISTINCT section from sound ");
	        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		  
		   //echo $row['section'];
		   //echo "select * from sound where section ='".$row['section']."' ";
		   
		   $query1=mysqli_query($conn,"select * from sound where section ='".$row['section']."' ");
		   $array_out1 = array();
		   while($row1=mysqli_fetch_array($query1))
		   {
		        $array_out1[] = 
        			array(
            			"id" => $row1['id'],
            			
            			"audio_path" => 
                    			array(
                        			"mp3" => $API_path."/upload/audio/".$row1['id'].".mp3",
            			            "acc" => $API_path."/upload/audio/".$row1['id'].".aac"
                        		),
            			"sound_name" => $row1['sound_name'],
            			"description" => $row1['description'],
            			"section" => $row1['section'],
            			"thum" => $row1['thum'],
            			"created" => $row1['created']
            		);
		    }
		    
		    $array_out2[] = 
    			array(
    			"section_name" => $row['section'],
    			"sections_sounds" => $array_out1
    			
    		);
		   
			
		}
		$output=array( "code" => "200", "msg" => $array_out2);
		print_r(json_encode($output, true));
		
	}
	
	
	function fav_sound()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		
		if(isset($event_json['fb_id']) && isset($event_json['sound_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$sound_id=htmlspecialchars(strip_tags($event_json['sound_id'] , ENT_QUOTES));
			
			$qrry_1="insert into fav_sound(fb_id,sound_id)values(";
			$qrry_1.="'".$fb_id."',";
			$qrry_1.="'".$sound_id."'";
			$qrry_1.=")";
			if(mysqli_query($conn,$qrry_1))
			{
			 
			
				 $array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
        			"response" =>"successful");
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}
			else
			{
			    //echo mysqli_error();
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	function my_FavSound()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	    
	    if(isset($event_json['fb_id']))
		{
		    
		   $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
		    
    	   $query1=mysqli_query($conn,"select * from fav_sound where fb_id ='".$fb_id."' ");
		   $array_out1 = array();
		   while($row1=mysqli_fetch_array($query1))
		   {
		        
		        $qrry="select * from sound WHERE id ='".$row1['sound_id']."' ";
    			$log_in_rs=mysqli_query($conn,$qrry);
    			
    		    $rd=mysqli_fetch_object($log_in_rs);
    			    
    			$array_out1[] = 
        			array(
            			"id" => $row1['id'],
            			
            			"audio_path" => 
                    			array(
                        			"mp3" => $API_path."/upload/audio/".$row1['sound_id'].".mp3",
            			            "acc" => $API_path."/upload/audio/".$row1['sound_id'].".aac"
                        		),
            			"sound_name" => $rd->sound_name,
            			"description" => $rd->description,
            			"section" => $rd->section,
            			"thum" => $rd->thum,
            			"created" => $rd->created,
            		);
		    }
		    
		    $output=array( "code" => "200", "msg" => $array_out1);
			print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
		
	}
	
	
	
	function my_liked_video()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		if(isset($event_json['fb_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			
		    $query1=mysqli_query($conn,"select * from users where fb_id='".$fb_id."' ");
		    $rd=mysqli_fetch_object($query1);
		    if(mysqli_num_rows($query1))
		    {
		        
		        $query=mysqli_query($conn,"select * from video_like_dislike where fb_id='".$fb_id."' order by id DESC");
		        
		        $array_out_video = array();
        		while($row=mysqli_fetch_array($query))
        		{
        		   
        		   $query11=mysqli_query($conn,"select * from videos where id='".$row['id']."' ");
		           $rdd=mysqli_fetch_object($query11);
		            
		           $query112=mysqli_query($conn,"select * from sound where id='".$rdd->sound_id."' ");
		           $rd12=mysqli_fetch_object($query112);
		        
        		   $countLikes = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' ");
                   $countLikes_count=mysqli_fetch_assoc($countLikes);
    		        
    		       $countcomment = mysqli_query($conn,"SELECT count(*) as count from video_comment where video_id='".$row['id']."' ");
                   $countcomment_count=mysqli_fetch_assoc($countcomment);
                   
                   $liked = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' and fb_id='".$fb_id."' ");
                   $liked_count=mysqli_fetch_assoc($liked);
                
        		   $array_out_video[] = 
            			array(
            			"id" => $row['id'],
            			"video" => $rdd->video,
            			"thum" => $rdd->thum,
            			"gif" => $rdd->gif,
            			"liked" => $liked_count['count'],
            			"count" =>array
            					(
            					    "like_count" => $countLikes_count['count'],
                        			"video_comment_count" => $countcomment_count['count'],
                        			"view" => $rdd->view,
            					),
    					"sound" =>array
            					(
            					    "id" => $rd12->id,
            					    "audio_path" => 
                            			array(
                                			"mp3" => $API_path."/upload/audio/".$rd12->id.".mp3",
                    			            "acc" => $API_path."/upload/audio/".$rd12->id.".aac"
                                		),
                        			"sound_name" => $rd12->sound_name,
                        			"description" => $rd12->description,
                        			"thum" => $rd12->thum,
                        			"section" => $rd12->section,
                        			"created" => $rd12->created,
            					),
            			"created" => $row['created']
            		);
        			
        		}
		        
		        $count_video_rows=count($array_out_video);
		        if($count_video_rows=="0")
		        {
		            $array_out_video=array(0);
		        }
		        
		        
		        
		        
                
                
		        $array_out = array();
		        $array_out[] = 
        			array(
        			"fb_id" => $fb_id,
        			"user_info" =>array
            					(
            					    "first_name" => $rd->first_name,
                        			"last_name" => $rd->last_name,
                        			"profile_pic" => $rd->profile_pic,
                        			"gender" => $rd->gender,
        	                		"created" => $rd->created,
            					),
        			
        			"total_heart" => "100",
        			"total_fans" => "88",
        			"total_following" => "55",
        			"user_videos" => $array_out_video
            	    
        		);
		        
		      
		    } 
		    
		    $output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
    		
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	function discover()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		
		$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
	
		$query=mysqli_query($conn,"select DISTINCT section from videos where section!='0' ");
	        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		  
		   //echo $row['section'];
		   //echo "select * from sound where section ='".$row['section']."' ";
		   
		   $query1=mysqli_query($conn,"select * from videos where section ='".$row['section']."' ");
		   $array_out1 = array();
		   while($row1=mysqli_fetch_array($query1))
		   {    
		        $query11=mysqli_query($conn,"select * from users where fb_id='".$row1['fb_id']."' ");
		        $rd1=mysqli_fetch_object($query11);
		        
		        $query112=mysqli_query($conn,"select * from sound where id='".$row1['sound_id']."' ");
		        $rd12=mysqli_fetch_object($query112);
		        
		        $countLikes = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' ");
                $countLikes_count=mysqli_fetch_assoc($countLikes);
		        
		        $countcomment = mysqli_query($conn,"SELECT count(*) as count from video_comment where video_id='".$row['id']."' ");
                $countcomment_count=mysqli_fetch_assoc($countcomment);
               
		        $liked = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row1['id']."' and fb_id='".$fb_id."' ");
                $liked_count=mysqli_fetch_assoc($liked);
                   
		        $array_out1[] = 
        			array(
            			"id" => $row1['id'],
            			"video" => $row1['video'],
            			"thum" => $row1['thum'],
            			"gif" => $row1['gif'],
            			"liked" => $liked_count['count'],
            			"count" =>array
            					(
            					    "like_count" => $countLikes_count['count'],
                        			"video_comment_count" => $countcomment_count['count'],
                        			"view" => $row1['view'],
            					),
            			"user_info" =>array
            					(
            					    "first_name" => $rd1->first_name,
                        			"last_name" => $rd1->last_name,
                        			"profile_pic" => $rd1->profile_pic,
                        			"gender" => $rd1->gender,
        	                		"created" => $rd1->created,
            					),
    					"sound" =>array
            					(
            					    "id" => $rd12->id,
            					    "audio_path" => 
                            			array(
                                			"mp3" => $API_path."/upload/audio/".$rd12->id.".mp3",
                    			            "acc" => $API_path."/upload/audio/".$rd12->id.".aac"
                                		),
                        			"sound_name" => $rd12->sound_name,
                        			"description" => $rd12->description,
                        			"thum" => $rd12->thum,
                        			"section" => $rd12->section,
                        			"created" => $rd12->created,
            					),
            			"created" => $row1['created']
            		);
		    }
		    
		    $array_out2[] = 
    			array(
    			"section_name" => $row['section'],
    			"sections_videos" => $array_out1
    			
    		);
		   
			
		}
		$output=array( "code" => "200", "msg" => $array_out2);
		print_r(json_encode($output, true));
		
	}
	
	
	function edit_profile()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['first_name']) && isset($event_json['last_name']) && isset($event_json['gender']) && isset($event_json['bio']) )
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$first_name=htmlspecialchars(strip_tags($event_json['first_name'] , ENT_QUOTES));
			$last_name=htmlspecialchars(strip_tags($event_json['last_name'] , ENT_QUOTES));
			$gender=htmlspecialchars(strip_tags($event_json['gender'] , ENT_QUOTES));
		    $bio=htmlspecialchars(strip_tags($event_json['bio'] , ENT_QUOTES));
			$username=htmlspecialchars(strip_tags($event_json['username'] , ENT_QUOTES));
			
			$qrry_1="update users SET first_name ='".$first_name."' , last_name ='".$last_name."', gender ='".$gender."' , bio ='".$bio."'  WHERE fb_id ='".$fb_id."' ";
			if(mysqli_query($conn,$qrry_1))
			{
			    $array_out = array();
				 
				$qrry_1="select * from users WHERE fb_id ='".$fb_id."' ";
    			$log_in_rs=mysqli_query($conn,$qrry_1);
    			
    			if(mysqli_num_rows($log_in_rs))
    			{   
    			    
                    
    			    $rd=mysqli_fetch_object($log_in_rs);
    			    
    			       $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"first_name" => $rd->first_name,
            			"username" => $rd-username,
            			"last_name" => $rd->last_name,
            			"gender" => $rd->gender,
            			"bio" => bio
            			);
            		
            		$output=array( "code" => "200", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			
        		
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in updating");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	
	function follow_users()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		
		if(isset($event_json['fb_id']) && isset($event_json['followed_fb_id']) && isset($event_json['status']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$followed_fb_id=htmlspecialchars(strip_tags($event_json['followed_fb_id'] , ENT_QUOTES));
			$status=htmlspecialchars(strip_tags($event_json['status'] , ENT_QUOTES));
			
			if($status=="0")
			{
			    mysqli_query($conn,"Delete from follow_users where fb_id ='".$fb_id."' and followed_fb_id='".$followed_fb_id."'  ");
			    
			    $array_out = array();
    				 $array_out[] = 
    					//array("code" => "200");
    					array(
            			"response" =>"unfollow");
    				
    				$output=array( "code" => "200", "msg" => $array_out);
    				print_r(json_encode($output, true));
			}
			else
			{
			    $qrry_1="insert into follow_users(fb_id,followed_fb_id)values(";
    			$qrry_1.="'".$fb_id."',";
    			$qrry_1.="'".$followed_fb_id."'";
    			$qrry_1.=")";
    			if(mysqli_query($conn,$qrry_1))
    			{
    			 
    			
    				 $array_out = array();
    				 $array_out[] = 
    					//array("code" => "200");
    					array(
            			"response" =>"follow successful");
    				
    				$output=array( "code" => "200", "msg" => $array_out);
    				print_r(json_encode($output, true));
    			}
    			else
    			{
    			    //echo mysqli_error();
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"problem in signup");
            		
            		$output=array( "code" => "201", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	
	
	//admin panel services
	
	function Admin_Login()
	{   
	   	require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['email']) && isset($event_json['password']) )
		{
			$email=htmlspecialchars(strip_tags($event_json['email'] , ENT_QUOTES));
			$password=strip_tags($event_json['password']);
		
			
			$log_in="select * from admin where email='".$email."' and pass='".md5($password)."' ";
			$log_in_rs=mysqli_query($conn,$log_in);
			
			if(mysqli_num_rows($log_in_rs))
			{
				$array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
						"response" => "login success"
					);
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}	
			else
			{
			    
    			$array_out = array();
    					
        		 $array_out[] = 
        			array(
        			"response" =>"Error in login");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	
	function All_Users()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		$query=mysqli_query($conn,"select * from users order by id DESC");
		        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		     
		   	 $array_out[] = 
				array(
					"fb_id" => $row['fb_id'],
					"username" => $row['username'],
					"first_name" => $row['first_name'],
					"last_name" => $row['last_name'],
					"gender" => $row['gender'],
					"profile_pic" => $row['profile_pic'],
					"block" => $row['block'],
					"version" => $row['version'],
					"device" => $row['device'],
					"signup_type" => $row['signup_type'],
					"created" => $row['created']
					
				);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
		
	    
	}
	
	
	
	function admin_all_sounds()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		$query=mysqli_query($conn,"select * from sound order by id DESC");
		        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		     
		   	 $array_out[] = 
				array(
					"id" => $row['id'],
					"sound_name" => $row['sound_name'],
					"description" => $row['description'],
					"thum" => $row['thum'],
					"section" => $row['section'],
					"created" => $row['created']
					
				);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
		
	    
	}
	
	function admin_uploadSound()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fileUrl']))
		{
			$fileUrl=htmlspecialchars(strip_tags($event_json['fileUrl'] , ENT_QUOTES));
			$sound_name=htmlspecialchars(strip_tags($event_json['sound_name'] , ENT_QUOTES));
			$description=htmlspecialchars(strip_tags($event_json['description'] , ENT_QUOTES));
			$section_name=htmlspecialchars(strip_tags($event_json['section_name'] , ENT_QUOTES));
			
			$qrry_1="insert into sound(sound_name,description,section)values(";
			$qrry_1.="'".$sound_name."',";
			$qrry_1.="'".$description."',";
			$qrry_1.="'".$section_name."'";
			$qrry_1.=")";
			if(mysqli_query($conn,$qrry_1))
			{
			     $insert_id=mysqli_insert_id($conn);
			     @copy($fileUrl,'upload/audio/'.$insert_id.'.aac');
				 $array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
        			"response" =>"successful");
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}
			else
			{
			    //echo mysqli_error();
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in signup");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
			
			

			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	function admin_getSoundSection()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		$query=mysqli_query($conn,"select * from sound_section");
		        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		     
		   	 $array_out[] = 
				array(
					"id" => $row['id'],
					"section_name" => $row['section_name'],
					"created" => $row['created']
				);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	}
	
	
	function admin_show_allVideos()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	
		$query=mysqli_query($conn,"select * from videos order by id DESC");
	        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		    
		    $query1=mysqli_query($conn,"select * from users where fb_id='".$row['fb_id']."' ");
	        $rd=mysqli_fetch_object($query1);
	       
	        $query112=mysqli_query($conn,"select * from sound where id='".$row['sound_id']."' ");
	        $rd12=mysqli_fetch_object($query112);
	        
	        $countLikes = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' ");
            $countLikes_count=mysqli_fetch_assoc($countLikes);
	        
	        $countcomment = mysqli_query($conn,"SELECT count(*) as count from video_comment where video_id='".$row['id']."' ");
            $countcomment_count=mysqli_fetch_assoc($countcomment);
            
            
            $liked = mysqli_query($conn,"SELECT count(*) as count from video_like_dislike where video_id='".$row['id']."' and fb_id='".$row['fb_id']."' ");
            $liked_count=mysqli_fetch_assoc($liked);
	        
    	   	$array_out[] = 
    			array(
    			"id" => $row['id'],
    			"fb_id" => $row['fb_id'],
    			"user_info" =>array
        					(
        					    "first_name" => $rd->first_name,
        					    "username" => $rd->username,
                    			"last_name" => $rd->last_name,
                    			"profile_pic" => $rd->profile_pic
        					),
        		"count" =>array
        					(
        					    "like_count" => $countLikes_count['count'],
                    			"video_comment_count" => $countcomment_count['count']
        					),
        		"liked"=> $liked_count['count'],			
        	    "video" => $row['video'],
    			"thum" => $row['thum'],
    			"gif" => $row['gif'],
    			"section" => $row['section'],
    			"sound" =>array
        					(
        					    "id" => $rd12->id,
        					    "audio_path" => 
                        			array(
                            			"mp3" => $API_path."/upload/audio/".$rd12->id.".mp3",
                			            "acc" => $API_path."/upload/audio/".$rd12->id.".aac"
                            		),
                    			"sound_name" => $rd12->sound_name,
                    			"description" => $rd12->description,
                    			"thum" => $rd12->thum,
                    			"section" => $rd12->section,
                    			"created" => $rd12->created,
        					),
    			"created" => $row['created']
    		);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	}
	
	
	function get_user_data()
	{
	   
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
	    
	    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
		$query=mysqli_query($conn,"select * from users where fb_id='".$fb_id."' ");
	   
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		    
		    $array_out[] = 
    			array(
    			"fb_id" => $row['fb_id'],
    			"username" => $row['username'],
    			"first_name"=> $row['first_name'],			
        	    "last_name" => $row['last_name'],
    			"gender" => $row['gender'],
    			"bio" => $row['bio'],
    			"profile_pic" => $row['profile_pic'],
    			"created" => $row['created']
    		);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	}
	
	
	
	
	
	//tictok apis
	///////////////////
	
	
	
	
	
	function flat_user()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['my_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$my_id=htmlspecialchars(strip_tags($event_json['my_id'] , ENT_QUOTES));
			
			$qrry_1="insert into flag_user(user_id,flag_by)values(";
			$qrry_1.="'".$fb_id."',";
			$qrry_1.="'".$my_id."'";
			$qrry_1.=")";
			if(mysqli_query($conn,$qrry_1))
			{
			 
			
				 $array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
        			"response" =>"successful");
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}
			else
			{
			    //echo mysqli_error();
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in signup");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	
	
	
	function getUserInfo()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			//$about_me=htmlspecialchars(strip_tags($event_json['about_me'] , ENT_QUOTES));
			
			
			$qrry_1="select * from users WHERE fb_id ='".$fb_id."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			if(mysqli_num_rows($log_in_rs))
			{   
			    
                
			    $rd=mysqli_fetch_object($log_in_rs);
			    
			    $birthDate = $rd->birthday;
                //explode the date to get month, day and year
                  $birthDate = explode("/", $birthDate);
                  //get age from date or birthdate
                  $age = (date("md", date("U", @mktime(0, 0, 0, $birthDate[0], $birthDate[1], $birthDate[2]))) > date("md")
                    ? ((date("Y") - $birthDate[2]) - 1)
                    : (date("Y") - $birthDate[2]));
                    
                    
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"about_me" => $rd->about_me,
        			"job_title" => $rd->job_title,
        			"gender" => $rd->gender,
        			"birthday" => $rd->birthday,
        			"age" => $age,
        			"company" => $rd->company,
        			"school" => $rd->school,
        			"first_name" => $rd->first_name,
        			"last_name" => $rd->last_name,
        			"image1" => htmlspecialchars_decode(stripslashes($rd->image1)),
        			"image2" => htmlspecialchars_decode(stripslashes($rd->image2)),
        			"image3" => htmlspecialchars_decode(stripslashes($rd->image3)),
        			"image4" => htmlspecialchars_decode(stripslashes($rd->image4)),
        			"image5" => htmlspecialchars_decode(stripslashes($rd->image5)),
        			"image6" => htmlspecialchars_decode(stripslashes($rd->image6)),
        			);
        		
        		$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in updating");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	
	function uploadImages()
	{
		require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['image_link']) )
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$image_link=stripslashes(strip_tags($event_json['image_link']));
		
			
			$qrry_1="select * from users WHERE fb_id ='".$fb_id."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			if(mysqli_num_rows($log_in_rs))
			{
			    $rd=mysqli_fetch_object($log_in_rs);
			    
			    if($rd->image2=="")
			    {
			        $colum_name="image2";
			    }
			    else
			    if($rd->image3=="")
			    {
			        $colum_name="image3";
			    }
			    else
			    if($rd->image4=="")
			    {
			        $colum_name="image4";
			    }
			    else
			    if($rd->image5=="")
			    {
			        $colum_name="image5";
			    }
			    else
			    if($rd->image6=="")
			    {
			        $colum_name="image6";
			    }
			    
			    
			    $qrry_1="insert into user_images(fb_id,image_url,columName)values(";
        		$qrry_1.="'".$fb_id."',";
        		$qrry_1.="'".$image_link."',";
        		$qrry_1.="'".$colum_name."'";
        		$qrry_1.=")";
        		mysqli_query($conn,$qrry_1);
        		
			    $qrry_1="update users SET $colum_name ='".$image_link."' WHERE fb_id ='".$fb_id."' ";
    			if(mysqli_query($conn,$qrry_1))
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"success");
            		
            		$output=array( "code" => "200", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
    			else
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"problem in uploading");
            		
            		$output=array( "code" => "201", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			}   
	    	
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	function Update_From_Firebase()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $headers = array(
		"Accept: application/json",
		"Content-Type: application/json"
    	);
    	
    	$data = array();
    	
    	$ch = curl_init($firebaseDb_URL.'/.json');
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	foreach ($json_data as $key => $item) 
    	{
            // 		echo" this user >>   ";
            // 		print_r($key);
            		
            // 		//print_r($item);
            // 		echo"<br>";
    		
    		
    		foreach ($item as $key1 => $item1)
    		{
    		    
    		  //  $data = array("fetch"=>"true");
    	
        //     	$ch = curl_init($firebaseDb_URL.'/'. $key .'/'.$key1.'/.json');
            	
        //     	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        //     	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'PATCH');
        //     	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        //     	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
            	
        //     	$return = curl_exec($ch);
            	
        //     	$json_data = json_decode($return, true);
            	
    		    if(!isset($item1['fetch']))
    		    {
    		       
    		       //print_r($item1['match']);
        		     if($item1['match']=="false")
        		     {
        		         $match= "false";
        		     }
        		     
        		     if($item1['match']=="true")
        		     {
        		         $match= "true";
        		     }
        		     $effeted=$item1['effect'];
        		    
                        		  //  echo "<br>";
                        		  //  print_r($key);
                            //         print_r($item1['type']);
                            //         			echo"  this user >>>>>>    ";
                            //         			print_r($key1);
                            //         			print_r($item1['name']);
                            //         			echo"<br>";
                        			
        			
        			$qrry_1="insert into like_unlike(action_profile,effect_profile,action_type,match_profile,effected)values(";
            		$qrry_1.="'".$key."',";
            		$qrry_1.="'".$key1."',";
            		$qrry_1.="'".$item1['type']."',";
            		$qrry_1.="'".$match."',";
            		$qrry_1.="'".$effeted."'";
            		$qrry_1.=")";
            		if(mysqli_query($conn,$qrry_1))
            		{
            		    //echo "insert done";
            		   // echo $item1['effect']=="true";
            		    if($item1['type']=="like" && $item1['effect']=="true")
            		    {
            		        $qrry_1="update users SET like_count = like_count+1 WHERE fb_id ='".$key."' ";
                			if(mysqli_query($conn,$qrry_1))
                			{
                			    //echo "udpate";
                			}
                			
                			if($item1['status']=="1")
                			{
                    			$ch1 = curl_init($firebaseDb_URL.'/'. $key .'/'.$key1.'/.json');
                				curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);
                            	curl_setopt($ch1, CURLOPT_CUSTOMREQUEST, 'DELETE');
                            	curl_setopt($ch1, CURLOPT_POSTFIELDS, json_encode($data));
                            	curl_setopt($ch1, CURLOPT_HTTPHEADER, $headers);
                            	
                            	$return = curl_exec($ch1);
                            	
                            	$json_data = json_decode($return, true);
                            	
                            	
                            	$curl_error = curl_error($ch1);
                            	$http_code = curl_getinfo($ch1, CURLINFO_HTTP_CODE);
                			}	
                			
            		    }
            		    else
            		    if($item1['type']=="dislike" && $item1['effect']=="true")
            		    {
            		        $qrry_1="update users SET dislike_count = dislike_count+1 WHERE fb_id ='".$key."' ";
                			if(mysqli_query($conn,$qrry_1))
                			{
                			    //echo "udpate";
                			}
                			
                			$ch1 = curl_init($firebaseDb_URL.'/'. $key .'/'.$key1.'/.json');
            				curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);
                        	curl_setopt($ch1, CURLOPT_CUSTOMREQUEST, 'DELETE');
                        	curl_setopt($ch1, CURLOPT_POSTFIELDS, json_encode($data));
                        	curl_setopt($ch1, CURLOPT_HTTPHEADER, $headers);
                        	
                        	$return = curl_exec($ch1);
                        	
                        	$json_data = json_decode($return, true);
                        	
                        	
                        	$curl_error = curl_error($ch1);
                        	$http_code = curl_getinfo($ch1, CURLINFO_HTTP_CODE);
                        	
                        	if($item1['status']=="1")
                			{
                    			$ch1 = curl_init($firebaseDb_URL.'/'. $key .'/'.$key1.'/.json');
                				curl_setopt($ch1, CURLOPT_RETURNTRANSFER, true);
                            	curl_setopt($ch1, CURLOPT_CUSTOMREQUEST, 'DELETE');
                            	curl_setopt($ch1, CURLOPT_POSTFIELDS, json_encode($data));
                            	curl_setopt($ch1, CURLOPT_HTTPHEADER, $headers);
                            	
                            	$return = curl_exec($ch1);
                            	
                            	$json_data = json_decode($return, true);
                            	
                            	
                            	$curl_error = curl_error($ch1);
                            	$http_code = curl_getinfo($ch1, CURLINFO_HTTP_CODE);
                			}	
            		    }
            		    
            		   
            		} 
    		        
    		    }
    		     
        		
    		}
    	}
    	
    	
    	
    	//Delete firebase db data after insert
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	
    	$curl_error = curl_error($ch);
    	$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
    	
    	
    	
	    
	    
	}
	
	
	function userNearByMe()
	{
		require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		
        
		if(isset($event_json['fb_id']) && isset($event_json['lat_long']) )
		{
		    
		    
		    //remove after fetch
        	    
    	    $headers = array(
    		"Accept: application/json",
    		"Content-Type: application/json"
        	);
        	
        	$data = array();
        	
        	$ch = curl_init($firebaseDb_URL.'/.json');
        	
        	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
        	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        	
        	$return = curl_exec($ch);
        	
        	$json_data = json_decode($return, true);
        	
        	$datacount=@count($json_data);
			if($datacount!="0")
			{
				foreach ($json_data as $key => $item) 
				{
					foreach ($item as $key1 => $item1)
					{
						
					 
						if(!isset($item1['fetch']))
						{
						   
						   //print_r($item1['match']);
							 if($item1['match']=="false")
							 {
								 $match= "false";
							 }
							 
							 if($item1['match']=="true")
							 {
								 $match= "true";
							 }
							 $effeted=$item1['effect'];
							
							$qrry_1="select * from like_unlike where action_profile ='".$key."' and effect_profile ='".$key1."' ";
							$log_in_rs=mysqli_query($conn,$qrry_1);
							if(mysqli_num_rows($log_in_rs))
							{
							   mysqli_query($conn,"update like_unlike SET match_profile ='true' WHERE action_profile ='".$key."' and effect_profile ='".$key1."' ");
							   //echo "update 1";
							}
							else
							{
								$qrry_1="insert into like_unlike(action_profile,effect_profile,action_type,match_profile,effected)values(";
								$qrry_1.="'".$key."',";
								$qrry_1.="'".$key1."',";
								$qrry_1.="'".$item1['type']."',";
								$qrry_1.="'".$match."',";
								$qrry_1.="'".$effeted."'";
								$qrry_1.=")";
								if(mysqli_query($conn,$qrry_1))
								{
									if($item1['type']=="like" && $item1['effect']=="true")
									{
										$qrry_1="update users SET like_count = like_count+1 WHERE fb_id ='".$key1."' ";
										if(mysqli_query($conn,$qrry_1))
										{
											//echo "udpate";
										}
										
									 }
									else
									if($item1['type']=="dislike" && $item1['effect']=="true")
									{
										$qrry_1="update users SET dislike_count = dislike_count+1 WHERE fb_id ='".$key1."' ";
										if(mysqli_query($conn,$qrry_1))
										{
											//echo "udpate";
										}
										
										
									}
									
								   
								} 
								
								
							}
						 
							
						}
						 
						
					}
				}
			}
        	
        	//Delete firebase db data after insert
        	
        	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
        	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        	
        	$return = curl_exec($ch);
        	
        	$json_data = json_decode($return, true);
        	
        	
        	$curl_error = curl_error($ch);
        	$http_code = curl_getinfo($ch, CURLINFO_HTTP_CODE);
        	//end--------------------------------------------------------------------
        	
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$lat_long=strip_tags($event_json['lat_long']);
			
			$distance=strip_tags($event_json['distance']);
			$age_range=strip_tags($event_json['age_range']);
			$gender=strip_tags($event_json['gender']);
		    
		    
		    $version=strip_tags($event_json['version']);
		    $device=strip_tags($event_json['device']);
		    
		    if($distance=="")
		    {
		        $distance="100000";
		    }
		    
			//
			$qrry_1="update users SET lat_long ='".$lat_long."' , version='".$version."' , device='".$device."'   WHERE fb_id ='".$fb_id."' ";
			if(mysqli_query($conn,$qrry_1))
			{
			    
			    
			    if($gender=="male")
    		    {
    		        $query=mysqli_query($conn,"select * from users where fb_id !='".$fb_id."' and gender='male'  ORDER BY id DESC, RAND() limit 20 ");
    		    }
    		    else
    		    if($gender=="female")
    		    {
    		        $query=mysqli_query($conn,"select * from users where fb_id !='".$fb_id."' and gender='female' ORDER BY id DESC, RAND() limit 20  ");
    		    }
    		    else
    		    {
    		       $query=mysqli_query($conn,"select * from users where fb_id !='".$fb_id."' ORDER BY rand() limit 20 ");
    		       //$query=mysqli_query($conn,"select * from user where id IN (".$idd.") and role='doctor' ");
    		    }
		        //$query=mysqli_query($conn,"select * from users where fb_id ='1126252230860258' or fb_id ='2242821022617612' or fb_id='1934076580016263' or fb_id='1009282999280558' or fb_id='10218475516219020' ");
		        //$query=mysqli_query($conn,"select * from users where fb_id !='".$fb_id."' ORDER BY id DESC limit 20 ");
		       
		        //check if block or not
		        $qrry_1="select * from users where fb_id ='".$fb_id."' ";
    			$log_in_rs=mysqli_query($conn,$qrry_1);
    			$rd=mysqli_fetch_object($log_in_rs); 
		        $profile_block=$rd->block;
    			//check if block or not
    			
    			
        		$array_out = array();
        		while($row=mysqli_fetch_array($query))
        		{
        		    $qrry_1="select * from like_unlike where action_profile ='".$fb_id."' and effect_profile ='".$row['fb_id']."'  ";
        		   //echo  $qrry_1="select * from like_unlike where action_profile ='".$fb_id."' ";
        		   //echo"<br>";
        			$log_in_rs=mysqli_query($conn,$qrry_1);
        			
        			$rd=mysqli_fetch_object($log_in_rs);
    			    //$match_profile= $rd->match_profile;
    			    //echo $rd->effect_profile;
    			    //echo"<br>";
    			    //if($row['fb_id'] != $rd->action_type && $row['fb_id'] != $rd->effect_profile)
    			    if(@$rd->effect_profile != @$row['fb_id'] || (@$rd->effected=="false" && @$rd->match_profile=="false"))
    			    {
    			        
    			       
    			        $action_type=@$rd->action_type;
    			        if($action_type==null)
    			        {
    			            $action_type="false";
    			        }
    			        
    			        
    			        $mylocation=explode(",",$lat_long);
            			$other_profiles=explode(",",$row['lat_long']);
            			
            		    
        			    $INoneKM= distance($mylocation[0],$mylocation[1],$other_profiles[0],$other_profiles[1], "K");
        				$underONE_KM=explode(".",$INoneKM);
        				
        				if($underONE_KM[0]<=$distance)
        			    {
        				      $birthDate = $row['birthday'];
                              //explode the date to get month, day and year
                              $birthDate = explode("/", $birthDate);
                              //get age from date or birthdate
                              $age = (date("md", date("U", @mktime(0, 0, 0, $birthDate[0], $birthDate[1], $birthDate[2]))) > date("md")
                                ? ((date("Y") - $birthDate[2]) - 1)
                                : (date("Y") - $birthDate[2]));
                            
                              
                              
            				 $array_out[] = 
            					//array("code" => "200");
            					array(
            						"fb_id" => $row['fb_id'],
            						"first_name" => $row['first_name'],
            						"last_name" => $row['last_name'],
            						"birthday" => "$age",
            						"about_me" => htmlentities($row['about_me']),
            						"distance" => $underONE_KM[0]." miles away",
            						"gender" => $row['gender'],
            						"image1" => $row['image1'],
            						"image2" => $row['image2'],
            						"image3" => $row['image3'],
            						"image4" => $row['image4'],
            						"image5" => $row['image5'],
            						"image6" => $row['image6'],
            						"job_title" => $row['job_title'],
            						"company" => $row['company'],
            						"school" => $row['school'],
            						"job_title" => $row['job_title'],
            						"job_title" => $row['job_title'],
            						"job_title" => $row['job_title'],
            						"swipe" => $action_type,
            						"block" =>  $profile_block  //0= normal  1=user blocked and auto logout
            						
            					); 
        			    }
        			    
    			    }
        		   	
        			
        		}
        		$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
        	    
        	    
        	    
        	    
        	    
        		
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in api");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
		    
	    	
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	
	function deleteImages()
	{
		require_once("config.php");
		$input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['image_link']) )
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$image_link=stripslashes(strip_tags($event_json['image_link'] ));
			
			
			mysqli_query($conn,"update users where fb_id='".$fb_id."'   ");
				
	    	$qrry_1="select * from users WHERE fb_id ='".$fb_id."' and image2='".$image_link."' OR image3='".$image_link."' OR image4='".$image_link."' OR image5='".$image_link."' OR image6='".$image_link."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			if(mysqli_num_rows($log_in_rs))
			{
			    $rd=mysqli_fetch_object($log_in_rs);
			    
			    if($rd->image2==$image_link)
			    {
			        $colum_name="image2";
			    }
			    else
			    if($rd->image3==$image_link)
			    {
			        $colum_name="image3";
			    }
			    else
			    if($rd->image4==$image_link)
			    {
			        $colum_name="image4";
			    }
			    else
			    if($rd->image5==$image_link)
			    {
			        $colum_name="image5";
			    }
			    else
			    if($rd->image6==$image_link)
			    {
			        $colum_name="image6";
			    }
			    
			    
			    $qrry_1="update users SET $colum_name ='' WHERE fb_id ='".$fb_id."' ";
    			if(mysqli_query($conn,$qrry_1))
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"success");
            		
            		$output=array( "code" => "200", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
    			else
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"problem in delete");
            		
            		$output=array( "code" => "201", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			} 
			
			
		}
		else
		{
			$array_out = array();
					
					 $array_out[] = 
						array(
						"response" =>"Json Parem are missing");
					
					$output=array( "code" => "201", "msg" => $array_out);
					print_r(json_encode($output, true));
		}
		
	}
	
	
	
	function show_or_hide_profile()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['status']) )
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$status=htmlspecialchars(strip_tags($event_json['status'] , ENT_QUOTES));
		
			$qrry_1="update users SET hide_me ='".$status."' WHERE fb_id ='".$fb_id."' ";
			if(mysqli_query($conn,$qrry_1))
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"success");
        		
        		$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in uploading");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
		}
	    
	    
	}
	
	
	
	
	
	
	
	
	
	//admin panel functions
	
	function banned_user()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	
		
		if(isset($event_json['fb_id']) )
		{
			$fb_id=strip_tags($event_json['fb_id']);
			$block=strip_tags($event_json['block']);
		
			$qrry_1="update users SET block ='".$block."' where fb_id='".$fb_id."' ";
			if(mysqli_query($conn,$qrry_1))
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"success");
        		
        		$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in updating");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}       
	}
	
	
	function All_ReportedUsers()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		$query=mysqli_query($conn,"select * from flag_user order by id DESC");
		        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{   
		    
		    $qrry_1="select * from users WHERE fb_id ='".$row['user_id']."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			$rd=mysqli_fetch_object($log_in_rs);
			
			$qrry_11="select * from users WHERE fb_id ='".$row['flag_by']."' ";
			$log_in_rs1=mysqli_query($conn,$qrry_11);
			
			$rd1=mysqli_fetch_object($log_in_rs1);
			    
		    $array_out[] = 
			array(
				"fb_id" => $rd->fb_id,
				"first_name" => htmlentities($rd->first_name),
				"last_name" => htmlentities($rd->last_name),
				"block" => $rd->block,
				"flag_by"=>
    				array(
        				"fb_id" => $rd1->fb_id,
        				"first_name" => htmlentities($rd1->first_name),
        				"last_name" => htmlentities($rd1->last_name),
        			),
			);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	}
	
	
	
	
	
	
	function login()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['email']) && isset($event_json['password']) )
		{
			$email=htmlspecialchars(strip_tags($event_json['email'] , ENT_QUOTES));
			$password=strip_tags($event_json['password']);
		
			
			$log_in="select * from admin where email='".$email."' and pass='".md5($password)."' ";
			$log_in_rs=mysqli_query($conn,$log_in);
			
			if(mysqli_num_rows($log_in_rs))
			{
				$array_out = array();
				 $array_out[] = 
					//array("code" => "200");
					array(
						"response" => "login success"
					);
				
				$output=array( "code" => "200", "msg" => $array_out);
				print_r(json_encode($output, true));
			}	
			else
			{
			    
    			$array_out = array();
    					
        		 $array_out[] = 
        			array(
        			"response" =>"Error in login");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	}
	
	
	
	
	function All_Matched_Profile()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		
		$query=mysqli_query($conn,"select * from like_unlike where match_profile='true' order by id DESC ");
		        
		$array_out = array();
		while($row=mysqli_fetch_array($query))
		{
		   	 $array_out[] = 
				array(
					"id" => $row['id'],
					"action_profile" => $row['action_profile'],
					"effect_profile" => $row['effect_profile']
				);
			
		}
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	    
	}
	
	
	function changePassword()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    //print_r($event_json);
		
		if(isset($event_json['new_password']) && isset($event_json['old_password']))
		{
			$old_password=strip_tags($event_json['old_password']);
			$new_password=strip_tags($event_json['new_password']);
		
		    $qrry_1="select * from admin where pass ='".md5($old_password)."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			$rd=mysqli_fetch_object($log_in_rs);
			
			if($rd->id!="")
			{
			    $qrry_1="update admin SET pass ='".md5($new_password)."' where id='".$rd->id."'  ";
    			if(mysqli_query($conn,$qrry_1))
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"success");
            		
            		$output=array( "code" => "200", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
    			else
    			{
    			    $array_out = array();
    					
            		 $array_out[] = 
            			array(
            			"response" =>"problem in updating");
            		
            		$output=array( "code" => "201", "msg" => $array_out);
            		print_r(json_encode($output, true));
    			}
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in updating");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	
	function getProfilePictures()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			//$about_me=htmlspecialchars(strip_tags($event_json['about_me'] , ENT_QUOTES));
			
			
			$qrry_1="select * from users WHERE fb_id ='".$fb_id."' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			if(mysqli_num_rows($log_in_rs))
			{
			    $rd=mysqli_fetch_object($log_in_rs);
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"first_name" => htmlentities($rd->first_name),
					"last_name" => htmlentities($rd->last_name),
					"birthday" => $rd->birthday,
					"gender" => $rd->gender,
					"purchased" => $rd->purchased,
					"version" => $rd->version,
					"block" => $rd->block,
					"device" => $rd->device,
					"hide_me" => $rd->hide_me,
					"about_me" => htmlentities($rd->about_me),
					"location" => $rd->location,
					"like_count" => $rd->like_count,
					"dislike_count" => $rd->dislike_count,
					"image1" => stripslashes($rd->image1),
					"image2" => stripslashes($rd->image2),
        			"image3" => stripslashes($rd->image3),
        			"image4" => stripslashes($rd->image4),
        			"image5" => stripslashes($rd->image5),
        			"image6" => stripslashes($rd->image6),
        			"created" => $rd->created
        			);
        		
        		$output=array( "code" => "200", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			else
			{
			    $array_out = array();
					
        		 $array_out[] = 
        			array(
        			"response" =>"problem in updating");
        		
        		$output=array( "code" => "201", "msg" => $array_out);
        		print_r(json_encode($output, true));
			}
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	function getProfilelikes()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) && isset($event_json['status']))
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			$status=htmlspecialchars(strip_tags($event_json['status'] , ENT_QUOTES));
			
			
			$qrry_1="select * from like_unlike WHERE effect_profile ='".$fb_id."' and action_type='".$status."' and effected='true' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			$array_out = array();
    		while($row=mysqli_fetch_array($log_in_rs))
    		{
    		    $qrry_11="select * from users WHERE fb_id ='".$row['action_profile']."' ";
    			$log_in_rs1=mysqli_query($conn,$qrry_11);
    			
    			while($row1=mysqli_fetch_array($log_in_rs1))
        		{
        		    
    		        $array_out[] = 
    				array(
    					"action_profile" => $row['action_profile'],
    					"profile_info" => 
    					array(
    					        "fb_id" => $row1['fb_id'],
    					        "first_name" => htmlentities($row1['first_name']),
    					        "image1" => htmlspecialchars_decode(stripslashes($row1['image1'])),
    					        "last_name" => htmlentities($row1['last_name']),
    					        "like_count" => $row1['like_count'],
    					        "dislike_count" => $row1['dislike_count']
    					    ),
    					
    				);
    		    
        		}
    			
    		}
    		$output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}
	
	function getmatchedprofiles()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
		//print_r($event_json);
		//0= owner  1= company 2= ind mechanic
		
		if(isset($event_json['fb_id']) )
		{
			$fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
			
			$qrry_1="select * from like_unlike WHERE effect_profile ='".$fb_id."' and match_profile='true' ";
			$log_in_rs=mysqli_query($conn,$qrry_1);
			
			$array_out = array();
    		while($row=mysqli_fetch_array($log_in_rs))
    		{
    		    $qrry_11="select * from users WHERE fb_id ='".$row['action_profile']."' ";
    			$log_in_rs1=mysqli_query($conn,$qrry_11);
    			
    			while($row1=mysqli_fetch_array($log_in_rs1))
        		{
        		    
    		        $array_out[] = 
    				array(
    					"action_profile" => $row['action_profile'],
    					"profile_info" => 
    					array(
    					        "fb_id" => $row1['fb_id'],
    					        "image1" => htmlspecialchars_decode(stripslashes($row1['image1'])),
    					        "first_name" => htmlentities($row1['first_name']),
    					        "last_name" => htmlentities($row1['last_name']),
    					        "like_count" => $row1['like_count'],
    					        "dislike_count" => $row1['dislike_count']
    					    ),
    					
    				);
    		    
        		}
    			
    		}
    		$output=array( "code" => "200", "msg" => $array_out);
    		print_r(json_encode($output, true));
			
			
		}
		else
		{
			$array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Json Parem are missing");
			
			$output=array( "code" => "201", "msg" => $array_out);
			print_r(json_encode($output, true));
		}
	    
	}

    
	function update_purchase_Status()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
	    
	    $qrry_1="update users SET purchased ='1' WHERE fb_id ='".$fb_id."' ";
		if(mysqli_query($conn,$qrry_1))
		{
		    $array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"update succesfully");
		}
	    
    	$output=array( "code" => "202", "msg" => $array_out);
		print_r(json_encode($output, true));
	    
	} 
	
	
	function get_profiles_nameByID()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=$event_json['fb_id'];
	    
	    
	    $query="select * from users where fb_id IN (".$fb_id.") order by fb_id ";
	    $log_in_rs1=mysqli_query($conn,$query);
	    $array_out = array();
	    while($row1=mysqli_fetch_array($log_in_rs1))
		{
		    $array_out[] = 
				array(
					"fb_id" => $row1['fb_id'],
					"first_name" => htmlentities($row1['first_name']),
					"last_name" => htmlentities($row1['last_name'])
				);
		}
	    
    	$output=array( "code" => "202", "msg" => $array_out);
		print_r(json_encode($output, true));
	    
	} 
	
	function myMatch()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=$event_json['fb_id'];
	    
	    
	    $query="select * from like_unlike where action_profile ='".$fb_id."' and match_profile='true' and chat='false' ";
	    $log_in_rs1=mysqli_query($conn,$query);
	    $array_out = array();
	    while($row1=mysqli_fetch_array($log_in_rs1))
		{
		    $query="select * from users where fb_id ='".$row1['action_profile']."' ";
	        $log_in_rs1=mysqli_query($conn,$query);
		    $rd=mysqli_fetch_object($log_in_rs1); 
		    
		    $query1="select * from users where fb_id ='".$row1['effect_profile']."' ";
	        $log_in_rs11=mysqli_query($conn,$query1);
		    $rd1=mysqli_fetch_object($log_in_rs11); 
		    
		    $array_out[] = 
				array(
					"action_profile" => $row1['action_profile'],
					"action_profile_name"=> array
					(
					    "image1" => htmlentities($rd->image1),
					    "first_name" => htmlentities($rd->first_name),
					    "last_name" => htmlentities($rd->last_name)
					),
					"effect_profile" => htmlentities($row1['effect_profile']),
					"effect_profile_name"=> array
					(
					    "image1" => htmlentities($rd1->image1),
					    "first_name" => htmlentities($rd1->first_name),
					    "last_name" => htmlentities($rd1->last_name)
					)
				);
		}
	    
    	$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
		
	}
	
	
	function firstchat()
	{
	    
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
	    $effected_id=htmlspecialchars(strip_tags($event_json['effected_id'] , ENT_QUOTES));
	    
	    $qrry_1="update like_unlike SET chat ='true' WHERE action_profile ='".$fb_id."' and effect_profile ='".$effected_id."' ";
	    mysqli_query($conn,"update like_unlike SET chat ='true' WHERE action_profile ='".$effected_id."' and effect_profile ='".$fb_id."'");
		if(mysqli_query($conn,$qrry_1))
		{
		    $array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"update succesfully");
		}
	    
    	$output=array( "code" => "202", "msg" => $array_out);
		print_r(json_encode($output, true));
	    
	}
	
	
	function unMatch()
	{
	    
    	
    	
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=$event_json['fb_id'];
	    $other_id=$event_json['other_id'];
	    
	    
	    
	    //remove from my inbox
        	    
	    $headers = array(
		"Accept: application/json",
		"Content-Type: application/json"
    	);
    	
    	$data = array();
    	
    
    	$url= $firebaseDb_URL_MainDb.'/Inbox/'.$fb_id.'/'.$other_id.'/.json';
    	$ch = curl_init($url);
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	//delete from other user inbox as well
    	$data = array();
    	
    	$url=$firebaseDb_URL_MainDb.'/Inbox/'.$other_id.'/'.$fb_id.'/.json';
    	$ch = curl_init($url);
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	
	    mysqli_query($conn,"Delete from like_unlike where action_profile ='".$fb_id."' and effect_profile='".$other_id."'  ");
	    mysqli_query($conn,"Delete from like_unlike where effect_profile ='".$fb_id."' and action_profile='".$other_id."'  ");
	    
	    $array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"update succesfully");
	        
    	$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
		
		
	}
	
	function deleteAccount()
	{
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $fb_id=$event_json['fb_id'];
	   
	    //remove from my inbox
        	    
	    $headers = array(
		"Accept: application/json",
		"Content-Type: application/json"
    	);
    	
    	$data = array();
    	
    
    	$url= $firebaseDb_URL_MainDb.'/Users/'.$fb_id.'/.json';
    	$ch = curl_init($url);
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	//delete from other user inbox as well
    	$data = array();
    	
    	$url=$firebaseDb_URL_MainDb.'/Inbox/'.$fb_id.'/.json';
    	$ch = curl_init($url);
    	
    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'GET');
    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
    	
    	$return = curl_exec($ch);
    	
    	$json_data = json_decode($return, true);
    	
    	foreach ($json_data as $key => $item) 
    	{
    	    //echo $key;
    	    //remove chat from my inbox
	    	$data = array();
	    	$url=$firebaseDb_URL_MainDb.'/chat/'.$fb_id.'-'.$key.'/.json';
        	$ch = curl_init($url);
        	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
        	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        	$return = curl_exec($ch);
        	$json_data = json_decode($return, true);
        	    
        	        //remove from my Inbox
                    	$data = array();
                    	$url=$firebaseDb_URL_MainDb.'/Inbox/'.$fb_id.'/'.$key.'/.json';
                    	$ch = curl_init($url);
                    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
                    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
                    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                    	$return = curl_exec($ch);
                    	$json_data = json_decode($return, true);
                    	
                    //remove from other person Inbox
                    	$data = array();
                    	$url=$firebaseDb_URL_MainDb.'/Inbox/'.$key.'/'.$fb_id.'/.json';
                    	$ch = curl_init($url);
                    	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
                    	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
                    	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
                    	$return = curl_exec($ch);
                    	$json_data = json_decode($return, true);    	
        	    
        	//remove chat from oter inbox
        	$data = array();
	    	$url=$firebaseDb_URL_MainDb.'/chat/'.$key.'-'.$fb_id.'/.json';
        	$ch = curl_init($url);
        	curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        	curl_setopt($ch, CURLOPT_CUSTOMREQUEST, 'DELETE');
        	curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        	curl_setopt($ch, CURLOPT_HTTPHEADER, $headers);
        	$return = curl_exec($ch);
        	$json_data = json_decode($return, true);
    	}
    	
    	
    	
    	
    	mysqli_query($conn,"Delete from like_unlike where action_profile ='".$fb_id."' ");
	    mysqli_query($conn,"Delete from like_unlike where effect_profile ='".$fb_id."' ");
	    mysqli_query($conn,"Delete from users where fb_id ='".$fb_id."' ");
	    
	    $array_out = array();
					
			 $array_out[] = 
				array(
				"response" =>"Delete succesfully");
	        
    	$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	}
	
	 
	 function under_review_new_uploaded_pictures()
	 {
	     
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    $query="select * from user_images ";
	    $log_in_rs1=mysqli_query($conn,$query);
	    $array_out = array();
	    while($row1=mysqli_fetch_array($log_in_rs1))
		{
		    
		    $query1="select * from users where fb_id ='".$row1['fb_id']."' ";
	        $log_in_rs11=mysqli_query($conn,$query1);
		    $rd=mysqli_fetch_object($log_in_rs11); 
		    
		    $array_out[] = 
				array(
					"id" => $row1['id'],
					"fb_id" => $row1['fb_id'],
					"image_url" => $row1['image_url'],
					"created_time" => $row1['created_time'],
					"first_name" => $rd->first_name,
					"last_name" => $rd->last_name,
					"columName" => $row1['columName']
				);
		}
	    
    	$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	 }
	 
	 
	 function underReviewPictureStatusChange()
	 {
	     
	    require_once("config.php");
	    $input = @file_get_contents("php://input");
	    $event_json = json_decode($input,true);
	    
	    
	    $fb_id=htmlspecialchars(strip_tags($event_json['fb_id'] , ENT_QUOTES));
	    $action=htmlspecialchars(strip_tags($event_json['action'] , ENT_QUOTES));
	    $id=htmlspecialchars(strip_tags($event_json['id'] , ENT_QUOTES));
	    $columName=htmlspecialchars(strip_tags($event_json['columName'] , ENT_QUOTES));
	    
	    if($action=="approve")
	    {
	       mysqli_query($conn,"Delete from user_images where id ='".$id."'  "); 
	    }
	    else
	    if($action=="delete")
	    {
	        $qrry_1="update users SET $columName ='' WHERE fb_id ='".$fb_id."' ";
    		mysqli_query($conn,$qrry_1);
    		mysqli_query($conn,"Delete from user_images where id ='".$id."'  "); 
	    }
	    
	    $array_out = array();
		 $array_out[] = 
			//array("code" => "200");
			array(
			"response" =>"successful");
		
		$output=array( "code" => "200", "msg" => $array_out);
		print_r(json_encode($output, true));
	   
	 }
	  
?>

