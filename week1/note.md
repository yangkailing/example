# note
## operator(numeric and logical)<br />
### numeric<br />
plus：1+1<br />
minus：2-1<br />
multiple：2*2<br />
divide（can be float）：5/3<br />
remainder：5%%3<br />
*only numeric can use numeric operator <br />
### logical<br />
AND:&(only the first one &&)<br />
OR:|(only the first one ||)<br />
<br />
## variable<br />
x<-2<br />
x<-string<br />
### type<br />
numerics ex:4.5<br />
integers ex:4<br />
logical ex:TRUE FALSE<br />
characters ex:"string"<br />
*if you wan to know the type, use:class()<br />
<br />
## Vectors<br />
with the combine function c()<br />
### choose<br />
if knowing the name: ["string"]<br />
choose more than one: [c("Monday","Tuesday")]<br />
if knowing the order:[1]<br />
choose more than one:[c(2,3,4)]equal to [2:4]<br />
### combine<br />
c(vector1,vector2)<br />
### give them names<br />
names()<br />
ex:poker_vector <- c(140, -50, 20, -120, 240)<br />
ex:names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")<br />
ex:days_vector<- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")<br />
      names(poker_vector) <-   days_vector<br />
### sum()<br />
add all the numbers in the vector<br />
### mean()<br />
average all the numbers in the vector<br />
<br />
## Matrix<br />
### construct a matrix<br />
matrix(1:9, byrow = TRUE, nrow = 3)<br />
### naming<br />
rownames(matrix_name) <- row_names_vector<br />
colnames(matrix_name) <- col_names_vector<br />
dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"),c("US", "non-US")))<br />
### sum<br />
use rowSums()or colSums()<br />
### add rows or columes<br />
use cbind()or rbind()<br />
ex:big_matrix <- cbind(matrix1, matrix2, vector1)<br />
### choose<br />
my_matrix[1:3,2:4]<br />
choose all of them:my_matrix[,]<br />
### example<br />
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE)<br />
<br />
## factors<br />
2 kinds: nominal categorical variable  and  ordinal categorical variable<br />
will keep original vector<br />
### construct factor<br />
factor()<br />
factor(vector_name, order = TRUE, levels = c("Low", "Medium", "High"))<br />
### change order <br />
use levels(), have a look on original order <br />
### overlook the factor<br />
summary()，factoris better than vector<br />
<br />
## dataframe<br />
### construct<br />
data.frame()<br />
### check part of data<br />
head()<br />
tail()<br />
str()<br />
### choose<br />
colume:dataframe_name$col_name<br />
subset(dataframe_name, subset = some_condition)<br />
### order<br />
order()<br />
dataframe_name[order(dataframe_name),]<br />
<br />
## list<br />
can save anything<br />
### construct<br />
list()<br />
### naming<br />
my_list <- list(your_comp1, your_comp2)<br />
names(my_list) <- c("name1", "name2")<br />
<br />
my_list <- list(name1 = your_comp1, name2 = your_comp2)<br />
## choose<br />
list_name[[2]][1]<br />
list_name[["reviews"]]<br />
list_name$reviews<br />
## add new thing<br />
ext_list <- c(my_list, my_name = anything)<br />
