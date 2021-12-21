<!-- ======= Score Assessment ======= -->
<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
        <div class="row" data-aos="fade-up" data-aos-delay="100">
            <div class="section-title">
                <h2>Bandwidth Astinet TG (70 Mbps)</h2>
            </div>

            <script>
                window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/promise-polyfill@8/dist/polyfill.min.js"><\/script>');
                window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/eligrey-classlist-js-polyfill@1.2.20171210/classList.min.js"><\/script>');
                window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/findindex_polyfill_mdn"><\/script>');
                window.Promise || document.write('<script src="https://cdn.jsdelivr.net/npm/blob-polyfill"><\/script>');
            </script>
    	
      
            <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
            
            <body>
            <div id="chart"></div>
            <script src="theme/js/jquery.min.js"></script>

                <script>
                    var labels = [];
                    var values = [];
                    var tanggal = [];
                    

                    $(document).ready(function() {
                        $.ajax({
                            url: "tg/getchart",
                            method: "get",
                            success: function(response) {
                                var data = JSON.parse(response);
                                console.log(data);
                                for (var i = 0; i < data.length; i++) {
                                    
                                    labels.push(data[i].total_download);
                                    console.log(data[i].total_download);
                                    values.push(data[i].total_upload);
                                    tanggal.push(data[i].tanggal);
                                }
                            },
                        }).done(function() {                               
                                var options = {
                                    series: [
                                    {
                                        name: "Download",
                                        data: labels
                                    },
                                    {
                                        name: "Upload",
                                        data: values
                                    }
                                    ],
                                    chart: {
                                    height: 460,
                                    type: 'line',
                                    dropShadow: {
                                        enabled: true,
                                        color: '#000',
                                        top: 18,
                                        left: 7,
                                        blur: 10,
                                        opacity: 0.2
                                    },
                                    toolbar: {
                                        show: false
                                    }
                                    },
                                    colors: ['#4169E1', '#FF0000'],
                                    dataLabels: {
                                    enabled: true,
                                    },
                                    stroke: {
                                    curve: 'smooth'
                                    },
                                    title: {
                                    text: 'Average High & Low Bandwidth',
                                    align: 'left'
                                    },
                                    grid: {
                                    borderColor: '#e7e7e7',
                                    row: {
                                        colors: ['#f3f3f3', 'transparent'], // takes an array which will be repeated on columns
                                        opacity: 0.5
                                    },
                                    },
                                    markers: {
                                    size: 1
                                    },
                                    xaxis: {
                                    categories: tanggal,
                                    title: {
                                        text: 'Daily (Harian)'
                                    }
                                    },
                                    yaxis: {
                                    title: {
                                        text: 'Bandwidth'
                                    },        
                                    min: 0,
                                    max: 70
                                    },
                                    legend: {
                                    position: 'top',
                                    horizontalAlign: 'right',
                                    floating: true,
                                    offsetY: -25,
                                    offsetX: -5
                                    }
                                    };

                        var chart = new ApexCharts(document.querySelector("#chart"), options);
                        chart.render();
                    });
                    })
                </script>
        </div>
    </div>

</section>
<!-- End Score Section -->