<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceforum_edit_discussion extends Datasource{
		
		var $dsParamROOTELEMENT = 'forum-edit-discussion';
		
		var $dsParamFILTERS = array(
				'discussion-id' => '{$discussion-id}',
		);
		
		function about(){
			return array(
					 'name' => 'Forum: Edit Discussion',
					 'author' => array(
							'name' => 'Symphony Team',
							'website' => 'http://randomhouse.local:8888',
							'email' => 'team@symphony21.com'),
					 'version' => '1.0',
					 'release-date' => '2008-04-13T14:13:47+00:00');	
		}

		
		function grab(&$param_pool){
			$xml = new XMLElement($this->dsParamROOTELEMENT);
			
			$discussion_id = (int)$this->dsParamFILTERS['discussion-id'];

			/* Grab field IDs from configuration settings */
			$comment_discussion_link_field = (int)Symphony::Configuration()->get('comment-discussion-link-field', 'forum');
			$comment_field = (int)Symphony::Configuration()->get('comment-field', 'forum');

			$comment_id = $this->_Parent->Database->fetchVar('entry_id', 0, "SELECT `entry_id` FROM `tbl_entries_data_" . $comment_discussion_link_field . "` WHERE `relation_id` = $discussion_id ORDER BY `entry_id` ASC LIMIT 1");
						
			$xml->setAttribute('comment-id', $comment_id);
			$xml->setAttribute('discussion-id', $discussion_id);
			
			$body = $this->_Parent->Database->fetchVar('value', 0, "SELECT `value` FROM `tbl_entries_data_" . $comment_field . "` WHERE `entry_id` = $comment_id LIMIT 1");
		
			if(is_null($body) || strlen(trim($body)) == 0){
				return $this->emptyXMLSet();
			}
			
			$xml->setValue(General::sanitize($body));
			return $xml;

		}
	}
