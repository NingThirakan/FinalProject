# Blue App

พัฒนาแอปพลิเคชันด้วย Flutter

## ผู้พัฒนาแอปพลิเคชัน
- รหัสนิสิต 60022707 นางสาวธีรกานต์ กุณาหล่าย

## รายละเอียดระบบ

### หน้าเข้าสู่ระบบ

![login](https://user-images.githubusercontent.com/62759459/97839373-ac2b4380-1d14-11eb-8438-d3fb78b8a56c.png)
- หน้า login ได้ใช้ Firebase Realtime Database เพื่อเข้าสู่ระบบใช้งาน 
  - ผู้ใช้มีบัญชีแล้วสามารถกรอกชื่อผู้ใช้และรหัสผ่าน เพื่อเข้าสู่ระบบใช้งาน
  - ผู้ใช้ที่ยังไม่บัญชี สามารถกดที่ปุ่ม "Sign up" 

### หน้าสมัครสมาชิก

![register](https://user-images.githubusercontent.com/62759459/97839419-c36a3100-1d14-11eb-8c70-73f10ea66eb6.png)
- หน้าสมัครสมาชิก ได้ใช้ Firebase Realtime Database เพื่อเข้าสู่ระบบใช้งาน 
  - ผู้ใช้ต้องกรอกชื่อ ชื่อผู้ใช้ รหัสผ่าน และยืนยันรหัสผ่าน อย่างน้อย 6 ตัว เมื่อสมัครแล้วก็กดที่ปุ่ม "SING UP"
  - หากมีบัญชีแล้วให้กดปุ่ม "Sign in" เพื่อไปยังหน้า Login
  
### Firebase Realtime Database ใช้กับหน้าเข้าสู่ระบบและหน้าสมัครสมาชิก 
![user](https://user-images.githubusercontent.com/62759459/97839918-aeda6880-1d15-11eb-8289-0251267ad67a.png)

### หน้าหลัก

![main1](https://user-images.githubusercontent.com/62759459/97839948-c285cf00-1d15-11eb-82fc-a127a1f00e5c.png)

![main2](https://user-images.githubusercontent.com/62759459/97839981-d3cedb80-1d15-11eb-8087-04932e47a2d4.png)
- หน้า Menu
  - หน้านี้จะแสดงรูปภาพอาหารและชื่ออาหาร
  - ให้ผู้ใช้กดที่รูปอาหารเพื่อไปยังหน้าอาหารที่ต้องการ
  
### หน้าแสดงข้อมูล
  
![menu3](https://user-images.githubusercontent.com/62759459/97841158-dcc0ac80-1d17-11eb-9134-09b391fb7d73.png)

![menu3_1](https://user-images.githubusercontent.com/62759459/97841162-de8a7000-1d17-11eb-980f-ac57bf40cdce.png)

![menu3_2](https://user-images.githubusercontent.com/62759459/97841163-de8a7000-1d17-11eb-86f6-276e9ecb9f2c.png)
- หน้าแสดงข้อมูล
  - หน้านี้จะแสดงรายละเอียข้อมูลต่างๆ เช่น ชื่ออาหาร รูปภาพอาหาร วัตถุดิบ วิธีการทำอาหาร รูปภาพประกอบวิธีการทำอาหาร

### คู่มือการใช้งาน
https://youtu.be/ft3HcvouK3g
