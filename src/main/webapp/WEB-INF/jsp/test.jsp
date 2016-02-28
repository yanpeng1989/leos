<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="utf-8">
<title>ECharts</title>
</head>
<body>
	<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
	<div id="main" style="height: 400px"></div>
	<!-- ECharts单文件引入 -->
	<script src="../leos/plugins/echarts-2.2.7/dist/echarts.js"></script>
	<script type="text/javascript">
		// 路径配置
		require.config({
			paths : {
				echarts : '../leos/plugins/echarts-2.2.7/dist'
			}
		});

		// 使用
		require([ 'echarts', 'echarts/chart/tree'
		], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			var option = {
				title : {
					text : '树图混搭',
					subtext : '多个树'
				},
				tooltip : {
					trigger : 'item',
					formatter : "{b}: {c}"
				},
				calculable : false,

				series : [ {
					name : '树图',
					type : 'tree',
					orient : 'vertical', // vertical horizontal
					rootLocation : {
						x : '50%',
						y : 50
					}, // 根节点位置  {x: 100, y: 'center'}
					nodePadding : 50,
					itemStyle : {
						normal : {
							label : {
								show : true,
								formatter : "{b}"
							},
							lineStyle : {
								color : '#48b',
								shadowColor : '#000',
								shadowBlur : 3,
								shadowOffsetX : 3,
								shadowOffsetY : 5,
								type : 'broken' // 'curve'|'broken'|'solid'|'dotted'|'dashed'

							}
						},
						emphasis : {
							label : {
								show : true
							}
						}
					},

					data : [ {
						name : '根节点',
						value : 6,
						children : [ {
							name : '节点1',
							value : 4,
							children : [ {
								name : '叶子节点1',
								value : 4
							}, {
								name : '叶子节点2',
								value : 4
							}]
						}, {
							name : '节点2',
							value : 4,
							children : [ {
								name : '叶子节点7',
								value : 4
							}, {
								name : '叶子节点8',
								value : 4
							} ]
						} ]
					} ]
				}

				]
			};
			myChart.setOption(option);
		});
	</script>
</body>