![web-logo9](https://github.com/0314pie/dima3-web/assets/153475125/2c2b2362-b503-4e7f-a73c-54de92465a98)

# HScode Zoom(HSCZ)
한국무역협회 디지털 마스터 3기 2차 웹개발 프로젝트

![image](https://github.com/0314pie/dima3-web/assets/153475125/0b8e0e48-291e-427b-b1d9-4030386b28b1)


## 🖥️ 프로젝트 개요
- 개발기간: 2024.03.28~2024.05.03
- 개발인원: 이현서, 강민서, 심세현, 오지현, 전하늘
- 개발환경: Java 17, STS 3.2.3, Springboot ,Oracle DB
- HS 코드 예측 모델을 사용한 HS 코드 추천 및 관세 종합정보 플랫폼 개발
- HS CODE 추천, 무역뉴스, FTA 페이지 구현, 메인페이지 제작

## ⌨️ 기술스택
<img src="https://img.shields.io/badge/java-007396?style=for-the-badge&logo=java&logoColor=white"> <img src="https://img.shields.io/badge/python-3776AB?style=for-the-badge&logo=python&logoColor=white"> <img src="https://img.shields.io/badge/html5-E34F26?style=for-the-badge&logo=html5&logoColor=white"> <img src="https://img.shields.io/badge/css-1572B6?style=for-the-badge&logo=css3&logoColor=white"> <img src="https://img.shields.io/badge/javascript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black"> <img src="https://img.shields.io/badge/jquery-0769AD?style=for-the-badge&logo=jquery&logoColor=white"> <img src="https://img.shields.io/badge/oracle-F80000?style=for-the-badge&logo=oracle&logoColor=white">  
<img src="https://img.shields.io/badge/springboot-6DB33F?style=for-the-badge&logo=springboot&logoColor=white"> <img src="https://img.shields.io/badge/bootstrap-7952B3?style=for-the-badge&logo=bootstrap&logoColor=white"> <img src="https://img.shields.io/badge/github-181717?style=for-the-badge&logo=github&logoColor=white"> <img src="https://img.shields.io/badge/git-F05032?style=for-the-badge&logo=git&logoColor=white"> <img src="https://img.shields.io/badge/fontawesome-339AF0?style=for-the-badge&logo=fontawesome&logoColor=white"> <img src="https://img.shields.io/badge/gradle-02303A?style=for-the-badge&logo=gradle&logoColor=white">

## 📑 프로젝트 소개
- 수출입업무에 필요한 모든 정보를 통합적으로 제공하는 무역정보 전문 웹 플랫폼
- 제품 설명 입력을 통해 HS코드 TOP3 추천
- HS코드에 부합하는 관세율, 수출입 요건, TOP5 품목별 통계 정보와 더불어 무역 뉴스, 국가별 통계 등 제공
- 관세사와의 무료 상담으로 전문가와의 연결 가능
  

## 🧩 시스템 아키텍쳐
![image](https://github.com/0314pie/dima3-web/assets/153475125/5df45980-bb8c-4748-9a7d-7fc2cacaf8fe)


## ⚙️ 주요 기능
### HS코드 추천 기능
- HS코드 예측 모델을 FastAPI 서버로 구현하여 스프링 서버와 연결
- 관세청 UNIPASS API 사용하여 관세 정보 제공
- 사용자가 상품설명 입력시 예측 모델이 상위 3개의 HS코드 4자리 추천
- HS코드 선택시 선택한 4자리 세번에 대한 10자리 세번 목록, 품목별 5개년 통계 정보 제공
- 10자리 세번 선택시 해당 세번의 관세 정보, 수출입 정보 등 제공

### 관세사 상담 기능
- 관세사회에 등록된 관세사 연락처 목록 제공
- HS코드 검색에 대한 결과의 세율에 대한 구체적인 질문 업로드 시 관세사의 답변을 받을 수 있음
- 사용자가 마음에 드는 관세사 답변 채택하여 채택수가 많은 상위 관세사 정보가 메인페이지에 노출

### 부가 기능
- 무역 통계: 한국 및 주요 수출입국의 무역 통계 정보를 amcharts 라이브러리를 사용하여 시각화하여 제공
- 무역 뉴스: 네이버 Search API를 활용하여 무역관련 뉴스 정보 제공
- FTA정보: 원산지결정기준,  FTA 협정국 정보, 세율정보, 수출입활용정보 제공
- 관세환율: 관세청 UNIPASS API 사용하여 주간 관세 고시환율 제공
