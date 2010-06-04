<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcejournal_excerpts extends Datasource{
		
		public $dsParamROOTELEMENT = 'journal-excerpts';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '8';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'date';
		public $dsParamSTARTPAGE = '{$year}';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		
		public $dsParamFILTERS = array(
				'38' => 'yes',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'heading',
				'description: formatted',
				'section',
				'author',
				'categories',
				'tags',
				'date'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Journal Excerpts',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/designadmin',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-06-04T02:48:00+00:00');	
		}
		
		public function getSource(){
			return '5';
		}
		
		public function allowEditorToParse(){
			return true;
		}
		
		public function grab(&$param_pool=NULL){
			$result = new XMLElement($this->dsParamROOTELEMENT);
				
			try{
				include(TOOLKIT . '/data-sources/datasource.section.php');
			}
			catch(FrontendPageNotFoundException $e){
				// Work around. This ensures the 404 page is displayed and
				// is not picked up by the default catch() statement below
				FrontendPageNotFoundExceptionHandler::render($e);
			}			
			catch(Exception $e){
				$result->appendChild(new XMLElement('error', $e->getMessage()));
				return $result;
			}	

			if($this->_force_empty_result) $result = $this->emptyXMLSet();
			return $result;
		}
	}

