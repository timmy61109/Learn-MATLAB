% 定義函數show_action.m,用來顯示滑鼠事件
function show_action(action,h_edit)
global cnt; 		% 定義全域變數cnt
cnt=cnt+1;
s=get(h_edit,'String');
str=char([int2str(cnt),': ',action,13,s]);
set(h_edit,'String',str);