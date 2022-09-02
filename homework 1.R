Victoria Karadimas 
Homework 1 

Mario And Zach 

Dice rolled: 1,4,1,4,4,2,5,2,5,4,2,2,3,2,2,4,4,1,1,4

R version 4.2.1 (2022-06-23) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> x <- 1:50
> w <- 1 + sqrt(x)/2
> example1 <- data.frame(x=x, y= x + rnorm(x)*w)
> attach(example1)
The following object is masked _by_ .GlobalEnv:
  
  x

> fm <- lm(y ~ x)
> summary(fm)

Call:
  lm(formula = y ~ x)

Residuals:
  Min      1Q  Median      3Q     Max 
-7.1487 -2.0305  0.1907  1.9494  9.4907 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)
(Intercept) -0.01148    0.87050  -0.013     0.99
x            1.03106    0.02971  34.704   <2e-16

(Intercept)    
x           ***
  ---
  Signif. codes:  
  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.032 on 48 degrees of freedom
Multiple R-squared:  0.9617,	Adjusted R-squared:  0.9609 
F-statistic:  1204 on 1 and 48 DF,  p-value: < 2.2e-16

> lrf <- lowess(x, y)
> plot(x, y)
> lines(x, lrf$y)
> abline(0, 1, lty=3)
> abline(coef(fm))
> detach()
> load("/Users/victoria/Downloads/Household_Pulse_data (1).RData")
> load("/Users/victoria/Downloads/Household_Pulse_data.RData")
> load("Household_Pulse_data.RData")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
  In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'Household_Pulse_data.RData', probable reason 'No such file or directory'
> #glimpse(acs2017_ny) try this later
  > Household_Pulse_data[1:10,1:7]
RHISPANIC RRACE      EEDUC      MS
1  Not Hispanic White   bach deg      NA
2  Not Hispanic White HS diploma married
3  Not Hispanic White   bach deg widowed
4  Not Hispanic White    adv deg   never
5  Not Hispanic Black  some coll   never
6      Hispanic White   bach deg   never
7  Not Hispanic White    adv deg widowed
8  Not Hispanic White  some coll widowed
9  Not Hispanic White  assoc deg married
10 Not Hispanic White    adv deg married
EGENID_BIRTH GENID_DESCRIBE
1        female         female
2        female         female
3        female         female
4        female         female
5        female         female
6        female         female
7        female         female
8        female         female
9        female         female
10       female         female
SEXUAL_ORIENTATION
1            straight
2            straight
3            straight
4            straight
5            straight
6            straight
7            straight
8            straight
9            straight
10           straight
> summary(Household_Pulse_data)
RHISPANIC       RRACE      
Not Hispanic:62660   White:56938  
Hispanic    : 6454   Black: 5412  
Asian: 3561  
Other: 3203  



EEDUC               MS       
less than hs:  411   NA       :  881  
some hs     :  936   married  :40036  
HS diploma  : 7857   widowed  : 3872  
some coll   :14596   divorced :10310  
assoc deg   : 7508   separated: 1214  
bach deg    :20075   never    :12801  
adv deg     :17731                    
EGENID_BIRTH       GENID_DESCRIBE 
male  :27592   NA         : 1131  
female:41522   male       :26796  
female     :40263  
transgender:  202  
other      :  722  


SEXUAL_ORIENTATION
NA            : 1506   
gay or lesbian: 2343   
straight      :61238   
bisexual      : 2288   
something else:  871   
dont know     :  868   

KIDS_LT5Y    
NA                        :62342  
Yes children under 5 in HH: 6772  





KIDS_5_11Y   
NA                       :58467  
Yes children 5 - 11 in HH:10647  





KIDS_12_17Y   
NA                        :58046  
Yes children 12 - 17 in HH:11068  





ENROLLNONE   
NA                                :64285  
children not in any type of school: 4829  





RECVDVACC    
NA                 :  851  
yes got vaxx       :60326  
no did not get vaxx: 7937  




