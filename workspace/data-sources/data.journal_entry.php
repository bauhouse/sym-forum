<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourcejournal_entry extends Datasource{
		
		public $dsParamROOTELEMENT = 'journal-entry';
		public $dsParamORDER = 'desc';
		public $dsParamLIMIT = '1';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamREQUIREDPARAM = '$entry';
		public $dsParamSORT = 'system:id';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		
		public $dsParamFILTERS = array(
				'29' => '{$entry}',
				'38' => 'yes',
		);
		
		public $dsParamINCLUDEDELEMENTS = array(
				'title',
				'heading',
				'description: formatted',
				'body: formatted',
				'section',
				'author',
				'categories',
				'tags',
				'date',
				'enable-comments'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Journal Entry',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/designadmin',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-06-04T02:45:54+00:00');	
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

