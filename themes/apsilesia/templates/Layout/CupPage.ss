<div class="typography">
	<% if Menu(3) %>
		<% include CupBar %>
		<div id="content">
	<% end_if %>

	
		<h2>$Title</h2>
	
		$Content
		$Form
		$PageComments
	<% if Menu(3) %>
		</div>
	<% end_if %>
</div>