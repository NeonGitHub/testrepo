						// 基于准备好的dom，初始化echarts实例
						var myChart = echarts.init(document
						  .getElementById('main'), 'walden');
						// 初始 option
						option = {
						  title: {
						    text: '历史数据'
						  },
						  tooltip: {
						    trigger: 'axis',
						    formatter: function(params) {
						      var res = params[0].name;
						      for (var i = 0, l = params.length; i < l; i++) {
						        res += '<br/>' + params[i].marker + params[i].seriesName + " : " + params[i].value;
						        if (params[i].seriesName == 'temp值') {
						          res += " °C";
						        }
						        if (params[i].seriesName == 'tds值') {
						          res += " mg/L";
						        }
						      }
						      return res;
						    }
						  },
						  legend: {
						    data: ['ph值', 'temp值', 'tds值']
						  },
						  xAxis: {
						    type: 'category',
						    boundaryGap: false,
						    data: []
						  },
						  yAxis: {},
						  series: [{
						    name: 'ph值',
						    type: 'line',
						    data: [],

						  }, {
						    name: 'temp值',
						    type: 'line',
						    data: [],
						  }, {
						    name: 'tds值',
						    type: 'line',
						    data: [],
						  }]
						};
						myChart.showLoading();
						myChart.setOption(option);
						// 异步加载数据
						/*$.get('/graProject/history').done(function(data) {
						  // 填入数据
						  console.log(data);
						  myChart.hideLoading();
						  myChart.setOption({
						    xAxis: {
						      data: data.date
						    },
						    series: [{
						      // 根据名字对应到相应的系列
						      name: 'ph值',
						      data: data.ph
						    }, {
						      // 根据名字对应到相应的系列
						      name: 'temp值',
						      data: data.temp
						    }, {
						      // 根据名字对应到相应的系列
						      name: 'tds值',
						      data: data.tds
						    }]
						  });
						});
*/