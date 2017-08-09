function change(id)
{
   var cname=document.getElementById(id).className;
   var ab=document.getElementById(id+"_hidden").value;
   document.getElementById(cname+"rating").innerHTML=ab;

   var ajax_location = document.getElementById('ajax_location').value;
   var base_url = document.getElementById('base_url').value;
   var event_id = document.getElementById('event_id').value;

   for(var i=ab;i>=1;i--)
   {
      document.getElementById(cname+i).src=base_url + "/img/star2.png";
   }

   var id=parseInt(ab)+1;
   for(var j=id;j<=5;j++)
   {
      document.getElementById(cname+j).src=base_url + "/img/star1.png";
   }

   var posting = $.post(ajax_location, {'rate' : ab, 'event_id' : event_id});

   posting.done(function(data) {
      $('#result').html(data);
   });

}

function speaker(id) {
    var cname=document.getElementById(id).className;
    var ab=document.getElementById(id+"_hidden").value;
    document.getElementById(cname+"rating").innerHTML=ab;

    var ajax_location = document.getElementById('ajax_location').value;
    var base_url = document.getElementById('base_url').value;
    var speaker_id = document.getElementById('speaker_id').value;

    for(var i=ab;i>=1;i--)
    {
        document.getElementById(cname+i).src=base_url + "/img/star2.png";
    }

    var id=parseInt(ab)+1;
    for(var j=id;j<=5;j++)
    {
        document.getElementById(cname+j).src=base_url + "/img/star1.png";
    }

    var posting = $.post(ajax_location, {'rate' : ab, 'speaker_id' : speaker_id});

    posting.done(function(data) {
        $('#result').html(data);
    });

}