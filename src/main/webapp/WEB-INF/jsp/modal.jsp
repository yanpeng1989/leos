<div id="alert_msg" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" style="font-family: 微软雅黑;">提示信息</h4>
			</div>
			<div class="modal-body">
				<p id="alert_data" style="font-family: 微软雅黑;">&hellip;</p>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-primary" data-dismiss="modal">关闭</button>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	function show_model(content) {
		$("#alert_data").html(content);
		$('#alert_msg').modal('show');
	}
</script>