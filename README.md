# Vaccine1
먼저 총 기본 페이지 header , nav,  section, footer 4개의 파일을 만들어줍니다. <br>
그리고 이 4개를 합한 홈화면의 index파일<br>
값을 입력할 수 있는 페이지와 입력한 값을 오라클에 보내는 페이지 vaccine_reservation.jsp 와 insert_reservation.jsp 파일을 만듭니다.<br>
예약번호를 입력받는 페이지인 search_reservation.jsp, 예약번호 중 해당 번호에 해당하는 데이터를 불러오거나 해당 번호가 없을 경우 결과가 없다는걸 알려주는 search_reservation_table.jsp  총 2개의 파일을 만듭니다. <br>
테이블은 총 3개로, Jumin,hosp 테이블에 들어갈 데이터는 오라클에서만 넣어야하며 Vaccresv 테이블 같은 경우 따로 삽입될 데이터를 오라클 이나 폼화면에서 넣어야합니다. <br>

백신예약 화면  <br> 
<img width="1279" alt="image" src="https://user-images.githubusercontent.com/102115231/201809675-ff0fbda7-94fd-4354-a9f5-1c5596aa365f.png"> <br>
form 태그 내에 table 태그를 통한 데이터를 입력 받는 텍스트박스를 만든 후, 그리고 만들어 놓은 sql문을 통해 예약번호를 자동으로 입력받도록 하고 나머지를 입력하면 된다.  <br>
그리고 만약 만약 저 텍스트 박스 중 비어 있는 곳이 있는 상황에서 등록 버튼을 누르게 되면 비어 있는 곳에 데이터가 입력 되지 않았다 알림창이 뜨도록 한다. <br>
<img width="388" alt="image" src="https://user-images.githubusercontent.com/102115231/201844271-f618b922-f1f4-435d-8d78-91c4bcfde0bd.png"> <br>
(예약번호 자동 발생 코드) <br>
<img width="398" alt="image" src="https://user-images.githubusercontent.com/102115231/201844566-54dbf2bc-52ac-4e29-bb88-e8976f94f022.png"> <br>
(유효성 검사 코드 만약 하나라도 입력되지 않으면 작동X) <br>
<img width="392" alt="image" src="https://user-images.githubusercontent.com/102115231/201845484-36bc02c7-28ee-4b49-856f-30975f95becd.png"> <br>
(페이지내에서 받은 값을 그에 맞는 형태로 오라클에 보내주는 코드) <br>
<img width="1280" alt="image" src="https://user-images.githubusercontent.com/102115231/201846051-e855cc04-6fb6-4072-8769-295886341e4c.png"> <br>
(리스트) <br>
<img width="1280" alt="image" src="https://user-images.githubusercontent.com/102115231/201846364-1f29431e-ebee-4da5-9b1d-369e7d8ebd94.png"> <br>
예약 번호를 통해 대상을 조회하는 페이지입니다. 리스트에 내에 있는 값이 있을 경우 그에 맞는 대상의 정보가 나오게 되고 값이 없는 경우에는 없다는 화면이 나온다. <br>
<img width="378" alt="image" src="https://user-images.githubusercontent.com/102115231/201848065-1a083465-658a-4641-a273-4f1d29bfd781.png"> <br>
 if를 사용해서 값이 존재하면 조회가 되고 아니면 없는 표시가 나오 했습니다. <br>
<img width="546" alt="image" src="https://user-images.githubusercontent.com/102115231/201848453-3b83639b-d30b-4d49-9941-0e0f4ff472c6.png"> <br>
대상 조회에 사용된 쿼리문입니다. 주민번호 7번째 자리가 1이면 남 2면 여자로 표시되고, 병원코드와 백신코드는 각자  가,나,다 로 바뀝니다. <br>





