# Vaccine1
먼저 총 기본 페이지 header , nav,  section, footer 4개의 파일을 만들어줍니다. <br>
그리고 이 4개를 합한 홈화면의 index파일<br>
값을 입력할 수 있는 페이지와 입력한 값을 오라클에 보내는 페이지 vaccine_reservation.jsp 와 insert_reservation.jsp 파일을 만듭니다.<br>
예약번호를 입력받는 페이지인 search_reservation.jsp, 예약번호 중 해당 번호에 해당하는 데이터를 불러오거나 해당 번호가 없을 경우 결과가 없다는걸 알려주는 search_reservation_table.jsp  총 2개의 파일을 만듭니다. <br>
테이블은 총 3개로, Jumin,hosp 테이블에 들어갈 데이터는 오라클에서만 넣어야하며 Vaccresv 테이블 같은 경우 따로 삽입될 데이터를 오라클 이나 폼화면에서 넣어야합니다. <br>

index 기본 화면
<img width="1280" alt="image" src="https://user-images.githubusercontent.com/102115231/201797593-5700da60-6628-4bf2-b1c7-c41e90032a7d.png">  <br>
백신예약 화면  <br> 
<img width="1280" alt="image" src="https://user-images.githubusercontent.com/102115231/201798949-6c8e8295-86b4-4921-a431-0b745fc18650.png"> <br>
form 태그 내에 table 태그를 통한 데이터를 입력 받는 텍스트박스를 만든 후, 그리고 만들어 놓은 sql문을 통해 예약번호를 자동으로 입력받도록 하고 나머지를 입력하면 된다.  <br>
그리고 만약 만약 저 텍스트 박스 중 비어 있는 곳이 있는 상황에서 등록 버튼을 누르게 되면 비어 있는 곳에 데이터가 입력 되지 않았다 알림창이 뜨도록 한다.
