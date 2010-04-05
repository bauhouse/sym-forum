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

		public static function documentation(){
			return '
        <h3>Success and Failure XML Examples</h3>
        <p>When saved successfully, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;forum-create-discussion result="success" type="create | edit">
  &lt;message>Entry [created | edited] successfully.&lt;/message>
&lt;/forum-create-discussion></code></pre>
        <p>When an error occurs during saving, due to either missing or invalid fields, the following XML will be returned:</p>
        <pre class="XML"><code>&lt;forum-create-discussion result="error">
  &lt;message>Entry encountered errors when saving.&lt;/message>
  &lt;field-name type="invalid | missing" />
  ...
&lt;/forum-create-discussion></code></pre>
        <h3>Example Front-end Form Markup</h3>
        <p>This is an example of the form markup you can use on your frontend:</p>
        <pre class="XML"><code>&lt;form method="post" action="" enctype="multipart/form-data">
  &lt;input name="MAX_FILE_SIZE" type="hidden" value="5242880" />
  &lt;label>Topic
    &lt;input name="fields[topic]" type="text" />
  &lt;/label>
  &lt;label>Created By
    &lt;input name="fields[created-by]" type="text" />
  &lt;/label>
  &lt;label>Date
    &lt;input name="fields[date]" type="text" />
  &lt;/label>
  &lt;label>Last Post
    &lt;input name="fields[last-post]" type="text" />
  &lt;/label>
  &lt;label>Last Active
    &lt;input name="fields[last-active]" type="text" />
  &lt;/label>
  &lt;label>Pinned
    &lt;input name="fields[pinned]" type="checkbox" />
  &lt;/label>
  &lt;label>Closed
    &lt;input name="fields[closed]" type="checkbox" />
  &lt;/label>
  &lt;input name="action[forum-create-discussion]" type="submit" value="Submit" />
&lt;/form></code></pre>
        <p>To edit an existing entry, include the entry ID value of the entry in the form. This is best as a hidden field like so:</p>
        <pre class="XML"><code>&lt;input name="id" type="hidden" value="23" /></code></pre>
        <p>To redirect to a different location upon a successful save, include the redirect location in the form. This is best as a hidden field like so, where the value is the URL to redirect to:</p>
        <pre class="XML"><code>&lt;input name="redirect" type="hidden" value="http://home/sym/test/success/" /></code></pre>';
		}

		protected function __trigger(){
			// this returns a Symphony XMlElement object
			$result = $this->updateNamedSections(self::getSource());

			return $result;
		}

	}

