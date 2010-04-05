<?php

	require_once(EXTENSIONS . '/eventex/lib/class.eventex.php');
	
	Class eventforum_create_discussion extends EventEx{
		
		const ROOTELEMENT = 'forum-create-discussion';
		
		public $eParamFILTERS = array(
			
		);
			
		public static function showInRolePermissions(){
			return true;
		}

		public static function about(){
			return array(
					 'name' => 'Forum: Create Discussion',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/test',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-04-05T15:30:09+00:00',
					 'trigger-condition' => 'action[forum-create-discussion]');	
		}

		public static function getSource(){
			return array("discussions", "comments");
		}

		protected function __trigger(){
			// this returns a Symphony XMlElement object
			$result = $this->updateNamedSections(self::getSource());

			return $result;
		}

	}

class forum_create_discussion extends GenericSectionUpdate { }