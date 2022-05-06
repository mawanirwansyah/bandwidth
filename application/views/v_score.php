<!-- ======= Score Assessment ======= -->
<style>
    .active{
    color: #fff;
    background: #008FFB;
    border: 1px solid blue;
    border-bottom: 2px solid blue;
    }
    button {
    background: #fff;
    color: #222;
    border: 1px solid #e7e7e7;
    border-bottom: 2px solid #ddd;
    border-radius: 2px;
    padding: 4px 17px;
}
</style>
<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
        <div class="row" data-aos="fade-up" data-aos-delay="100">
            <div class="section-title">
                <h2>Bandwidth Astinet ISP (300 mbps)</h2>
            </div>   	
      
            <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
            
            <body>
            <div id="chart">
                <div class="toolbar">
                    
                    <button id="one_months" class="active">
                        1 Bulan
                    </button>
                    
                    <button id="three_months">
                        3 Bulan
                    </button>
                    
                    <button id="six_months">
                        6 Bulan
                    </button>

                    <button id="one_year">
                        1 Tahun
                    </button>
                    
                    <button id="all">
                        ALL
                    </button>
                </div>
                <div id="chart-timeline">
                </div>
            </div>
            
            
            <script src="theme/js/jquery.min.js"></script>

                <script>
                    var download = [];
                    var upload = [];
                    var down = [];
                    var up = [];

                    function backDays(days){
                    var now = new Date();
                    return now.setDate(now.getDate() - days);
                    }

                    function getFirstDayInMonth(){
                    var date = new Date(), y = date.getFullYear(), m = date.getMonth();
                    return new Date(y, m - 1, 1).getTime();
                    }

                    function getLastDayInMonth(){
                    var date = new Date(), y = date.getFullYear(), m = date.getMonth();
                    return new Date(y, m + 1 - 1, 0).getTime();
                    }

                    function getFirstDayPreviousMonth(totalMonths = 1) {
                    var date = new Date(), y = date.getFullYear(), m = date.getMonth();
                    return new Date(y, m - totalMonths, 1).getTime();
                    }

                    function getLastDayPreviousMonth(totalMonths = 1) {
                    var date = new Date(), y = date.getFullYear(), m = date.getMonth();
                    return new Date(y, m - totalMonths + 1, 0).getTime();
                    }

                    function getFirstDayInYear() {
                    var date = new Date(), y = date.getFullYear();
                    return new Date(y, 0, 1).getTime();
                    }

                    $(document).ready(function() {
                        $.ajax({
                            url: "score/getchart",
                            method: "get",
                            success: function(response) {
                                var data = JSON.parse(response);
                                for (var i = 0; i < data.length; i++) {
                                    var tanggal = new Date(data[i].tanggal).getTime();
                                    down = [tanggal, data[i].total_download]                   
                                    up = [tanggal, data[i].total_upload]    
                                    download.push(down);
                                    upload.push(up);
                                    down = [], up = []
                                }
                                console.log(download);
                                console.log(upload);

                            },
                        }).done(function() {
                            var options = {
                                series: [
                                    {
                                        name: "download",
                                        data: download
                                    },
                                    {
                                        name: "upload",
                                        data: upload
                                    }
                                ],
                                chart: {
                                id: 'area-datetime',
                                type: 'line',
                                height: 420,                                    
                                zoom: {
                                    autoScaleYaxis: true
                                }
                                },
                                colors: ['#4169E1', '#FF0000'],
                                annotations: {
                                },
                                dataLabels: {
                                enabled: true
                                },
                                markers: {
                                size: 0,
                                style: 'hollow',
                                },
                                xaxis: {
                                title: {
                                text: 'Daily (Harian)'
                                },
                                type: 'datetime',
                                min: getFirstDayPreviousMonth(),
                                max: getLastDayInMonth(),
                                tickAmount: 6,
                                },
                                yaxis: {
                                title: {
                                    text: 'Bandwidth'
                                },
                                min: 0,
                                max: 300
                                },
                                tooltip: {
                                x: {
                                    format: 'dd MMM yyyy'
                                }
                                },
                                };   

                            var chart = new ApexCharts(document.querySelector("#chart-timeline"), options);
                            chart.render();
                                
                            
                            var resetCssClasses = function(activeEl) {
                            var els = document.querySelectorAll('button')
                            Array.prototype.forEach.call(els, function(el) {
                            el.classList.remove('active')
                            })
                        
                            activeEl.target.classList.add('active')
                            }

                            document
                                .querySelector('#one_months')
                                .addEventListener('click', function(e) {
                                resetCssClasses(e)
                            
                                chart.zoomX(
                                    getFirstDayInMonth(),
                                    getLastDayInMonth()
                                )
                                })
                            
                            document
                                .querySelector('#three_months')
                                .addEventListener('click', function(e) {
                                resetCssClasses(e)
                            
                                chart.zoomX(
                                    getFirstDayPreviousMonth(3),
                                    getLastDayInMonth()
                                )
                                })

                            document
                            .querySelector('#six_months')
                            .addEventListener('click', function(e) {
                            resetCssClasses(e)
                        
                            chart.zoomX(
                                getFirstDayPreviousMonth(6),
                                getLastDayInMonth()
                            )
                            })
                            
                            document
                                .querySelector('#one_year')
                                .addEventListener('click', function(e) {
                                resetCssClasses(e)
                                chart.zoomX(
                                    getFirstDayPreviousMonth(12),
                                    getLastDayInMonth()
                                )
                            })
                            
                            document.querySelector('#all').addEventListener('click', function(e) {
                                resetCssClasses(e)
                            
                                chart.zoomX(
                                undefined,
                                getLastDayInMonth()
                                )
                            })

                        });
                    })
                </script>
        </div>
    </div>

</section>
<!-- End Score Section -->