# note
## 四則運算<br />
加：1+1<br />
減：2-1<br />
乘：2*2<br />
除（算出小數）：5/3<br />
餘數：5%%3<br />
## 變數<br />
x<-2<br />
x<-string<br />
*非數字不可相加減<br />
### 變數種類說明<br />
numerics（數字）4.5<br />
integers（整數）4<br />
logical（邏輯）TRUE FALSE<br />
characters（字串）"string"<br />
*查看種類利用class()<br />
## Vectors<br />
with the combine function c()<br />
### 選取<br />
知道該物件名稱["string"]<br />
挑選兩個以上[c("Monday","Tuesday")]<br />
第一個是[1]<br />
挑選兩個以上表列出來用[c(2,3,4)]等同[2:4]<br />
### 合併<br />
c(vector1,vector2)<br />
### 幫他取名字用names()<br />
ex:poker_vector <- c(140, -50, 20, -120, 240)<br />
ex:names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")<br />
ex:days_vector<- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")<br />
      names(poker_vector) <-   days_vector<br />
### 算總和用sum()<br />
括號內所有數字總和<br />
### 算平均用mean()<br />
括號內所有數字平均<br />
### 也可以比大小<br />
vector每一個都會比較，並輸出TRUE FALSE<br />
若要直接找出那些天及數值則利用比大小後選取<br />
## Matrix矩陣<br />
### construct a matrix<br />
matrix(1:9, byrow = TRUE, nrow = 3)<br />
3*3矩陣<br />
### 命名<br />
rownames(matrix_name) <- row_names_vector<br />
colnames(matrix_name) <- col_names_vector<br />
### 總和<br />
利用rowSums()或colSums()<br />
### 新增欄或列<br />
利用cbind()或rbind()<br />
ex:big_matrix <- cbind(matrix1, matrix2, vector1)<br />
### 選取<br />
my_matrix[1:3,2:4]<br />
全選:my_matrix[,]<br />
### 應用<br />
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,<br />
dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),c("US", "non-US")))<br />
## factors分類<br />
分成 nominal categorical variable 和  ordinal categorical variable<br />
會保留原狀<br />
### 建立factor<br />
factor()<br />
factor(vector_name, order = TRUE, levels = c("Low", "Medium", "High"))<br />
### 改變順序<br />
用levels()，要注意前後順序<br />
### 總和<br />
summary()，適合用在factor而不是vector<br />
## dataframe<br />
### 建立<br />
data.frame()<br />
### 查看部分資料<br />
head()<br />
tail()<br />
str()<br />
### 選取<br />
單欄dataframe_name$col_name<br />
subset(dataframe_name, subset = some_condition)<br />
### 排序<br />
order()<br />
dataframe_name[order(dataframe_name),]<br />
## list<br />
可以儲存任何東西的列表<br />
### 建立<br />
list()<br />
### 幫各項命名<br />
my_list <- list(your_comp1, your_comp2)<br />
names(my_list) <- c("name1", "name2")<br />
my_list <- list(name1 = your_comp1, name2 = your_comp2)<br />
## 選取<br />
list_name[[2]][1]<br />
list_name[["reviews"]]<br />
list_name$reviews<br />
## 增加新元素<br />
ext_list <- c(my_list, my_name = my_val)<br />
