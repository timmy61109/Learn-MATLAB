function func9_2(num)
if num-fix(num)==0 & num>0
    if mod(num,2)==0
        fprintf('%g是偶數\n',num)
    else
        fprintf('%g是奇數\n',num)
    end
else
    fprintf('%g不是正整數\n',num)
end