new Selectr("#default"),
new Selectr("#multiSelect",{multiple:!0}),

new Selectr("#taggableSelect",{taggable:!0,tagSeperators:[",","|"]});
var hueb=new Huebee(".color-input",{setBGColor:!0,saturations:3}),elem=document.querySelector('input[name="foo"]'),
regExpMask=(new Datepicker(elem,{}),
elem=document.getElementById("inline_calendar"),

new Datepicker(elem,{}),elem=document.getElementById("DateRange"),
new DateRangePicker(elem,{}),
IMask(document.getElementById("regexp-mask"),{mask:/^[1-6]\d{0,5}$/})),startPhoneMask=IMask(document.getElementById("start-phone-mask"),
{mask:"+{7}(000)000-00-00"}).on("accept",function(){
	document.getElementById("start-phone-complete").style.display="",
	document.getElementById("start-phone-unmasked").innerHTML=startPhoneMask.unmaskedValue}).on("complete",function(){
		document.getElementById("start-phone-complete").style.display="inline-block"}),overwriteMask=IMask(
		document.getElementById("date-overwrite-mask"),
		{mask:Date,lazy:!1,overwrite:!0,autofix:!0,blocks:{d:{mask:IMask.MaskedRange,placeholderChar:"d",from:1,to:31,maxLength:2},
		m:{mask:IMask.MaskedRange,placeholderChar:"m",from:1,to:12,maxLength:2},
		Y:{mask:IMask.MaskedRange,placeholderChar:"y",from:1900,to:2999,maxLength:4}}}),
		momentFormat=(IMask(document.getElementById("uppercase-mask"),{mask:/^\w+$/,prepare:function(e){return e.toUpperCase()},
		commit:function(e,t){t._value=e.toLowerCase()}}),"YYYY/MM/DD HH:mm"),
		momentMask=IMask(document.getElementById("moment-mask"),{mask:Date,pattern:momentFormat,lazy:!1,min:new Date(1970,0,1),
		max:new Date(2030,0,1),format:function(e){return moment(e).format(momentFormat)},
		parse:function(e){return moment(e,momentFormat)},blocks:{YYYY:{mask:IMask.MaskedRange,from:1970,to:2030},
		MM:{mask:IMask.MaskedRange,from:1,to:12},DD:{mask:IMask.MaskedRange,from:1,to:31},
		HH:{mask:IMask.MaskedRange,from:0,to:23},
		m:{mask:IMask.MaskedRange,from:0,to:59}}}).on("accept",function(){document.getElementById("moment-value").innerHTML=momentMask.masked.date||"-"});