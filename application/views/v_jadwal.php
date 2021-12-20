<!-- ======= Score Assessment ======= -->
<section id="portfolio" class="portfolio">
    <div class="container" data-aos="fade-up">
        <div class="row" data-aos="fade-up" data-aos-delay="100">
            <div class="section-title">
                <h2>Jadwal Assessment</h2>
            </div>

            <center>
                <div id="calendar"></div>
            </center>

            <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
            <script src='https://cdn.jsdelivr.net/npm/fullcalendar@5.8.0/main.js'></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"
                integrity="sha512-qTXRIMyZIFb8iQcfjXWCO8+M5Tbc38Qi5WzdPOYZHIlZpzBHG3L3by84BBBOiRGiEb7KKtAOAs5qYdUiZiQNNQ=="
                crossorigin="anonymous" referrerpolicy="no-referrer"></script>
            <script>
           
            document.addEventListener('DOMContentLoaded', function() {
                var calendarEl = document.getElementById('calendar');
                var calendar = new FullCalendar.Calendar(calendarEl, {
                    initialView: 'dayGridMonth',
                    events: 'jadwal/getjadwal',
                    selectOverlap: function(event) {
                        return event.rendering === 'background';
                    }
                });

                calendar.render();
            });
            </script>
        </div>

</section>
<!-- End Jadwal Section -->