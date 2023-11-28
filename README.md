# Terraform + AWS EC2 Automation
terrform을 이용해 AWS EC2를 생성하는 방법을 구현해보았다.
                         
   
## 시스템 환경


- wsl2 - ubuntu 22.04
- Terraform v1.6.4
## 파일구성
```
Terraform-aws  
├─ aws.tf
└─ README.md
```
## 준비물

### AWS IAM key    

* #### key 적용 방법 <br>
```
aws configure
```
└─ 위의 명령어를 치면 아래의 항목을 입력하라고 나온다.
```
AWS Access Key ID []: 
AWS Secret Access Key []: 
Default region name []: 
Default output format []:
```

한줄씩 입력하여 적용한다.


## 실습적용
```
terraform init
```
└─ 위의 명령어를 치면 Terraform 설정을 초기화하고 적용한다.
```
terraform apply
```
└─ 위의 명령어를 치면 AWS EC2를 생성한다.
```
terraform destroy
```
└─ 위의 명령어를 치면 AWS EC2가 삭제된다.
