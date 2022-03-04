<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="adminheader.jsp" %>
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
      <!-- ============================================================== -->
      <!-- Bread crumb and right sidebar toggle -->
      <!-- ============================================================== -->
      <div class="page-breadcrumb">
        <div class="row">
          <div class="col-7 align-self-center">
            <h3
              class="page-title text-truncate text-dark font-weight-medium mb-1">Good
              Morning <sec:authentication property="principal.member.userid"/>!</h3>
            <div class="d-flex align-items-center">
              <nav aria-label="breadcrumb">
                <ol class="breadcrumb m-0 p-0">
                  <li class="breadcrumb-item"><a href="index.html">Dashboard</a>
                  </li>
                </ol>
              </nav>
            </div>
          </div>
          <div class="col-5 align-self-center">
            <div class="customize-input float-right">
            </div>
          </div>
        </div>
      </div>
      <!-- ============================================================== -->
      <!-- End Bread crumb and right sidebar toggle -->
      <!-- ============================================================== -->
      <!-- ============================================================== -->
      <!-- Container fluid  -->
      <!-- ============================================================== -->
      <div class="container-fluid">
        <!-- *************************************************************** -->
        <!-- Start First Cards -->
        <!-- *************************************************************** -->
        <div class="card-group">
          <div class="card border-right">
            <div class="card-body">
              <div
                class="d-flex d-lg-flex d-md-block align-items-center">
                <div>
                  <div class="d-inline-flex align-items-center">
                    <h2 class="text-dark mb-1 font-weight-medium">${info.members }</h2>
                    <span
                      class="badge bg-primary font-12 text-white font-weight-medium badge-pill ml-2 d-lg-block d-md-none">Total</span>
                  </div>
                  <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Members</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted">
                    <i data-feather="user-plus"></i>
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div class="card border-right">
            <div class="card-body">
              <div class="d-flex d-lg-flex d-md-block align-items-center">
                <div>
                  <h2 class="text-dark mb-1 w-100 text-truncate font-weight-medium">
                    <sup class="set-doller"></sup><fmt:formatNumber value="${info.monthEarning }" pattern="#,###" />円
                  </h2>
                  <h6
                    class="text-muted font-weight-normal mb-0 w-100 text-truncate">Earnings of Month</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted">
                    <i data-feather="dollar-sign"></i>
                  </span>
                </div>
              </div>
            </div>
          </div>
          <div class="card border-right">
            <div class="card-body">
              <div
                class="d-flex d-lg-flex d-md-block align-items-center">
                <div>
                  <div class="d-inline-flex align-items-center">
                    <h2 class="text-dark mb-1 font-weight-medium">${info.screenMovie }</h2>
                    <span class="badge bg-danger font-12 text-white font-weight-medium badge-pill ml-2 d-md-none d-lg-block">Total</span>
                  </div>
                  <h6 class="text-muted font-weight-normal mb-0 w-100 text-truncate">Screening Movies</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i
                    data-feather="file-plus"></i></span>
                </div>
              </div>
            </div>
          </div>
          <div class="card">
            <div class="card-body">
              <div
                class="d-flex d-lg-flex d-md-block align-items-center">
                <div>
                  <h2 class="text-dark mb-1 font-weight-medium">${info.theater }</h2>
                  <h6
                    class="text-muted font-weight-normal mb-0 w-100 text-truncate">Theaters</h6>
                </div>
                <div class="ml-auto mt-md-3 mt-lg-0">
                  <span class="opacity-7 text-muted"><i
                    data-feather="globe"></i></span>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- *************************************************************** -->
        <!-- End First Cards -->
        <!-- *************************************************************** -->
        <!-- *************************************************************** -->
        <!-- Start Sales Charts Section -->
        <!-- *************************************************************** -->
        <div class="row">
          <div class="col-lg-6 col-md-12">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Members Gender Ratio</h4>
                <div id="campaign-v2" class="mt-2" style="height: 283px; width: 100%;"></div>
                <ul class="list-style-none mb-0">
                  <li><i
                    class="fas fa-circle text-primary font-10 mr-2"></i>
                    <span class="text-muted">Men</span> 
                    <span class="text-dark float-right font-weight-medium" id="menSp"></span>
                  </li>
                  <li class="mt-3"><i
                    class="fas fa-circle text-danger font-10 mr-2"></i>
                    <span class="text-muted">Women</span> 
                    <span class="text-dark float-right font-weight-medium" id="womenSp"></span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-lg-6 col-md-12">
            <div class="card">
              <div class="card-body">
                <h4 class="card-title">Net Income</h4>
                <div class="net-income mt-4 position-relative"
                  style="height: 294px;"></div>
                <ul class="list-inline text-center mt-5 mb-2">
                  <li class="list-inline-item text-muted font-italic">Sales
                    for this month</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- *************************************************************** -->
        <!-- End Sales Charts Section -->
        <!-- *************************************************************** -->
        <!-- *************************************************************** -->
        <!-- Start Location and Earnings Charts Section -->
        <!-- *************************************************************** -->
        <div class="row">
          <div class="col-md-12 col-lg-12">
            <div class="card">
              <div class="card-body">
                <div class="d-flex align-items-start">
                  <h4 class="card-title mb-0">Earning Statistics</h4>
                  <div class="ml-auto">
                  </div>
                </div>
                <div class="pl-4 mb-5">
                  <div class="stats ct-charts position-relative"
                    style="height: 315px;"></div>
                </div>
                <ul class="list-inline text-center mt-4 mb-0">
                  <li class="list-inline-item text-muted font-italic">Earnings
                    for this month</li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <!-- *************************************************************** -->
        <!-- End Location and Earnings Charts Section -->
        <!-- *************************************************************** -->
      </div>
      <!-- ============================================================== -->
      <!-- End Container fluid  -->
