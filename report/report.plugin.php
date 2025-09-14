<?php
/**
 * Plugin Name: Report
 * Description: Allows admins to include a file on the page by supplying a filename.
 * Version: 1.0 
 * Author: Petyr Much
 */

function report_include_file($atts) {
	// user needs to be loggedin
	if (!current_user_can('manage_options')) {
		return 'you do not have sufficient permissions to access this content';
	}

	// get shortcode params
	extract(shortcode_atts(array(
		'path' => '',
	), $atts));

	//lol security
	//$path = sanitize_text_field($path);

	//construct the full path
	$full_path = ABSPATH , $path;
	if(!file_exists($full_path)){
		return 'The files does not exist.';
	}

	// return file content
	return file_get_contents($full_path);
}
add_shortcode('include_report', 'report_include_file');
