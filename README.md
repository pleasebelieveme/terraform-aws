# Terraform + AWS EC2 Automation
terrform을 이용해 AWS EC2를 생성하는 방법을 구현해보았다.
                         
   
## 시스템 환경


- wsl2 - ubuntu 22.04
- Terraform v1.6.4
   
      
## 준비물  
### AWS IAM key    

#### key 적용 방법 <br>
```
aws configure
```
^ 위의 명령어를 치면 아래의 항목을 입력하라고 나온다
```
AWS Access Key ID []: 
AWS Secret Access Key []: 
Default region name []: 
Default output format []:
```

한줄씩 입력하여 적용한다.

결과예시
```
AWS Access Key ID []: AKIASGWSDGBSG***L4WLYZ
AWS Secret Access Key []: Z4ijhHNVLdbvis**RVls0a5Oasl+XbKuD95LsKf
Default region name []: ap-northeast-2 // 서울지역
Default output format []: json // json형식의 파일
```
## 실습적용
```
terraform apply
```
^ 위의 명령어를 치면 AWS EC2를 생성한다.
```
terraform destroy
```
^ 위의 명령어를 치면 AWS EC2가 삭제된다.
