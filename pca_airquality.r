

dataa =tbl_df(airquality)

data_scale = na.omit(scale(dataa))

ee = eigen(cor(data_scale))

ee$values
ee$vectors

pca_airqualt= data_scale %*% ee$vectors


pca_case1=pca_airqualt
View(pca_airqualt)
pca_case1[,2]=0
     
pca_rec1=pca_case1 %*% t(ee$vectors)


pca_case2=pca_airqualt

pca_case2[,1]=0
     
pca_rec2=pca_case2 %*% t(ee$vectors)

{{plot(data_scale[,1],data_scale[,2])
  lines(pca_rec1[,1],pca_rec1[,2])}}