DOSESRV     
NA                       : 9105  
yes got all doses        :57762  
yes plan to get all doses: 1993  
no will not get all doses:  254  



GETVACRV    
NA                      :61159  
definitely will get vaxx:  609  
probably will get vaxx  :  731  
unsure about vaxx       : 1584  
probably not            : 1599  
definitely not          : 3432  

KIDDOSES    
NA                                :58318  
Yes kids got or will get all doses: 7135  
no kids did not or will not       : 3661  




KIDGETVAC    
NA                      :65384  
definitely will get vaxx:  487  
probably will get vaxx  :  439  
unsure about vaxx       :  736  
probably not            :  593  
definitely not          : 1036  
dont know yet           :  439  
HADCOVID    
NA                       : 1363  
yes doctor told had covid: 9122  
no did not               :58221  
not sure                 :  408  



WRKLOSSRV    
NA                    : 1961  
yes recent HH job loss: 8058  
no recent HH job loss :59095  




ANYWORK     
NA                           : 2135  
yes employment in last 7 days:39237  
no employment in last 7 days :27742  




KINDWORK    
NA                 :30540  
work for govt      : 6378  
work for private co:21370  
work for nonprofit : 5055  
self employed      : 4966  
work in family biz :  805  

RSNNOWRKRV   
NA              :42659  
retired         :15024  
other           : 4027  
sick or disabled: 1451  
caring for kids : 1329  
laid off        : 1164  
(Other)         : 3460  
CHLDCARE    
NA                                       :58419  
yes impacts to childcare because pandemic: 2566  
no                                       : 8129  




CURFOODSUF   
NA                            : 6770  
had enough food               :49234  
had enough but not what wanted: 9947  
sometimes not enough food     : 2486  
often not enough food         :  677  


CHILDFOOD    
NA                                                 :64258  
often kids not eating enough because couldnt afford:  271  
sometimes kids not eating enough                   : 1191  
kids got enough food                               : 3394  



ANXIOUS     
NA                                             : 7946  
no anxiety over past 2 wks                     :26611  
several days anxiety over past 2 wks           :19794  
more than half the days anxiety over past 2 wks: 6140  
nearly every day anxiety                       : 8623  


WORRY      
NA                                             : 8016  
no worry over past 2 wks                       :31876  
several days worried over past 2 wks           :17936  
more than half the days worried over past 2 wks: 4979  
nearly every day worry                         : 6307  


TENURE     
NA                           :11103  
housing owned free and clear :16738  
housing owned with mortgage  :28016  
housing rented               :12579  
housing occupied without rent:  678  


LIVQTRRV    
live in detached 1 family          :41348  
NA                                 :11336  
live in bldg w 5+ apts             : 6731  
live in 1 family attached to others: 4628  
live in mobile home                : 1781  
live in building with 3-4 apts     : 1737  
(Other)                            : 1553  
RENTCUR     
NA             :56572  
current on rent:11239  
behind on rent : 1303  




MORTCUR     
NA                 :41200  
current on mortgage:26462  
behind on mortgage : 1452  




EVICT      
NA                                        :67859  
very likely evicted in next 2 months      :  207  
somewhat likely evicted in next 2 months  :  377  
not very likely evicted in next 2 months  :  345  
not at all likely evicted in next 2 months:  326  


FORCLOSE    
NA                                        :67695  
very likely forclosed in next 2 months    :   65  
somewhat likely forclosed in next 2 months:  218  
not very likely forclosed in next 2 months:  474  
not at all forclosed in next 2 months     :  662  


EST_ST     
California   : 5359  
Texas        : 3766  
Florida      : 2728  
Washington   : 2634  
Massachusetts: 1965  
Oregon       : 1934  
(Other)      :50728  
PRIVHLTH    
has private health ins:46869  
no private health ins :11275  
NA                    :10970  




