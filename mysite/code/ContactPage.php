<?php
/******************
 * 
 * ContactPage
 * 
 * 
 * 
 * 
 * 
 ******************/

//Model
class ContactPage extends Page
{
	static $db = array(
		'Mailto' => 'Varchar(100)', //Email address to send submissions to
		'SubmitText' => 'HTMLText' //Text presented after submitting message
	);
	
	//CMS fields
	function getCMSFields() 
	{
		$fields = parent::getCMSFields();
	
		$fields->addFieldToTab("Root.Content.OnSubmission", new TextField('Mailto', 'Email submissions to'));	
		$fields->addFieldToTab("Root.Content.OnSubmission", new HTMLEditorField('SubmitText', 'Text on Submission'));	
	
		return $fields;	
	}

}

// Controller
class ContactPage_Controller extends Page_Controller
{
	//Define our form function as allowed
	static $allowed_actions = array(
		'ContactForm'
	);
	
	//The function which generates our form
	function ContactForm() 
	{
      	// Create fields
	    $fields = new FieldSet(
		    new TextField('Name', 'Imię i Nazwisko*'),
			new EmailField('Email', 'Email*'),
			new TextareaField('Comments','Treść*')
		);
	 	
	    // Create action
	    $actions = new FieldSet(
	    	new FormAction('SendContactForm', 'Wyślij')
	    );
		
		// Create action
		$validator = new RequiredFields('Name', 'Email', 'Comments');
			
	    return new Form($this, 'ContactForm', $fields, $actions, $validator);
	}
 	
	//The function that handles our form submission
	function SendContactForm($data, $form) 
	{
	 	//Set data
		$From = $data['Email'];
		$To = $this->Mailto;
		$Subject = "Website Contact message";  	  
		$email = new Email($From, $To, $Subject);
		//set template
		$email->setTemplate('ContactEmail');
		//populate template
		$email->populateTemplate($data);
		//send mail
		$email->send();
	  	//return to submitted message
		Director::redirect(Director::baseURL(). $this->URLSegment . "/?success=1");

	}

	//The function to test whether to display the Submit Text or not
	public function Success()
	{
		return isset($_REQUEST['success']) && $_REQUEST['success'] == "1";
	}
	public function init() {
		parent::init();
		Validator::set_javascript_validation_handler('none');  
		//Requirements::javascript("sapphire/thirdparty/jquery/jquery-packed.js"); 
		Requirements::javascript("http://www.google.com/jsapi?key=ABQIAAAAdehNDAxA7PP_p_gGwfWVHRRkuAh3IcgAYnTTakPcaoWNtN3vChQWB5e-rxahxjYrbS1hbwCSHOHiNg"); 
		Requirements::javascript("sapphire/thirdparty/googlemapsjs/mapsloader.js");
		Requirements::javascript("http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js");
		Requirements::javascript("http://ajax.microsoft.com/ajax/jquery.validate/1.7/jquery.validate.min.js");
		Requirements::customScript('
        jQuery(document).ready(function() {
            jQuery("#Form_ContactForm").validate({
                rules: {
                    Name: "required",
                    Email: {
                        required: true,
                        email: true
                    },
                    Comments: {
                        required: true,
                        minlength: 20
                    }
                },
                messages: {
                    Name: "Podaj imię i nazwisko",
                    Email: "Podaj prawidłowy adres email",
                    Comments: "Uzupełnij treść"
                }
            });
        });
    ');

	}
}
