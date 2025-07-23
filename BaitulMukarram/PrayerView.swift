import SwiftUI

struct PrayerDay {
    let date: String // Format: "MM-dd"
    let fajr: String
    let shouruq: String
    let zuhr: String
    let asr: String
    let maghrib: String
    let isha: String
}

struct PrayerView: View {
    let prayerTimes: [PrayerDay] = [
        PrayerDay(date: "01.07.", fajr: "3:18", shouruq: "4:41", zuhr: "13:15", asr: "17:38", maghrib: "21:40", isha: "22:53"),
        PrayerDay(date: "02.07.", fajr: "3:19", shouruq: "4:41", zuhr: "13:15", asr: "17:39", maghrib: "21:40", isha: "22:53"),
        PrayerDay(date: "03.07.", fajr: "3:19", shouruq: "4:42", zuhr: "13:16", asr: "17:39", maghrib: "21:39", isha: "22:53"),
        PrayerDay(date: "04.07.", fajr: "3:20", shouruq: "4:43", zuhr: "13:16", asr: "17:38", maghrib: "21:39", isha: "22:52"),
        PrayerDay(date: "05.07.", fajr: "3:21", shouruq: "4:44", zuhr: "13:16", asr: "17:38", maghrib: "21:38", isha: "22:52"),
        PrayerDay(date: "06.07.", fajr: "3:21", shouruq: "4:45", zuhr: "13:16", asr: "17:38", maghrib: "21:38", isha: "22:52"),
        PrayerDay(date: "07.07.", fajr: "3:22", shouruq: "4:45", zuhr: "13:16", asr: "17:38", maghrib: "21:37", isha: "22:52"),
        PrayerDay(date: "08.07.", fajr: "3:22", shouruq: "4:46", zuhr: "13:17", asr: "17:38", maghrib: "21:37", isha: "22:51"),
        PrayerDay(date: "09.07.", fajr: "3:23", shouruq: "4:47", zuhr: "13:17", asr: "17:38", maghrib: "21:36", isha: "22:51"),
        PrayerDay(date: "10.07.", fajr: "3:24", shouruq: "4:48", zuhr: "13:17", asr: "17:38", maghrib: "21:35", isha: "22:50"),
        PrayerDay(date: "11.07.", fajr: "3:25", shouruq: "4:50", zuhr: "13:17", asr: "17:38", maghrib: "21:34", isha: "22:50"),
        PrayerDay(date: "12.07.", fajr: "3:25", shouruq: "4:51", zuhr: "13:17", asr: "17:38", maghrib: "21:34", isha: "22:49"),
        PrayerDay(date: "13.07.", fajr: "3:26", shouruq: "4:52", zuhr: "13:17", asr: "17:37", maghrib: "21:33", isha: "22:49"),
        PrayerDay(date: "14.07.", fajr: "3:27", shouruq: "4:53", zuhr: "13:17", asr: "17:37", maghrib: "21:32", isha: "22:48"),
        PrayerDay(date: "15.07.", fajr: "3:28", shouruq: "4:54", zuhr: "13:17", asr: "17:37", maghrib: "21:31", isha: "22:48"),
        PrayerDay(date: "16.07.", fajr: "3:28", shouruq: "4:55", zuhr: "13:18", asr: "17:37", maghrib: "21:30", isha: "22:47"),
        PrayerDay(date: "17.07.", fajr: "3:29", shouruq: "4:57", zuhr: "13:18", asr: "17:36", maghrib: "21:29", isha: "22:46"),
        PrayerDay(date: "18.07.", fajr: "3:30", shouruq: "4:58", zuhr: "13:18", asr: "17:36", maghrib: "21:27", isha: "22:46"),
        PrayerDay(date: "19.07.", fajr: "3:31", shouruq: "4:59", zuhr: "13:18", asr: "17:36", maghrib: "21:26", isha: "22:45"),
        PrayerDay(date: "20.07.", fajr: "3:32", shouruq: "5:01", zuhr: "13:18", asr: "17:35", maghrib: "21:25", isha: "22:44"),
        PrayerDay(date: "21.07.", fajr: "3:33", shouruq: "5:02", zuhr: "13:18", asr: "17:35", maghrib: "21:24", isha: "22:43"),
        PrayerDay(date: "22.07.", fajr: "3:33", shouruq: "5:03", zuhr: "13:18", asr: "17:34", maghrib: "21:23", isha: "22:43"),
        PrayerDay(date: "23.07.", fajr: "3:34", shouruq: "5:05", zuhr: "13:18", asr: "17:34", maghrib: "21:21", isha: "22:42"),
        PrayerDay(date: "24.07.", fajr: "3:35", shouruq: "5:06", zuhr: "13:18", asr: "17:33", maghrib: "21:20", isha: "22:41"),
        PrayerDay(date: "25.07.", fajr: "3:36", shouruq: "5:08", zuhr: "13:18", asr: "17:33", maghrib: "21:18", isha: "22:40"),
        PrayerDay(date: "26.07.", fajr: "3:37", shouruq: "5:09", zuhr: "13:18", asr: "17:32", maghrib: "21:17", isha: "22:39"),
        PrayerDay(date: "27.07.", fajr: "3:38", shouruq: "5:11", zuhr: "13:18", asr: "17:32", maghrib: "21:15", isha: "22:38"),
        PrayerDay(date: "28.07.", fajr: "3:38", shouruq: "5:12", zuhr: "13:18", asr: "17:31", maghrib: "21:14", isha: "22:37"),
        PrayerDay(date: "29.07.", fajr: "3:39", shouruq: "5:14", zuhr: "13:18", asr: "17:30", maghrib: "21:12", isha: "22:37"),
        PrayerDay(date: "30.07.", fajr: "3:39", shouruq: "5:15", zuhr: "13:18", asr: "17:30", maghrib: "21:11", isha: "22:36"),
        PrayerDay(date: "31.07.", fajr: "3:40", shouruq: "5:17", zuhr: "13:18", asr: "17:29", maghrib: "21:09", isha: "22:35"),
        PrayerDay(date: "01.08.", fajr: "3:41", shouruq: "5:18", zuhr: "13:18", asr: "17:28", maghrib: "21:07", isha: "22:34"),
        PrayerDay(date: "02.08.", fajr: "3:41", shouruq: "5:20", zuhr: "13:18", asr: "17:28", maghrib: "21:06", isha: "22:34"),
        PrayerDay(date: "03.08.", fajr: "3:42", shouruq: "5:22", zuhr: "13:18", asr: "17:27", maghrib: "21:04", isha: "22:33"),
        PrayerDay(date: "04.08.", fajr: "3:42", shouruq: "5:23", zuhr: "13:18", asr: "17:26", maghrib: "21:02", isha: "22:32"),
        PrayerDay(date: "05.08.", fajr: "3:43", shouruq: "5:25", zuhr: "13:18", asr: "17:25", maghrib: "21:00", isha: "22:32"),
        PrayerDay(date: "06.08.", fajr: "3:44", shouruq: "5:26", zuhr: "13:18", asr: "17:25", maghrib: "20:59", isha: "22:31"),
        PrayerDay(date: "07.08.", fajr: "3:44", shouruq: "5:28", zuhr: "13:17", asr: "17:24", maghrib: "20:57", isha: "22:30"),
        PrayerDay(date: "08.08.", fajr: "3:45", shouruq: "5:30", zuhr: "13:17", asr: "17:23", maghrib: "20:55", isha: "22:29"),
        PrayerDay(date: "09.08.", fajr: "3:45", shouruq: "5:31", zuhr: "13:17", asr: "17:22", maghrib: "20:53", isha: "22:29"),
        PrayerDay(date: "10.08.", fajr: "3:46", shouruq: "5:33", zuhr: "13:17", asr: "17:21", maghrib: "20:51", isha: "22:28"),
        PrayerDay(date: "11.08.", fajr: "3:47", shouruq: "5:35", zuhr: "13:17", asr: "17:20", maghrib: "20:49", isha: "22:27"),
        PrayerDay(date: "12.08.", fajr: "3:47", shouruq: "5:36", zuhr: "13:17", asr: "17:19", maghrib: "20:47", isha: "22:26"),
        PrayerDay(date: "13.08.", fajr: "3:48", shouruq: "5:38", zuhr: "13:17", asr: "17:18", maghrib: "20:45", isha: "22:26"),
        PrayerDay(date: "14.08.", fajr: "3:48", shouruq: "5:39", zuhr: "13:16", asr: "17:17", maghrib: "20:43", isha: "22:25"),
        PrayerDay(date: "15.08.", fajr: "3:49", shouruq: "5:41", zuhr: "13:16", asr: "17:16", maghrib: "20:41", isha: "22:24"),
        PrayerDay(date: "16.08.", fajr: "3:50", shouruq: "5:43", zuhr: "13:16", asr: "17:15", maghrib: "20:39", isha: "22:23"),
        PrayerDay(date: "17.08.", fajr: "3:50", shouruq: "5:44", zuhr: "13:16", asr: "17:14", maghrib: "20:37", isha: "22:23"),
        PrayerDay(date: "18.08.", fajr: "3:51", shouruq: "5:46", zuhr: "13:16", asr: "17:13", maghrib: "20:35", isha: "22:22"),
        PrayerDay(date: "19.08.", fajr: "3:52", shouruq: "5:48", zuhr: "13:15", asr: "17:12", maghrib: "20:33", isha: "22:21"),
        PrayerDay(date: "20.08.", fajr: "3:52", shouruq: "5:49", zuhr: "13:15", asr: "17:10", maghrib: "20:31", isha: "22:20"),
        PrayerDay(date: "21.08.", fajr: "3:53", shouruq: "5:51", zuhr: "13:15", asr: "17:09", maghrib: "20:29", isha: "22:20"),
        PrayerDay(date: "22.08.", fajr: "3:53", shouruq: "5:53", zuhr: "13:15", asr: "17:08", maghrib: "20:26", isha: "22:19"),
        PrayerDay(date: "23.08.", fajr: "3:54", shouruq: "5:54", zuhr: "13:14", asr: "17:07", maghrib: "20:24", isha: "22:17"),
        PrayerDay(date: "24.08.", fajr: "3:55", shouruq: "5:56", zuhr: "13:14", asr: "17:06", maghrib: "20:22", isha: "22:14"),
        PrayerDay(date: "25.08.", fajr: "3:55", shouruq: "5:58", zuhr: "13:14", asr: "17:04", maghrib: "20:20", isha: "22:11"),
        PrayerDay(date: "26.08.", fajr: "3:56", shouruq: "5:59", zuhr: "13:14", asr: "17:03", maghrib: "20:18", isha: "22:08"),
        PrayerDay(date: "27.08.", fajr: "3:56", shouruq: "6:01", zuhr: "13:13", asr: "17:02", maghrib: "20:15", isha: "22:05"),
        PrayerDay(date: "28.08.", fajr: "3:57", shouruq: "6:03", zuhr: "13:13", asr: "17:00", maghrib: "20:13", isha: "22:01"),
        PrayerDay(date: "29.08.", fajr: "3:59", shouruq: "6:04", zuhr: "13:13", asr: "16:59", maghrib: "20:11", isha: "21:58"),
        PrayerDay(date: "30.08.", fajr: "4:02", shouruq: "6:06", zuhr: "13:12", asr: "16:58", maghrib: "20:09", isha: "21:55"),
        PrayerDay(date: "31.08.", fajr: "4:04", shouruq: "6:08", zuhr: "13:12", asr: "16:56", maghrib: "20:06", isha: "21:52"),
        PrayerDay(date: "01.09.", fajr: "4:07", shouruq: "6:09", zuhr: "13:12", asr: "16:55", maghrib: "20:04", isha: "21:49"),
        PrayerDay(date: "02.09.", fajr: "4:09", shouruq: "6:11", zuhr: "13:11", asr: "16:53", maghrib: "20:02", isha: "21:46"),
        PrayerDay(date: "03.09.", fajr: "4:12", shouruq: "6:13", zuhr: "13:11", asr: "16:52", maghrib: "19:59", isha: "21:43"),
        PrayerDay(date: "04.09.", fajr: "4:14", shouruq: "6:14", zuhr: "13:11", asr: "16:50", maghrib: "19:57", isha: "21:41"),
        PrayerDay(date: "05.09.", fajr: "4:17", shouruq: "6:16", zuhr: "13:10", asr: "16:49", maghrib: "19:55", isha: "21:38"),
        PrayerDay(date: "06.09.", fajr: "4:19", shouruq: "6:18", zuhr: "13:10", asr: "16:48", maghrib: "19:52", isha: "21:35"),
        PrayerDay(date: "07.09.", fajr: "4:22", shouruq: "6:19", zuhr: "13:10", asr: "16:46", maghrib: "19:50", isha: "21:32"),
        PrayerDay(date: "08.09.", fajr: "4:24", shouruq: "6:21", zuhr: "13:09", asr: "16:44", maghrib: "19:48", isha: "21:29"),
        PrayerDay(date: "09.09.", fajr: "4:26", shouruq: "6:23", zuhr: "13:09", asr: "16:43", maghrib: "19:45", isha: "21:26"),
        PrayerDay(date: "10.09.", fajr: "4:29", shouruq: "6:24", zuhr: "13:09", asr: "16:41", maghrib: "19:43", isha: "21:23"),
        PrayerDay(date: "11.09.", fajr: "4:31", shouruq: "6:26", zuhr: "13:08", asr: "16:40", maghrib: "19:41", isha: "21:20"),
        PrayerDay(date: "12.09.", fajr: "4:33", shouruq: "6:28", zuhr: "13:08", asr: "16:38", maghrib: "19:38", isha: "21:17"),
        PrayerDay(date: "13.09.", fajr: "4:35", shouruq: "6:29", zuhr: "13:08", asr: "16:37", maghrib: "19:36", isha: "21:15"),
        PrayerDay(date: "14.09.", fajr: "4:38", shouruq: "6:31", zuhr: "13:07", asr: "16:35", maghrib: "19:34", isha: "21:12"),
        PrayerDay(date: "15.09.", fajr: "4:40", shouruq: "6:33", zuhr: "13:07", asr: "16:33", maghrib: "19:31", isha: "21:09"),
        PrayerDay(date: "16.09.", fajr: "4:42", shouruq: "6:34", zuhr: "13:07", asr: "16:32", maghrib: "19:29", isha: "21:06"),
        PrayerDay(date: "17.09.", fajr: "4:44", shouruq: "6:36", zuhr: "13:06", asr: "16:30", maghrib: "19:26", isha: "21:04"),
        PrayerDay(date: "18.09.", fajr: "4:46", shouruq: "6:38", zuhr: "13:06", asr: "16:28", maghrib: "19:24", isha: "21:01"),
        PrayerDay(date: "19.09.", fajr: "4:48", shouruq: "6:39", zuhr: "13:06", asr: "16:27", maghrib: "19:22", isha: "20:58"),
        PrayerDay(date: "20.09.", fajr: "4:50", shouruq: "6:41", zuhr: "13:05", asr: "16:25", maghrib: "19:19", isha: "20:55"),
        PrayerDay(date: "21.09.", fajr: "4:52", shouruq: "6:43", zuhr: "13:05", asr: "16:23", maghrib: "19:17", isha: "20:53"),
        PrayerDay(date: "22.09.", fajr: "4:54", shouruq: "6:44", zuhr: "13:04", asr: "16:22", maghrib: "19:15", isha: "20:50"),
        PrayerDay(date: "23.09.", fajr: "4:56", shouruq: "6:46", zuhr: "13:04", asr: "16:20", maghrib: "19:12", isha: "20:48"),
        PrayerDay(date: "24.09.", fajr: "4:58", shouruq: "6:48", zuhr: "13:04", asr: "16:18", maghrib: "19:10", isha: "20:45"),
        PrayerDay(date: "25.09.", fajr: "5:00", shouruq: "6:49", zuhr: "13:03", asr: "16:17", maghrib: "19:07", isha: "20:42"),
        PrayerDay(date: "26.09.", fajr: "5:02", shouruq: "6:51", zuhr: "13:03", asr: "16:15", maghrib: "19:05", isha: "20:40"),
        PrayerDay(date: "27.09.", fajr: "5:04", shouruq: "6:53", zuhr: "13:03", asr: "16:13", maghrib: "19:03", isha: "20:37"),
        PrayerDay(date: "28.09.", fajr: "5:06", shouruq: "6:55", zuhr: "13:02", asr: "16:11", maghrib: "19:00", isha: "20:35"),
        PrayerDay(date: "29.09.", fajr: "5:08", shouruq: "6:56", zuhr: "13:02", asr: "16:10", maghrib: "18:58", isha: "20:32"),
        PrayerDay(date: "30.09.", fajr: "5:10", shouruq: "6:58", zuhr: "13:02", asr: "16:08", maghrib: "18:56", isha: "20:30"),
        PrayerDay(date: "01.10.", fajr: "5:12", shouruq: "7:00", zuhr: "13:01", asr: "16:06", maghrib: "18:53", isha: "20:27"),
        PrayerDay(date: "02.10.", fajr: "5:14", shouruq: "7:01", zuhr: "13:01", asr: "16:04", maghrib: "18:51", isha: "20:25"),
        PrayerDay(date: "03.10.", fajr: "5:16", shouruq: "7:03", zuhr: "13:01", asr: "16:03", maghrib: "18:48", isha: "20:22"),
        PrayerDay(date: "04.10.", fajr: "5:18", shouruq: "7:05", zuhr: "13:00", asr: "16:01", maghrib: "18:46", isha: "20:20"),
        PrayerDay(date: "05.10.", fajr: "5:19", shouruq: "7:06", zuhr: "13:00", asr: "15:59", maghrib: "18:44", isha: "20:17"),
        PrayerDay(date: "06.10.", fajr: "5:21", shouruq: "7:08", zuhr: "13:00", asr: "15:57", maghrib: "18:41", isha: "20:15"),
        PrayerDay(date: "07.10.", fajr: "5:23", shouruq: "7:10", zuhr: "13:00", asr: "15:56", maghrib: "18:39", isha: "20:12"),
        PrayerDay(date: "08.10.", fajr: "5:25", shouruq: "7:12", zuhr: "12:59", asr: "15:54", maghrib: "18:37", isha: "20:10"),
        PrayerDay(date: "09.10.", fajr: "5:27", shouruq: "7:13", zuhr: "12:59", asr: "15:52", maghrib: "18:35", isha: "20:08"),
        PrayerDay(date: "10.10.", fajr: "5:28", shouruq: "7:15", zuhr: "12:59", asr: "15:50", maghrib: "18:32", isha: "20:05"),
        PrayerDay(date: "11.10.", fajr: "5:30", shouruq: "7:17", zuhr: "12:58", asr: "15:49", maghrib: "18:30", isha: "20:03"),
        PrayerDay(date: "12.10.", fajr: "5:32", shouruq: "7:19", zuhr: "12:58", asr: "15:47", maghrib: "18:28", isha: "20:01"),
        PrayerDay(date: "13.10.", fajr: "5:34", shouruq: "7:20", zuhr: "12:58", asr: "15:45", maghrib: "18:25", isha: "19:59"),
        PrayerDay(date: "14.10.", fajr: "5:36", shouruq: "7:22", zuhr: "12:58", asr: "15:43", maghrib: "18:23", isha: "19:56"),
        PrayerDay(date: "15.10.", fajr: "5:37", shouruq: "7:24", zuhr: "12:57", asr: "15:42", maghrib: "18:21", isha: "19:54"),
        PrayerDay(date: "16.10.", fajr: "5:39", shouruq: "7:26", zuhr: "12:57", asr: "15:40", maghrib: "18:19", isha: "19:52"),
        PrayerDay(date: "17.10.", fajr: "5:41", shouruq: "7:27", zuhr: "12:57", asr: "15:38", maghrib: "18:17", isha: "19:50"),
        PrayerDay(date: "18.10.", fajr: "5:42", shouruq: "7:29", zuhr: "12:57", asr: "15:37", maghrib: "18:14", isha: "19:48"),
        PrayerDay(date: "19.10.", fajr: "5:44", shouruq: "7:31", zuhr: "12:57", asr: "15:35", maghrib: "18:12", isha: "19:46"),
        PrayerDay(date: "20.10.", fajr: "5:46", shouruq: "7:33", zuhr: "12:56", asr: "15:33", maghrib: "18:10", isha: "19:44"),
        PrayerDay(date: "21.10.", fajr: "5:48", shouruq: "7:35", zuhr: "12:56", asr: "15:32", maghrib: "18:08", isha: "19:42"),
        PrayerDay(date: "22.10.", fajr: "5:49", shouruq: "7:36", zuhr: "12:56", asr: "15:30", maghrib: "18:06", isha: "19:40"),
        PrayerDay(date: "23.10.", fajr: "5:51", shouruq: "7:38", zuhr: "12:56", asr: "15:28", maghrib: "18:04", isha: "19:38"),
        PrayerDay(date: "24.10.", fajr: "5:53", shouruq: "7:40", zuhr: "12:56", asr: "15:27", maghrib: "18:02", isha: "19:36"),
        PrayerDay(date: "25.10.", fajr: "5:54", shouruq: "7:42", zuhr: "12:56", asr: "15:25", maghrib: "17:59", isha: "19:34"),
        PrayerDay(date: "26.10.", fajr: "5:56", shouruq: "7:44", zuhr: "12:56", asr: "15:23", maghrib: "17:57", isha: "19:32"),
        PrayerDay(date: "27.10.", fajr: "4:58", shouruq: "6:46", zuhr: "11:55", asr: "14:22", maghrib: "16:55", isha: "18:30"),
        PrayerDay(date: "28.10.", fajr: "4:59", shouruq: "6:47", zuhr: "11:55", asr: "14:20", maghrib: "16:53", isha: "18:28"),
        PrayerDay(date: "29.10.", fajr: "5:01", shouruq: "6:49", zuhr: "11:55", asr: "14:19", maghrib: "16:51", isha: "18:26"),
        PrayerDay(date: "30.10.", fajr: "5:03", shouruq: "6:51", zuhr: "11:55", asr: "14:17", maghrib: "16:49", isha: "18:25"),
        PrayerDay(date: "31.10.", fajr: "5:04", shouruq: "6:53", zuhr: "11:55", asr: "14:16", maghrib: "16:47", isha: "18:23"),
        PrayerDay(date: "01.11.", fajr: "5:06", shouruq: "6:55", zuhr: "11:55", asr: "14:14", maghrib: "16:46", isha: "18:21"),
        PrayerDay(date: "02.11.", fajr: "5:07", shouruq: "6:56", zuhr: "11:55", asr: "14:13", maghrib: "16:44", isha: "18:20"),
        PrayerDay(date: "03.11.", fajr: "5:09", shouruq: "6:58", zuhr: "11:55", asr: "14:11", maghrib: "16:42", isha: "18:18"),
        PrayerDay(date: "04.11.", fajr: "5:11", shouruq: "7:00", zuhr: "11:55", asr: "14:10", maghrib: "16:40", isha: "18:16"),
        PrayerDay(date: "05.11.", fajr: "5:12", shouruq: "7:02", zuhr: "11:55", asr: "14:08", maghrib: "16:38", isha: "18:15"),
        PrayerDay(date: "06.11.", fajr: "5:14", shouruq: "7:04", zuhr: "11:55", asr: "14:07", maghrib: "16:36", isha: "18:13"),
        PrayerDay(date: "07.11.", fajr: "5:15", shouruq: "7:06", zuhr: "11:55", asr: "14:06", maghrib: "16:35", isha: "18:12"),
        PrayerDay(date: "08.11.", fajr: "5:17", shouruq: "7:08", zuhr: "11:55", asr: "14:04", maghrib: "16:33", isha: "18:10"),
        PrayerDay(date: "09.11.", fajr: "5:18", shouruq: "7:09", zuhr: "11:55", asr: "14:03", maghrib: "16:31", isha: "18:09"),
        PrayerDay(date: "10.11.", fajr: "5:20", shouruq: "7:11", zuhr: "11:55", asr: "14:02", maghrib: "16:30", isha: "18:08"),
        PrayerDay(date: "11.11.", fajr: "5:21", shouruq: "7:13", zuhr: "11:55", asr: "14:00", maghrib: "16:28", isha: "18:06"),
        PrayerDay(date: "12.11.", fajr: "5:23", shouruq: "7:15", zuhr: "11:56", asr: "13:59", maghrib: "16:26", isha: "18:05"),
        PrayerDay(date: "13.11.", fajr: "5:25", shouruq: "7:17", zuhr: "11:56", asr: "13:58", maghrib: "16:25", isha: "18:04"),
        PrayerDay(date: "14.11.", fajr: "5:26", shouruq: "7:18", zuhr: "11:56", asr: "13:57", maghrib: "16:23", isha: "18:02"),
        PrayerDay(date: "15.11.", fajr: "5:27", shouruq: "7:20", zuhr: "11:56", asr: "13:56", maghrib: "16:22", isha: "18:01"),
        PrayerDay(date: "16.11.", fajr: "5:29", shouruq: "7:22", zuhr: "11:56", asr: "13:55", maghrib: "16:20", isha: "18:00"),
        PrayerDay(date: "17.11.", fajr: "5:30", shouruq: "7:24", zuhr: "11:56", asr: "13:54", maghrib: "16:19", isha: "17:59"),
        PrayerDay(date: "18.11.", fajr: "5:32", shouruq: "7:25", zuhr: "11:57", asr: "13:52", maghrib: "16:18", isha: "17:58"),
        PrayerDay(date: "19.11.", fajr: "5:33", shouruq: "7:27", zuhr: "11:57", asr: "13:51", maghrib: "16:16", isha: "17:57"),
        PrayerDay(date: "20.11.", fajr: "5:35", shouruq: "7:29", zuhr: "11:57", asr: "13:51", maghrib: "16:15", isha: "17:56"),
        PrayerDay(date: "21.11.", fajr: "5:36", shouruq: "7:31", zuhr: "11:57", asr: "13:50", maghrib: "16:14", isha: "17:55"),
        PrayerDay(date: "22.11.", fajr: "5:37", shouruq: "7:32", zuhr: "11:57", asr: "13:49", maghrib: "16:12", isha: "17:54"),
        PrayerDay(date: "23.11.", fajr: "5:39", shouruq: "7:34", zuhr: "11:58", asr: "13:48", maghrib: "16:11", isha: "17:53"),
        PrayerDay(date: "24.11.", fajr: "5:40", shouruq: "7:36", zuhr: "11:58", asr: "13:47", maghrib: "16:10", isha: "17:52"),
        PrayerDay(date: "25.11.", fajr: "5:42", shouruq: "7:37", zuhr: "11:58", asr: "13:46", maghrib: "16:09", isha: "17:52"),
        PrayerDay(date: "26.11.", fajr: "5:43", shouruq: "7:39", zuhr: "11:59", asr: "13:46", maghrib: "16:08", isha: "17:51"),
        PrayerDay(date: "27.11.", fajr: "5:44", shouruq: "7:41", zuhr: "11:59", asr: "13:45", maghrib: "16:07", isha: "17:50"),
        PrayerDay(date: "28.11.", fajr: "5:45", shouruq: "7:42", zuhr: "11:59", asr: "13:44", maghrib: "16:06", isha: "17:50"),
        PrayerDay(date: "29.11.", fajr: "5:47", shouruq: "7:44", zuhr: "12:00", asr: "13:44", maghrib: "16:05", isha: "17:49"),
        PrayerDay(date: "30.11.", fajr: "5:48", shouruq: "7:45", zuhr: "12:00", asr: "13:43", maghrib: "16:05", isha: "17:48"),
        PrayerDay(date: "01.12.", fajr: "5:49", shouruq: "7:47", zuhr: "12:00", asr: "13:43", maghrib: "16:04", isha: "17:48"),
        PrayerDay(date: "02.12.", fajr: "5:50", shouruq: "7:48", zuhr: "12:01", asr: "13:42", maghrib: "16:03", isha: "17:47"),
        PrayerDay(date: "03.12.", fajr: "5:51", shouruq: "7:49", zuhr: "12:01", asr: "13:42", maghrib: "16:02", isha: "17:47"),
        PrayerDay(date: "04.12.", fajr: "5:52", shouruq: "7:51", zuhr: "12:01", asr: "13:41", maghrib: "16:02", isha: "17:47"),
        PrayerDay(date: "05.12.", fajr: "5:54", shouruq: "7:52", zuhr: "12:02", asr: "13:41", maghrib: "16:01", isha: "17:46"),
        PrayerDay(date: "06.12.", fajr: "5:55", shouruq: "7:54", zuhr: "12:02", asr: "13:41", maghrib: "16:01", isha: "17:46"),
        PrayerDay(date: "07.12.", fajr: "5:56", shouruq: "7:55", zuhr: "12:03", asr: "13:41", maghrib: "16:00", isha: "17:46"),
        PrayerDay(date: "08.12.", fajr: "5:57", shouruq: "7:56", zuhr: "12:03", asr: "13:40", maghrib: "16:00", isha: "17:46"),
        PrayerDay(date: "09.12.", fajr: "5:58", shouruq: "7:57", zuhr: "12:03", asr: "13:40", maghrib: "16:00", isha: "17:46"),
        PrayerDay(date: "10.12.", fajr: "5:59", shouruq: "7:58", zuhr: "12:04", asr: "13:40", maghrib: "16:00", isha: "17:46"),
        PrayerDay(date: "11.12.", fajr: "6:00", shouruq: "7:59", zuhr: "12:04", asr: "13:40", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "12.12.", fajr: "6:00", shouruq: "8:00", zuhr: "12:05", asr: "13:40", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "13.12.", fajr: "6:01", shouruq: "8:02", zuhr: "12:05", asr: "13:40", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "14.12.", fajr: "6:02", shouruq: "8:02", zuhr: "12:06", asr: "13:40", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "15.12.", fajr: "6:03", shouruq: "8:03", zuhr: "12:06", asr: "13:41", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "16.12.", fajr: "6:04", shouruq: "8:04", zuhr: "12:07", asr: "13:41", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "17.12.", fajr: "6:04", shouruq: "8:05", zuhr: "12:07", asr: "13:41", maghrib: "15:59", isha: "17:46"),
        PrayerDay(date: "18.12.", fajr: "6:05", shouruq: "8:06", zuhr: "12:08", asr: "13:41", maghrib: "16:00", isha: "17:47"),
        PrayerDay(date: "19.12.", fajr: "6:06", shouruq: "8:06", zuhr: "12:08", asr: "13:42", maghrib: "16:00", isha: "17:47"),
        PrayerDay(date: "20.12.", fajr: "6:06", shouruq: "8:07", zuhr: "12:09", asr: "13:42", maghrib: "16:00", isha: "17:47"),
        PrayerDay(date: "21.12.", fajr: "6:07", shouruq: "8:08", zuhr: "12:09", asr: "13:42", maghrib: "16:01", isha: "17:48"),
        PrayerDay(date: "22.12.", fajr: "6:07", shouruq: "8:08", zuhr: "12:10", asr: "13:43", maghrib: "16:01", isha: "17:48"),
        PrayerDay(date: "23.12.", fajr: "6:08", shouruq: "8:09", zuhr: "12:10", asr: "13:43", maghrib: "16:02", isha: "17:49"),
        PrayerDay(date: "24.12.", fajr: "6:08", shouruq: "8:09", zuhr: "12:11", asr: "13:44", maghrib: "16:02", isha: "17:49"),
        PrayerDay(date: "25.12.", fajr: "6:09", shouruq: "8:10", zuhr: "12:11", asr: "13:45", maghrib: "16:03", isha: "17:50"),
        PrayerDay(date: "26.12.", fajr: "6:09", shouruq: "8:10", zuhr: "12:12", asr: "13:45", maghrib: "16:04", isha: "17:51"),
        PrayerDay(date: "27.12.", fajr: "6:09", shouruq: "8:10", zuhr: "12:12", asr: "13:46", maghrib: "16:04", isha: "17:51"),
        PrayerDay(date: "28.12.", fajr: "6:10", shouruq: "8:10", zuhr: "12:13", asr: "13:47", maghrib: "16:05", isha: "17:52"),
        PrayerDay(date: "29.12.", fajr: "6:10", shouruq: "8:10", zuhr: "12:13", asr: "13:47", maghrib: "16:06", isha: "17:53"),
        PrayerDay(date: "30.12.", fajr: "6:10", shouruq: "8:10", zuhr: "12:14", asr: "13:48", maghrib: "16:07", isha: "17:53"),
        PrayerDay(date: "31.12.", fajr: "6:10", shouruq: "8:10", zuhr: "12:14", asr: "13:49", maghrib: "16:08", isha: "17:54")
    ]
    
