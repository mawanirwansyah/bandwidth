<?php
//default time zone
date_default_timezone_set("Asia/Jakarta");
//fungsi check tanggal merah
function tanggalMerah()
{
    $array = json_decode(file_get_contents("https://raw.githubusercontent.com/guangrei/Json-Indonesia-holidays/master/calendar.json"), true);

    //check tanggal merah berdasarkan libur nasional
    // if (isset($array[$value])) {
    //     // echo "tanggal merah " . $array[$value]["deskripsi"];
    //     return false;

    //     //check tanggal merah berdasarkan hari minggu
    // } elseif (date("D", strtotime($value)) === "Sun") {
    //     // echo "tanggal merah hari minggu";
    //     return false;

    //     //bukan tanggal merah
    // } else {
    //     // echo "bukan tanggal merah";
    //     return true;
    // }

    return $array;
}
