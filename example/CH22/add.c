/* add.c */
#include "mex.h"
void mexFunction(int nlhs,mxArray *plhs[],int nrhs,const mxArray *prhs[])
{
    double x=*mxGetPr(prhs[0]);
    double y=*mxGetPr(prhs[1]);
    
    mexPrintf("輸入引數的個數: %d\n",nrhs);
    mexPrintf("輸出引數的個數: %d\n",nlhs);
    
    plhs[0]=mxCreateDoubleMatrix(1,1,mxREAL);
    *mxGetPr(plhs[0])=x+y;
}