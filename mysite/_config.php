<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	"type" => 'MySQLDatabase',
	"server" => 'localhost',
	"username" => 'root',
	"password" => 'Laguna',
	"database" => 'SS_apsilesia',
	"path" => '',
);
ini_set("log_errors", "On");
ini_set("error_log", "/var/www/turnieje");
MySQLDatabase::set_connection_charset('utf8');

// This line set's the current theme. More themes can be
// downloaded from http://www.silverstripe.org/themes/
SSViewer::set_theme('blackcandy');

// Set the site locale
i18n::set_locale('pl_PL');

// enable nested URLs for this site (e.g. page/sub-page/)
SiteTree::enable_nested_urls();
HtmlEditorConfig::get('cms')->enablePlugins('googlemaps'); 
HtmlEditorConfig::get('cms')->insertButtonsAfter('tablecontrols', 'googlemaps');
HtmlEditorConfig::get('cms')->setOption('valid_elements', 'a[href|target|rel|class],b,br,font,img[src|id|width|height|align|hspace|vspace,KeepThis,true,TB_iframe],i,li,p,h1,h2,h3,h4,h5,h6,span[class],textformat[blockindent|indent|leading|leftmargin|rightmargin|tabstops],u,table,tr,td');
Director::set_environment_type("dev");
//Debug::log_errors_to('err.log');//
SS_Log::add_writer(new SS_LogFileWriter('/var/www/turnieje/err.log'), SS_Log::ERR);
//SS_Log::log(new Exception(‘Some log message here’), SS_Log::NOTICE);
