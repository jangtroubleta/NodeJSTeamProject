if(login) {
  const id = document.querySelector('#user_id').value;
  if(id<=5) {
    getMember(id);
    document.getElementById('dot'+id).style.backgroundColor="#717171";
    function patch_start() {
      var newComm = prompt('새로운 코멘트');
      try {
        if(newComm.trim()=="") {
          return alert('내용을 반드시 입력하세요.');
        }
      } catch (error) {
        return alert('내용을 반드시 입력하세요.');
      }
      var newRes = prompt('새로운 각오');
      try {
        if(newRes.trim()=="") {
          return alert('내용을 반드시 입력하세요.');
        }
      } catch (error) {
        return alert('내용을 반드시 입력하세요.');
      }
      fetch('/member/'+id,{
        headers: {
          'Accept':'application/json',
          'Content-Type':"application/json"
        },
        method:'PATCH',
        body:JSON.stringify({
          m_comm: newComm,
          m_res: newRes
        })
      })
      .then((result)=>{
        if(result.status=='200') {
          location.href='/menu1';
        }
      })
      .catch((err)=>{
        console.error('수정 중 에러 발생' + err.message);
      })
    }
  } else {
    getMember(1);
    document.getElementById('dot1').style.backgroundColor="#717171";
    document.getElementById('patch_icon').style.display="none";
  }
} else {
  getMember(1);
  document.getElementById('dot1').style.backgroundColor="#717171";
}

function getMember(id) {
  for(let i=1;i<=5;i++) {
    if(i!=id) {
      document.getElementById('dot'+i).style.backgroundColor="#bbb"
    } else {
      document.getElementById('dot'+i).style.backgroundColor="#717171"
    }
  }
  fetch('/member/'+id,{method:'GET'}).then((res)=>{
    if(res.status='200') {
      return res.json();
    }
  })
  .then((result)=>{
    document.getElementById('member_name').innerHTML= '';
    document.getElementById('member_num').innerHTML= '';
    document.getElementById('member_comm').innerHTML= '';
    document.getElementById('member_res').innerHTML= '';
    document.getElementById('member_image').src= '';
    document.getElementById('member_name').innerHTML= result.m_name;
    document.getElementById('member_num').innerHTML= result.m_num;
    document.getElementById('member_comm').innerHTML= result.m_comm;
    document.getElementById('member_res').innerHTML= result.m_res;
    document.getElementById('member_image').src= result.m_img;
  })
  .catch((err)=>{
    console.error('fetch호출 에러발생'+err.message);
  })
}