<script>
$(document).ready(function(){

  $.ajax({
    url: '/adm/chart1.do', 
    type: 'get',
    dataType: 'json',
    contentType : 'application/json;charset=utf-8',
    success: function (data) {
      $("#menSp").text(data.men);
      $("#womenSp").text(data.women);
      var chart1 = c3.generate({
        bindto: '#campaign-v2',
        data: {
            columns: [
                ['Men', data.men],['Women', data.women]
            ],

            type: 'donut',
            tooltip: {
                show: true
            }
        },
        donut: {
            label: {
                show: false
            },
            title: 'Gender',
            width: 18
        },

        legend: {
            hide: true
        },
        color: {
            pattern: [
                '#5f76e8',
                '#ff4f70'
            ]
        }
    });

    d3.select('#campaign-v2 .c3-chart-arcs-title').style('font-family', 'Rubik');
    
    //chart2
    var data = {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
        series: [
            [5, 4, 3, 7, 5, 10]
        ]
    };

    var options = {
        axisX: {
            showGrid: false
        },
        seriesBarDistance: 1,
        chartPadding: {
            top: 15,
            right: 15,
            bottom: 5,
            left: 0
        },
        plugins: [
            Chartist.plugins.tooltip()
        ],
        width: '100%'
    };

    var responsiveOptions = [
        ['screen and (max-width: 640px)', {
            seriesBarDistance: 5,
            axisX: {
                labelInterpolationFnc: function (value) {
                    return value[0];
                }
            }
        }]
    ];
    new Chartist.Bar('.net-income', data, options, responsiveOptions);
    
    
    //chart3
    
    var chart = new Chartist.Line('.stats', {
      labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
      series: [
          [11, 20, 15, 21, 14, 23, 12]
      ]
  }, {
      low: 0,
      high: 28,
      showArea: true,
      fullWidth: true,
      plugins: [
          Chartist.plugins.tooltip()
      ],
      axisY: {
          onlyInteger: true,
          scaleMinSpace: 40,
          offset: 20,
          labelInterpolationFnc: function (value) {
              return (value / 1) + 'k';
          }
      },
  });

  // Offset x1 a tiny amount so that the straight stroke gets a bounding box
  chart.on('draw', function (ctx) {
      if (ctx.type === 'area') {
          ctx.element.attr({
              x1: ctx.x1 + 0.001
          });
      }
  });

  // Create the gradient definition on created event (always after chart re-render)
  chart.on('created', function (ctx) {
      var defs = ctx.svg.elem('defs');
      defs.elem('linearGradient', {
          id: 'gradient',
          x1: 0,
          y1: 1,
          x2: 0,
          y2: 0
      }).elem('stop', {
          offset: 0,
          'stop-color': 'rgba(255, 255, 255, 1)'
      }).parent().elem('stop', {
          offset: 1,
          'stop-color': 'rgba(80, 153, 255, 1)'
      });
  });

  $(window).on('resize', function () {
      chart.update();
  });
    },
    error: function (xhr, status, error) {
       console.log("ajax error");
    }
})
  
});

</script>
<%@ include file="adminfooter.jsp" %>