#Example DAG

#Load Libraries

library(ggdag)
library(dagitty)

#Define and identify pathways

g <- dagitty('dag {
   Prenatal_Metals [pos="0,1"]
             Maternal_Thyrotoxicity [pos="1,1"]
             Child_Thyrotoxicity [pos="2,1"]
Child_Hormonal_Dysregulation [pos="1,0"]
             Child_Adiposity [pos="2,2"]
             
             Prenatal_Metals -> Maternal_Thyrotoxicity -> Child_Thyrotoxicity -> Child_Adiposity
             Prenatal_Metals -> Child_Thyrotoxicity -> Child_Hormonal_Dysregulation -> Child_Adiposity
             Child_Thyrotoxicity-> Child_Hormonal_Dysregulation -> Child_Adiposity
            Maternal_Thyrotoxicity -> Child_Hormonal_Dysregulation
             }')

#Plot
plot(g)