PUBHLTH            REGION     
has public health ins:23346   Northeast:10478  
no public health ins :33381   South    :22680  
NA                   :12387   Midwest  :13651  
West     :22305  



INCOME       TBIRTH_YEAR  
NA                   :14637   Min.   :1933  
HH income $100k - 149:10117   1st Qu.:1955  
HH income $50k - 74.9: 9330   Median :1967  
HH income $75 - 99.9 : 7830   Mean   :1968  
HH income $200k +    : 6117   3rd Qu.:1981  
HH income $35k - 49.9: 5805   Max.   :2003  
(Other)              :15278                 
Num_kids_Pub_School Num_kids_Priv_School
Min.   :0.00        Min.   :0.00        
1st Qu.:1.00        1st Qu.:0.00        
Median :2.00        Median :1.00        
Mean   :1.71        Mean   :1.03        
3rd Qu.:2.00        3rd Qu.:2.00        
Max.   :4.00        Max.   :2.00        
NA's   :55108       NA's   :66430       
Num_kids_homeschool        Works_onsite  
Min.   :0.00        NA           : 6350  
1st Qu.:0.00        worked onsite:34918  
Median :1.00        no           :27846  
Mean   :0.87                             
3rd Qu.:2.00                             
Max.   :2.00                             
NA's   :67421                            
          works_remote  
 NA             : 8022  
 worked remotely:22863  
 no             :38229  
                        
                        
                        
                        
          Shop_in_store  
 NA              : 6873  
 shopped in store:53576  
 no              : 8665  
                         
                         
                         
                         
                 eat_in_restaurant
 NA                       : 7217  
 eat at restaurant indoors:32405  
 no                       :29492  
                                  
                                  
                                  
                                  
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
Error in summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"]) : 
  object 'TBIRTH_YEAR' not found
> load("/Users/victoria/Downloads/Household_Pulse_data (2).RData")
> 
> load("Household_Pulse_data.RData")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'Household_Pulse_data.RData', probable reason 'No such file or directory'
> #glimpse(acs2017_ny) try this later
> Household_Pulse_data[1:10,1:7]
      RHISPANIC RRACE      EEDUC      MS
1  Not Hispanic White   bach deg      NA
2  Not Hispanic White HS diploma married
3  Not Hispanic White   bach deg widowed
4  Not Hispanic White    adv deg   never
5  Not Hispanic Black  some coll   never
6      Hispanic White   bach deg   never
7  Not Hispanic White    adv deg widowed
8  Not Hispanic White  some coll widowed
9  Not Hispanic White  assoc deg married
10 Not Hispanic White    adv deg married
   EGENID_BIRTH GENID_DESCRIBE SEXUAL_ORIENTATION
