### 계산기 앱 

#### 1) 사용 기술
- 계산기 키패드 UI
- 나누기, 곱하기, 빼기, 더하기 연산
- 누적 연산
- ac 버튼으로 초기화

#### 2) 기본 개념
##### (1) UIStackView
열 또는 행에 View 들의 묶음을 배치할 수 있는 간소화된 인터페이스
복잡한 ui 를 만들면서 view object에 일일이 제약조건을 걸면 너무 복잡해질 수 있고 관리하기 어려움
스택뷰를 사용하면 오토레이아웃 제약조건을 많이 걸지 않아도 구현 가능


스택 뷰는 내부의 서브 뷰 배치를 위한 속성값을 가지고 있다.

- axis
Vertical : 헹이 추가된다.
Horizontal : 열이 추가된다.

- distribution
스택뷰 안에 들어가는 뷰들의 사이즈를 어떻게 분배할지 결정하는 속성
Fill : 스택뷰를 채우기 위해 서브뷰의 크기가 조정된다. 크기가 초과될 경우 compression resistance priority 에 따라 서브뷰의 크기가 줄어들고 공간이 남는다면 hugging priority 에 따라서 서브뷰의 크기가 늘어난다.
Fill equally: 
Fill proportionally : 스택뷰의 원래 비율에 비례하여 채운다
Equal spacing
Equal centering: 스택뷰의 센터 끼리 가진 간격이 일정해진다

- alignment
스택뷰의 서브뷰들을 어떤식으로 정렬할지 결정하는 속성
Fill : d-flex의 fill 이랑 같음, 서브뷰가 공간을 꽉 채움
Leading : d-flex start
Top
First baseline : horizontal stack view 에서만 사용할 수 있다
Center
Trailing : d-flex end
Bottom
Last baseline

- spacing
스택뷰 안에 들어가는 서브 뷰들의 간격을 조정하는 속성



——
커스텀 뷰의 속성값을 스토리보드에서 바로 수정되게 하고 
수정된 값이 실시간으로 스토리보드에 반영되게 하는 법
(2) IBDesignables
컴파일된 속성을 실시간으로 스토리 보드에 반영해준다.
남발하면 빌드되며 버벅이는등 부하를 줄 수 있다.
(3) IBInspectable
커스텀한 ui 컴포넌트의 속성을 inspector 에서 변경할 수 있게 한다.

#### 3) 새로 배운 것들
-
0
123
0의 길이를 123이 차지하고 있는 만큼 늘리고 싶을 때,
0 우클릭 드래그 해서 3에게 연결한 후 , trailing 하니 align 되면서 길이가 늘어났다.

- 스택뷰의 bottom 제약조건의 priority 를 750으로 맞춘 이유는 해상도가 커질 수록 버튼의 크기가 커지게 되는데
버튼이 커지면서 공간이 부족해지기 때문에 레이아웃이 깨진다.
(버튼이 1:1 비율로 크기가 정해지니까)
그래서 bottom 제약조건의 우선순위를 낮춰 화면 해상도에 따라서 스택뷰의 높이가 조절되게 한다.
(현재 버튼들이 vertical 하게 쌓여있기 때문에)
=> vertical stack 뷰를 화면에 맞게 사이즈 조정을 한 후에 bottom space 의 간격을 조정한다는 뜻

- 커스텀한 ui 컴포넌트 만들기
a. 코코아 터치 클래스를 만든다, 내가 상속하고 싶은 컴포넌트를 suprer class 로 지정한다
b. 속성값을 computed prop 으로 설정한다. Didset 사용하여 값 변경을 감지하고 컴포넌트의 속성 값을 준다.
c. 위와 같은 속성값을 Inspector 에서 관리할 수 있도록 prop 멤버에 @IBInspectable 어노테이션을 준다.
d. 커스텀 컴포넌트의 변화가 실시간으로 스토리보드에 반영되도록 클래스에 @IBDesignable 어노테이션을 준다.

- if statement 에서 , 로 expression 을 나열할 수 있다.
- Double.truncatingRemainder(dividingBy: number). number로 나눈 나머지 값을 반환한다


