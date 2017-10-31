var dates = document.getElementsByClassName("createdDate");

for(var i = 0; i < dates.length; i++){
    var date = dates[i].innerHTML;
    var formattedDate = moment(date, "YYYY-MM-DD h:mm:ss").fromNow();
    dates[i].innerHTML = formattedDate;
}