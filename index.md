---
marp: true
theme: uncover
# backgroundColor: #fff
class:
- lead
- invert
---

# **순돌이 아빠는 팅커러**

![bg](./img/background.webp)

2023년 5월

**이 호 민**

---

## 발표자 소개

![bg left:40% 80%](./img/hangulclock.jpg)

* 무난히? 남고 → 공대→ 군대 테크트리를 탄 공돌이
* 소프트웨어 엔지니어가 직업
* [한글시계](http://www.youtube.com/watch?v=ApymC7qAVTI) 창시자

---

## 팅커러

![bg left:40% 80%](./img/braille_printer_hw__0006.jpg)

> 손으로 실험하고, 만들고, 수리하는 것을 즐기는 사람 <!--fit-->

❌ ~~Thinker~~
✅ Tinkerer

---

## 역사상 유명한 Tinkerer의 예

* 레오나르도 다 빈치
* 토마스 에디슨
* 스티브 잡스

---

# 발표 내용

---

## 발표자의 Tinkering 예시:
- ESC pedal
- SingleSide Drawdio
- 한글시계

---

## 소개할 손재주

- PCB 에칭
- Arduino (MCU + 코딩)
- 아크릴 레이져 커팅

---

## ESC pedal

![bg right:40% 80%](./img/esc_pedal.jpg)

발로 밟는 ESC 키

---


## 모방은 창조의 어머니

![bg left:40% 80%](./img/usb_enter.png)

---

## 재료 수급

- 미싱페달
- 아두이노
- 오디오잭

---

## 아두이노?

![bg left 70%](./img/arduino_leonardo.svg)

> Arduino는 사용하기 쉬운 하드웨어 및 소프트웨어를 기반으로 하는 오픈 소스 전자 플랫폼입니다.

---



- 여러 특징을 가진 HW 중 골라 쓸 수 있음
- 프로토타이핑을 위해 USB기능이 있는 
[Arduino Leonardo](https://docs.arduino.cc/hardware/leonardo)를 사용

---

아두이노 코드

```cpp
#include <Keyboard.h>

#define PIN_PEDAL 8
char lastPress = 0;

void setup() {
  pinMode(PIN_PEDAL, INPUT_PULLUP);

  Keyboard.begin();
}

void loop() {
  if (digitalRead(PIN_PEDAL) == HIGH) {
    if (lastPress == 1) {
      lastPress = 0;
      Keyboard.releaseAll();
    }
  } else {
    if (lastPress == 0) {
      lastPress = 1;
      Keyboard.press(KEY_ESC);
    }
  }
  delay(100);
}
```
---

## 오늘의 교훈

**다음의 가치는 측정불가:**
* 세상에 하나밖에 없는 물건을 만들어 가질 수 있음
* 만드는 과정의 즐거움

---

## 진짜 교훈

> **왠만하면 사서 쓰는게 낫다**

---

## 감사의 인사

TBU: 발표자의 정보와 연락처 제공
감사의 인사와 질문을 받을 준비가 되었다는 메시지 전달