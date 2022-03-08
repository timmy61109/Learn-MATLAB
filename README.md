# 學習MATLAB
此課程是使用MATLAB 2019a，學習的內容儲存到這個儲存庫，並提供大家檢閱與更新，讓範例可以接近完整。

發現學習的網站列表:

- [MATLAB and Simulink Training](https://matlabacademy.mathworks.com/)
- [自學專區](https://www.terasoft.com.tw/Academia/index.asp)
- [MATLAB教學](https://www.youtube.com/playlist?list=PLVHBjRDK0kALcQMwAFbR5q2driYZCHNIx)

由MatlabWorks官方所提供的教學網站[MATLAB and Simulink Training](https://matlabacademy.mathworks.com/)，提供基礎學習並搭配網頁互動式學習，從中完成所有初階課程學習，學習過程會在裡面記錄下來。MatlabWorks裡面所提供的課程都是製作出最新的產品，如果基礎學習完成還可以得到基本認證，但想要學習其他課程必須付錢，但可以透果網路上其他教學影片或者[自學專區](https://www.terasoft.com.tw/Academia/index.asp)來學習進階課程。

自學專區是由出版社所整理資源，此資源包括新舊、難易等所有資源，並代理許多MATLAB相關套件與教學。其中著名的教授也在此公司出版最早有關MATLAB有關的工具，並也在MATLAB公司工作過，因此對MATLAB很熟悉。

MATLAB教學是一位台大生物機械系郭彥甫教授所提供的教學，雖然教學相當完整但使用的MATLAB是MATLAB 2014a，可能使用新版的MATLAB再進階課程會有不同與棄用部份。

# 符號運算
在 Octave 使用符號運算時，會出現錯誤，此時可以通過安裝新的套件與匯入方法解決。

```matlab
pkg install -forge symbolic
```

匯入套件

```matlab
pkg load symbolic
```

# 機率學應用
將機率所學事物寫在此。

## 硬幣模擬
可以透過 `rand(1, 4)` 產生小於 1 隨機數字的數字四個，放入到 `x` 內。

```matlab
>> x = rand(1, 4)
x =

   0.1868   0.8280   0.7997   0.4883

```

再來可以透過 `x < 0.5` 來產生硬幣一半一半的機率。

```matlab
>> x < 0.5
ans =

  1  0  0  1

```

## 學生成績產生
用 `50 + randi(50, 1, 12)` 方式，產生12筆大於50分的成績。

```matlab
ans =

    71    55    96    59    98    84    59    93    99    97   100    90

```

## 擲骰子
通過 `randi(6, 1, 10)` 擲骰子十次，可以得到擲骰子的結果。

```matlab
ans =

   5   6   3   5   4   5   6   4   3   5

```

`rng` 可以用來設定種子，是每個亂數產生都會有的，可以通過種子來設定隨機值產生的方式，以及透過實驗時的種子讓其他人在做測試的時候可以還原當時的亂數。

由於在 Octave 沒有 `rng` 函式，因此要使用 Octave 產生器，此方法是否可以通用 MATLAB 還有帶觀察。

使用 `rand("state")` 來取得種子，取得的資料是625列的種子數值，再透過 `rand("state", s)` 設定種子， `s` 要放 `rand("state")` 回傳值。

```matlab
s = rand("state")
50 + randi(50, 1, 12)
rand("state", s)
50 + randi(50, 1, 12)
```

執行結果

```matlab
>> s = rand("state")
s =

  2795783892
  ...
  3785941655
         599

>> 50 + randi(50, 1, 12)
ans =

    70    87   100    98    78    73    64    52    52    74    66    70

>> rand("state", s)
>> 50 + randi(50, 1, 12)
ans =

    70    87   100    98    78    73    64    52    52    74    66    70

```

*註： `seed` 為 Octave 舊式產生器，一樣可以使用，但測試新的好像不能使用。

## example 2.8

```matlab
>> n = factorial(52) / (factorial(52 - 7) * factorial(7))
n = 1.3378e+08
```

```matlab
>> f=factorial(11)/(factorial(11-5)*factorial(5))
f = 462
```

```matlab
>> f=factorial(120)/(factorial(120-60)*factorial(60))
f = 9.6615e+34
```

```matlab
>> f=factorial(15)/(factorial(15-8)*factorial(8))
f = 6435
>> n=factorial(10)/(factorial(10-1)*factorial(1))
n = 10
>> n*f
ans = 64350
>> m = factorial(9)
m = 362880
>> n * f * m
ans = 2.3351e+10
```

## example 2.9

```matlab
>> n = factorial(48)/(factorial(48-7)*factorial(7))
n = 7.3629e+07
>> m=factorial(52)/(factorial(52-7)*factorial(7))
m = 1.3378e+08
>> n / m
ans = 0.5504
```

## example 2.10

```matlab
>> (48/52)^7
ans = 0.5710
```

## example 2.15

```matlab
>> y=factorial(10)/(factorial(2)*factorial(3)*factorial(3)*factorial(2))
y = 25200

```
