<?php

	require_once(TOOLKIT . '/class.datasource.php');
	
	Class datasourceclient_names extends Datasource{
		
		public $dsParamROOTELEMENT = 'client-names';
		public $dsParamORDER = 'asc';
		public $dsParamLIMIT = '100';
		public $dsParamREDIRECTONEMPTY = 'no';
		public $dsParamSORT = 'name';
		public $dsParamSTARTPAGE = '1';
		public $dsParamASSOCIATEDENTRYCOUNTS = 'no';
		public $dsParamINCLUDEDELEMENTS = array(
				'name'
		);

		public function __construct(&$parent, $env=NULL, $process_params=true){
			parent::__construct($parent, $env, $process_params);
			$this->_dependencies = array();
		}
		
		public function about(){
			return array(
					 'name' => 'Client Names',
					 'author' => array(
							'name' => 'Stephen Bau',
							'website' => 'http://home/sym/designadmin',
							'email' => 'bauhouse@gmail.com'),
					 'version' => '1.0',
					 'release-date' => '2010-06-02T13:29:08+00:00');	
		}
		
		public function getSource(){
			return '13';
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

