from sympy2ginac import *

#parameters={'dim':'2','mu':'1','lambda':'1','displ':{'exact','Array([x**2,0])'}};
#parameters={'dim':'3','mu':'1','lambda':'1','displ':'Array([x,0,0])'};
#parameters={'dim':'2','mu':'1','lambda':'1','displ':'[(1/(2*pi*pi))*sin(pi*x)*cos(pi*y),(1/(2*pi*pi))*cos(pi*x)*sin(pi*y)]'}
#parameters={'dim':'3','mu':'1','lambda':'1','displ':'[cos(Pi*x)*cos(Pi*y)*cos(Pi*z), cos(Pi*y)*sin(Pi*x)*sin(Pi*z), cos(Pi*x)*cos(Pi*z)*sin(Pi*y) ]'}

if 'dim' in locals():
    dim=int(locals()['dim']);
else:
    dim=2

if 'exact' in locals():
    exact=True if locals()['exact']=="1" else False;
else:
    exact=False

s=syms(dim);
print("s=",s);
ns=nsyms(dim);

mu=sympify(locals()['mu']);
print("mu=",mu);

displ=sympify(locals()['displ']);
print("displ=",displ);




if exact:
    # gradient
    grad_displ=grad(displ,s);
    print("grad(displ)=",grad_displ);
    
    # strain
    strain =0.5 * ( grad_displ+transpose(grad_displ) );
    print("strain=",strain);
    
    # stress
    I=eye(dim);
    print("I=",I);
    stress=- p * I + 2. * mu *strain;
    print("stress=",stress);
    
    # surfacic forces
    stressn=n(stress,1,ns);
    
    # force density
    f = -div(stress,s);
else:
    stressn=sympify(locals()['stressn']);
    f=sympify(locals()['f']);

print("stressn=",stressn);
print("f=",f);