1        female         female           straight
2        female         female           straight
3        female         female           straight
4        female         female           straight
5        female         female           straight
6        female         female           straight
7        female         female           straight
8        female         female           straight
9        female         female           straight
10       female         female           straight
> attach(Household_Pulse_data)
> summary(Household_Pulse_data)
        RHISPANIC       RRACE      
 Not Hispanic:62660   White:56938  
 Hispanic    : 6454   Black: 5412  
                      Asian: 3561  
                      Other: 3203  
                                   
                                   
                                   
          EEDUC               MS       
 less than hs:  411   NA       :  881  
 some hs     :  936   married  :40036  
 HS diploma  : 7857   widowed  : 3872  
 some coll   :14596   divorced :10310  
 assoc deg   : 7508   separated: 1214  
 bach deg    :20075   never    :12801  
 adv deg     :17731                    
 EGENID_BIRTH       GENID_DESCRIBE 
 male  :27592   NA         : 1131  
 female:41522   male       :26796  
                female     :40263  
                transgender:  202  
                other      :  722  
                                   
                                   
      SEXUAL_ORIENTATION
 NA            : 1506   
 gay or lesbian: 2343   
 straight      :61238   
 bisexual      : 2288   
 something else:  871   
 dont know     :  868   
                        
                      KIDS_LT5Y    
 NA                        :62342  
 Yes children under 5 in HH: 6772  
                                   
                                   
                                   
                                   
                                   
                     KIDS_5_11Y   
 NA                       :58467  
 Yes children 5 - 11 in HH:10647  
                                  
                                  
                                  
                                  
                                  
                     KIDS_12_17Y   
 NA                        :58046  
 Yes children 12 - 17 in HH:11068  
                                   
                                   
                                   
                                   
                                   
                              ENROLLNONE   
 NA                                :64285  
 children not in any type of school: 4829  
                                           
                                           
                                           
                                           
                                           
               RECVDVACC    
 NA                 :  851  
 yes got vaxx       :60326  
 no did not get vaxx: 7937  
                            
                            
                            
                            
                      DOSESRV     
 NA                       : 9105  
 yes got all doses        :57762  
 yes plan to get all doses: 1993  
 no will not get all doses:  254  
                                  
                                  
                                  
                     GETVACRV    
 NA                      :61159  
 definitely will get vaxx:  609  
 probably will get vaxx  :  731  
 unsure about vaxx       : 1584  
 probably not            : 1599  
 definitely not          : 3432  
                                 
                               KIDDOSES    
 NA                                :58318  
 Yes kids got or will get all doses: 7135  
 no kids did not or will not       : 3661  
                                           
                                           
                                           
                                           
                    KIDGETVAC    
 NA                      :65384  
 definitely will get vaxx:  487  
 probably will get vaxx  :  439  
 unsure about vaxx       :  736  
 probably not            :  593  
 definitely not          : 1036  
 dont know yet           :  439  
                      HADCOVID    
 NA                       : 1363  
 yes doctor told had covid: 9122  
 no did not               :58221  
 not sure                 :  408  
                                  
                                  
                                  
                  WRKLOSSRV    
 NA                    : 1961  
 yes recent HH job loss: 8058  
 no recent HH job loss :59095  
                               
                               
                               
                               
                          ANYWORK     
 NA                           : 2135  
 yes employment in last 7 days:39237  
 no employment in last 7 days :27742  
                                      
                                      
                                      
                                      
                KINDWORK    
 NA                 :30540  
 work for govt      : 6378  
 work for private co:21370  
 work for nonprofit : 5055  
 self employed      : 4966  
 work in family biz :  805  
                            
            RSNNOWRKRV   
 NA              :42659  
 retired         :15024  
 other           : 4027  
 sick or disabled: 1451  
 caring for kids : 1329  
 laid off        : 1164  
 (Other)         : 3460  
                                      CHLDCARE    
 NA                                       :58419  
 yes impacts to childcare because pandemic: 2566  
 no                                       : 8129  
                                                  
                                                  
                                                  
                                                  
                          CURFOODSUF   
 NA                            : 6770  
 had enough food               :49234  
 had enough but not what wanted: 9947  
 sometimes not enough food     : 2486  
 often not enough food         :  677  
                                       
                                       
                                               CHILDFOOD    
 NA                                                 :64258  
 often kids not eating enough because couldnt afford:  271  
 sometimes kids not eating enough                   : 1191  
 kids got enough food                               : 3394  
                                                            
                                                            
                                                            
                                            ANXIOUS     
 NA                                             : 7946  
 no anxiety over past 2 wks                     :26611  
 several days anxiety over past 2 wks           :19794  
 more than half the days anxiety over past 2 wks: 6140  
 nearly every day anxiety                       : 8623  
                                                        
                                                        
                                             WORRY      
 NA                                             : 8016  
 no worry over past 2 wks                       :31876  
 several days worried over past 2 wks           :17936  
 more than half the days worried over past 2 wks: 4979  
 nearly every day worry                         : 6307  
                                                        
                                                        
                           TENURE     
 NA                           :11103  
 housing owned free and clear :16738  
 housing owned with mortgage  :28016  
 housing rented               :12579  
 housing occupied without rent:  678  
                                      
                                      
                                LIVQTRRV    
 live in detached 1 family          :41348  
 NA                                 :11336  
 live in bldg w 5+ apts             : 6731  
 live in 1 family attached to others: 4628  
 live in mobile home                : 1781  
 live in building with 3-4 apts     : 1737  
 (Other)                            : 1553  
            RENTCUR     
 NA             :56572  
 current on rent:11239  
 behind on rent : 1303  
                        
                        
                        
                        
                MORTCUR     
 NA                 :41200  
 current on mortgage:26462  
 behind on mortgage : 1452  
                            
                            
                            
                            
                                        EVICT      
 NA                                        :67859  
 very likely evicted in next 2 months      :  207  
 somewhat likely evicted in next 2 months  :  377  
 not very likely evicted in next 2 months  :  345  
 not at all likely evicted in next 2 months:  326  
                                                   
                                                   
                                       FORCLOSE    
 NA                                        :67695  
 very likely forclosed in next 2 months    :   65  
 somewhat likely forclosed in next 2 months:  218  
 not very likely forclosed in next 2 months:  474  
 not at all forclosed in next 2 months     :  662  
                                                   
                                                   
           EST_ST     
 California   : 5359  
 Texas        : 3766  
 Florida      : 2728  
 Washington   : 2634  
 Massachusetts: 1965  
 Oregon       : 1934  
 (Other)      :50728  
                   PRIVHLTH    
 has private health ins:46869  
 no private health ins :11275  
 NA                    :10970  
                               
                               
                               
                               
                  PUBHLTH            REGION     
 has public health ins:23346   Northeast:10478  
 no public health ins :33381   South    :22680  
 NA                   :12387   Midwest  :13651  
                               West     :22305  
                                                
                                                
                                                
                   INCOME       TBIRTH_YEAR  
 NA                   :14637   Min.   :1933  
 HH income $100k - 149:10117   1st Qu.:1955  
 HH income $50k - 74.9: 9330   Median :1967  
 HH income $75 - 99.9 : 7830   Mean   :1968  
 HH income $200k +    : 6117   3rd Qu.:1981  
 HH income $35k - 49.9: 5805   Max.   :2003  
 (Other)              :15278                 
 Num_kids_Pub_School Num_kids_Priv_School
 Min.   :0.00        Min.   :0.00        
 1st Qu.:1.00        1st Qu.:0.00        
 Median :2.00        Median :1.00        
 Mean   :1.71        Mean   :1.03        
 3rd Qu.:2.00        3rd Qu.:2.00        
 Max.   :4.00        Max.   :2.00        
 NA's   :55108       NA's   :66430       
 Num_kids_homeschool        Works_onsite  
 Min.   :0.00        NA           : 6350  
 1st Qu.:0.00        worked onsite:34918  
 Median :1.00        no           :27846  
 Mean   :0.87                             
 3rd Qu.:2.00                             
 Max.   :2.00                             
 NA's   :67421                            
works_remote            Shop_in_store  
NA             : 8022   NA              : 6873  
worked remotely:22863   shopped in store:53576  
no             :38229   no              : 8665  




eat_in_restaurant
NA                       : 7217  
eat at restaurant indoors:32405  
no                       :29492  




> summary(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1933    1956    1968    1969    1981    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1933    1953    1965    1967    1980    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "transgender"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1933    1975    1988    1983    1995    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "other"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1933    1959    1973    1973    1988    2003 
> summary(TBIRTH_YEAR[GENID_DESCRIBE == "NA"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
1933    1952    1962    1964    1977    2003 
> # here i want to find average ages of men and women
  > mean(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
[1] 1968.666
> sd(TBIRTH_YEAR[GENID_DESCRIBE == "female"])
[1] 15.45378
> mean(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
[1] 1966.549
> sd(TBIRTH_YEAR[GENID_DESCRIBE == "male"])
[1] 16.29105
