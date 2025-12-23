var now = new Date();
var days = new Array(
  'Sun','Mon','Tue', 'Wed','Thu','Fri','Sat');
var months = new Array(
  'Jan','Feb','Mar','Apr','May', 'Jun','Jul','Aug','Sep','Oct', 'Nov','Dec');
var date = ((now.getDate()<10) ? "0" : "")+ now.getDate();
  function fourdigits(number)	{
    return (number < 1000) ? number + 1900 : number;}
today =  days[now.getDay()] + ", " +
  months[now.getMonth()] + " " +
  date + ", " +
    (fourdigits(now.getYear()));
document.write(today);
