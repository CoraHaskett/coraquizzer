er@ip-172-31-43-186 ~]$ for i in {1..10}; do echo $i; done
1
2
3
4
5
6
7
8
9
10


[ec2-user@ip-172-31-43-186 ~]$ for i in $(seq 5 $a); do echo $i; done
1
2
3
4
5

[ec2-user@ip-172-31-43-186 ~]$ myarray=(jo pam steve)
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[@]}; do echo $name; done
jo
pam
steve

[ec2-user@ip-172-31-43-186 ~]$ myarray=(jo pam steve)
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[@]}; do echo $name; done
jo
pam
steve
[ec2-user@ip-172-31-43-186 ~]$ for name in ${myarray[0]}; do echo $name; done
jo
[ec2-user@ip-172-31-43-186 ~]$ echo ${#myarray[@]}
3

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >/tmp/names.text
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat /tmp/names.text
steve jo pam
[ec2-user@ip-172-31-43-186 coraquizzer]$ mv /tmp/names.text /tmp/names.txt
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >>>/tmp/names.txt
-bash: syntax error near unexpected token `>'
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "steve jo pam" >>/tmp/names.txt
[ec2-user@ip-172-31-43-186 coraquizzer]$ cat /tmp/names.txt
steve jo pam
steve jo pam


[ec2-user@ip-172-31-43-186 coraquizzer]$ read name <<< $(echo "cora")
[ec2-user@ip-172-31-43-186 coraquizzer]$ echo $name
cora

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "2.5*2" | bc
5.0

[ec2-user@ip-172-31-43-186 coraquizzer]$ echo "scale=2; 2.5/2" | bc
1.25