    var todaysPrayerTimes: PrayerDay? {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM."
        let today = formatter.string(from: Date())
        return prayerTimes.first { $0.date == today }
    }
        
    var body: some View {        
        VStack {
            Text("Gebetszeiten")
                .padding()
                .font(.title)
            List{
                if let times = todaysPrayerTimes {
                    Text("Tag: \(times.date)2025")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.top)
                        .frame(maxWidth: .infinity, alignment: .center)
                    VStack{
                        HStack(spacing: 10){
                            PrayerTime(prayerName: "Fajr", prayerTime: times.fajr)
                            PrayerTime(prayerName: "Dhuhr", prayerTime: times.zuhr)
                            PrayerTime(prayerName: "Asr", prayerTime: times.asr)
                        }
                        HStack(spacing: 10){
                            PrayerTime(prayerName: "Maghrib", prayerTime: times.maghrib)
                            PrayerTime(prayerName: "Isha", prayerTime: times.isha)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                }else {
                    Text("⚠️ Zurzeit keine Gebetszeiten verfügbar.")
                        .foregroundColor(.red)
                        .padding()
                }
                VStack{
                    PrayerTime(prayerName: "1. Freitagsgebet", prayerTime: "13:30");
                    PrayerTime(prayerName: "2. Freitagsgebet", prayerTime: "14:30");
                }
                .frame(maxWidth: .infinity, alignment: .center)
            }
        }
    .padding()
    .navigationTitle("Gebetszeiten")
    }
}
#Preview {
    PrayerView()
}
