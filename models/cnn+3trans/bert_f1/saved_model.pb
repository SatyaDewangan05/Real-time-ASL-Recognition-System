Ũ"
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
l
BatchMatMulV2
x"T
y"T
output"T"
Ttype:
2		"
adj_xbool( "
adj_ybool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
.
Identity

input"T
output"T"	
Ttype
9
	IdentityN

input2T
output2T"
T
list(type)(0
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
�
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
�
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
G
SquaredDifference
x"T
y"T
z"T"
Ttype:

2	�
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
2
StopGradient

input"T
output"T"	
Ttype
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.11.02v2.11.0-rc2-17-gd5b57ca93e58��
R
ConstConst*
_output_shapes
:a*
dtype0*
valueBa*    
�
Const_1Const*
_output_shapes
:a*
dtype0*�
value�B�a"�                            	   
                                                                      !   "   #   $   %   &   '   (   )   *   +   ,   -   .   /   0   1   2   3   4   5   6   7   8   9   :   ;   <   =   >   ?   @   A   B   C   D   E   F   G   H   I   J   K   L   M   N   O   P   Q   R   S   T   U   V   W   X   Y   Z   [   \   ]   ^   _   `   
w
model/fc.1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�* 
shared_namemodel/fc.1/bias
p
#model/fc.1/bias/Read/ReadVariableOpReadVariableOpmodel/fc.1/bias*
_output_shapes	
:�*
dtype0
�
model/fc.1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*"
shared_namemodel/fc.1/kernel
y
%model/fc.1/kernel/Read/ReadVariableOpReadVariableOpmodel/fc.1/kernel* 
_output_shapes
:
��*
dtype0
�
)model/model/encoder/layer.2/cpe_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*:
shared_name+)model/model/encoder/layer.2/cpe_conv/bias
�
=model/model/encoder/layer.2/cpe_conv/bias/Read/ReadVariableOpReadVariableOp)model/model/encoder/layer.2/cpe_conv/bias*
_output_shapes	
:�*
dtype0
�
+model/model/encoder/layer.2/cpe_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+model/model/encoder/layer.2/cpe_conv/kernel
�
?model/model/encoder/layer.2/cpe_conv/kernel/Read/ReadVariableOpReadVariableOp+model/model/encoder/layer.2/cpe_conv/kernel*#
_output_shapes
:�*
dtype0
�
1model/model/encoder/layer.2/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31model/model/encoder/layer.2/output/LayerNorm/beta
�
Emodel/model/encoder/layer.2/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1model/model/encoder/layer.2/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
2model/model/encoder/layer.2/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42model/model/encoder/layer.2/output/LayerNorm/gamma
�
Fmodel/model/encoder/layer.2/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2model/model/encoder/layer.2/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
-model/model/encoder/layer.2/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-model/model/encoder/layer.2/output/dense/bias
�
Amodel/model/encoder/layer.2/output/dense/bias/Read/ReadVariableOpReadVariableOp-model/model/encoder/layer.2/output/dense/bias*
_output_shapes	
:�*
dtype0
�
/model/model/encoder/layer.2/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*@
shared_name1/model/model/encoder/layer.2/output/dense/kernel
�
Cmodel/model/encoder/layer.2/output/dense/kernel/Read/ReadVariableOpReadVariableOp/model/model/encoder/layer.2/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.2/intermediate/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.2/intermediate/dense/bias
�
Gmodel/model/encoder/layer.2/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.2/intermediate/dense/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.2/intermediate/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.2/intermediate/dense/kernel
�
Imodel/model/encoder/layer.2/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.2/intermediate/dense/kernel* 
_output_shapes
:
��*
dtype0
�
;model/model/encoder/layer.2/attention/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;model/model/encoder/layer.2/attention/output/LayerNorm/beta
�
Omodel/model/encoder/layer.2/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp;model/model/encoder/layer.2/attention/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.2/attention/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><model/model/encoder/layer.2/attention/output/LayerNorm/gamma
�
Pmodel/model/encoder/layer.2/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.2/attention/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.2/attention/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*H
shared_name97model/model/encoder/layer.2/attention/output/dense/bias
�
Kmodel/model/encoder/layer.2/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.2/attention/output/dense/bias*
_output_shapes	
:�*
dtype0
�
9model/model/encoder/layer.2/attention/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*J
shared_name;9model/model/encoder/layer.2/attention/output/dense/kernel
�
Mmodel/model/encoder/layer.2/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp9model/model/encoder/layer.2/attention/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.2/attention/self/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.2/attention/self/value/bias
�
Imodel/model/encoder/layer.2/attention/self/value/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.2/attention/self/value/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.2/attention/self/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.2/attention/self/value/kernel
�
Kmodel/model/encoder/layer.2/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.2/attention/self/value/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.2/attention/self/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.2/attention/self/key/bias
�
Gmodel/model/encoder/layer.2/attention/self/key/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.2/attention/self/key/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.2/attention/self/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.2/attention/self/key/kernel
�
Imodel/model/encoder/layer.2/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.2/attention/self/key/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.2/attention/self/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.2/attention/self/query/bias
�
Imodel/model/encoder/layer.2/attention/self/query/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.2/attention/self/query/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.2/attention/self/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.2/attention/self/query/kernel
�
Kmodel/model/encoder/layer.2/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.2/attention/self/query/kernel* 
_output_shapes
:
��*
dtype0
�
)model/model/encoder/layer.1/cpe_conv/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*:
shared_name+)model/model/encoder/layer.1/cpe_conv/bias
�
=model/model/encoder/layer.1/cpe_conv/bias/Read/ReadVariableOpReadVariableOp)model/model/encoder/layer.1/cpe_conv/bias*
_output_shapes	
:�*
dtype0
�
+model/model/encoder/layer.1/cpe_conv/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*<
shared_name-+model/model/encoder/layer.1/cpe_conv/kernel
�
?model/model/encoder/layer.1/cpe_conv/kernel/Read/ReadVariableOpReadVariableOp+model/model/encoder/layer.1/cpe_conv/kernel*#
_output_shapes
:�*
dtype0
�
1model/model/encoder/layer.1/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31model/model/encoder/layer.1/output/LayerNorm/beta
�
Emodel/model/encoder/layer.1/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1model/model/encoder/layer.1/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
2model/model/encoder/layer.1/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42model/model/encoder/layer.1/output/LayerNorm/gamma
�
Fmodel/model/encoder/layer.1/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2model/model/encoder/layer.1/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
-model/model/encoder/layer.1/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-model/model/encoder/layer.1/output/dense/bias
�
Amodel/model/encoder/layer.1/output/dense/bias/Read/ReadVariableOpReadVariableOp-model/model/encoder/layer.1/output/dense/bias*
_output_shapes	
:�*
dtype0
�
/model/model/encoder/layer.1/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*@
shared_name1/model/model/encoder/layer.1/output/dense/kernel
�
Cmodel/model/encoder/layer.1/output/dense/kernel/Read/ReadVariableOpReadVariableOp/model/model/encoder/layer.1/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.1/intermediate/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.1/intermediate/dense/bias
�
Gmodel/model/encoder/layer.1/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.1/intermediate/dense/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.1/intermediate/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.1/intermediate/dense/kernel
�
Imodel/model/encoder/layer.1/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.1/intermediate/dense/kernel* 
_output_shapes
:
��*
dtype0
�
;model/model/encoder/layer.1/attention/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;model/model/encoder/layer.1/attention/output/LayerNorm/beta
�
Omodel/model/encoder/layer.1/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp;model/model/encoder/layer.1/attention/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.1/attention/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><model/model/encoder/layer.1/attention/output/LayerNorm/gamma
�
Pmodel/model/encoder/layer.1/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.1/attention/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.1/attention/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*H
shared_name97model/model/encoder/layer.1/attention/output/dense/bias
�
Kmodel/model/encoder/layer.1/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.1/attention/output/dense/bias*
_output_shapes	
:�*
dtype0
�
9model/model/encoder/layer.1/attention/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*J
shared_name;9model/model/encoder/layer.1/attention/output/dense/kernel
�
Mmodel/model/encoder/layer.1/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp9model/model/encoder/layer.1/attention/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.1/attention/self/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.1/attention/self/value/bias
�
Imodel/model/encoder/layer.1/attention/self/value/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.1/attention/self/value/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.1/attention/self/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.1/attention/self/value/kernel
�
Kmodel/model/encoder/layer.1/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.1/attention/self/value/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.1/attention/self/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.1/attention/self/key/bias
�
Gmodel/model/encoder/layer.1/attention/self/key/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.1/attention/self/key/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.1/attention/self/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.1/attention/self/key/kernel
�
Imodel/model/encoder/layer.1/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.1/attention/self/key/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.1/attention/self/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.1/attention/self/query/bias
�
Imodel/model/encoder/layer.1/attention/self/query/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.1/attention/self/query/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.1/attention/self/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.1/attention/self/query/kernel
�
Kmodel/model/encoder/layer.1/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.1/attention/self/query/kernel* 
_output_shapes
:
��*
dtype0
�
1model/model/encoder/layer.0/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*B
shared_name31model/model/encoder/layer.0/output/LayerNorm/beta
�
Emodel/model/encoder/layer.0/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp1model/model/encoder/layer.0/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
2model/model/encoder/layer.0/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*C
shared_name42model/model/encoder/layer.0/output/LayerNorm/gamma
�
Fmodel/model/encoder/layer.0/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp2model/model/encoder/layer.0/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
-model/model/encoder/layer.0/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*>
shared_name/-model/model/encoder/layer.0/output/dense/bias
�
Amodel/model/encoder/layer.0/output/dense/bias/Read/ReadVariableOpReadVariableOp-model/model/encoder/layer.0/output/dense/bias*
_output_shapes	
:�*
dtype0
�
/model/model/encoder/layer.0/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*@
shared_name1/model/model/encoder/layer.0/output/dense/kernel
�
Cmodel/model/encoder/layer.0/output/dense/kernel/Read/ReadVariableOpReadVariableOp/model/model/encoder/layer.0/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.0/intermediate/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.0/intermediate/dense/bias
�
Gmodel/model/encoder/layer.0/intermediate/dense/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.0/intermediate/dense/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.0/intermediate/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.0/intermediate/dense/kernel
�
Imodel/model/encoder/layer.0/intermediate/dense/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.0/intermediate/dense/kernel* 
_output_shapes
:
��*
dtype0
�
;model/model/encoder/layer.0/attention/output/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*L
shared_name=;model/model/encoder/layer.0/attention/output/LayerNorm/beta
�
Omodel/model/encoder/layer.0/attention/output/LayerNorm/beta/Read/ReadVariableOpReadVariableOp;model/model/encoder/layer.0/attention/output/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.0/attention/output/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*M
shared_name><model/model/encoder/layer.0/attention/output/LayerNorm/gamma
�
Pmodel/model/encoder/layer.0/attention/output/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.0/attention/output/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.0/attention/output/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*H
shared_name97model/model/encoder/layer.0/attention/output/dense/bias
�
Kmodel/model/encoder/layer.0/attention/output/dense/bias/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.0/attention/output/dense/bias*
_output_shapes	
:�*
dtype0
�
9model/model/encoder/layer.0/attention/output/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*J
shared_name;9model/model/encoder/layer.0/attention/output/dense/kernel
�
Mmodel/model/encoder/layer.0/attention/output/dense/kernel/Read/ReadVariableOpReadVariableOp9model/model/encoder/layer.0/attention/output/dense/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.0/attention/self/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.0/attention/self/value/bias
�
Imodel/model/encoder/layer.0/attention/self/value/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.0/attention/self/value/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.0/attention/self/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.0/attention/self/value/kernel
�
Kmodel/model/encoder/layer.0/attention/self/value/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.0/attention/self/value/kernel* 
_output_shapes
:
��*
dtype0
�
3model/model/encoder/layer.0/attention/self/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*D
shared_name53model/model/encoder/layer.0/attention/self/key/bias
�
Gmodel/model/encoder/layer.0/attention/self/key/bias/Read/ReadVariableOpReadVariableOp3model/model/encoder/layer.0/attention/self/key/bias*
_output_shapes	
:�*
dtype0
�
5model/model/encoder/layer.0/attention/self/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*F
shared_name75model/model/encoder/layer.0/attention/self/key/kernel
�
Imodel/model/encoder/layer.0/attention/self/key/kernel/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.0/attention/self/key/kernel* 
_output_shapes
:
��*
dtype0
�
5model/model/encoder/layer.0/attention/self/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*F
shared_name75model/model/encoder/layer.0/attention/self/query/bias
�
Imodel/model/encoder/layer.0/attention/self/query/bias/Read/ReadVariableOpReadVariableOp5model/model/encoder/layer.0/attention/self/query/bias*
_output_shapes	
:�*
dtype0
�
7model/model/encoder/layer.0/attention/self/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*H
shared_name97model/model/encoder/layer.0/attention/self/query/kernel
�
Kmodel/model/encoder/layer.0/attention/self/query/kernel/Read/ReadVariableOpReadVariableOp7model/model/encoder/layer.0/attention/self/query/kernel* 
_output_shapes
:
��*
dtype0
�
%model/model/embeddings/LayerNorm/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*6
shared_name'%model/model/embeddings/LayerNorm/beta
�
9model/model/embeddings/LayerNorm/beta/Read/ReadVariableOpReadVariableOp%model/model/embeddings/LayerNorm/beta*
_output_shapes	
:�*
dtype0
�
&model/model/embeddings/LayerNorm/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*7
shared_name(&model/model/embeddings/LayerNorm/gamma
�
:model/model/embeddings/LayerNorm/gamma/Read/ReadVariableOpReadVariableOp&model/model/embeddings/LayerNorm/gamma*
_output_shapes	
:�*
dtype0
�
7model/model/embeddings/token_type_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*H
shared_name97model/model/embeddings/token_type_embeddings/embeddings
�
Kmodel/model/embeddings/token_type_embeddings/embeddings/Read/ReadVariableOpReadVariableOp7model/model/embeddings/token_type_embeddings/embeddings*
_output_shapes
:	�*
dtype0
�
5model/model/embeddings/position_embeddings/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	a�*F
shared_name75model/model/embeddings/position_embeddings/embeddings
�
Imodel/model/embeddings/position_embeddings/embeddings/Read/ReadVariableOpReadVariableOp5model/model/embeddings/position_embeddings/embeddings*
_output_shapes
:	a�*
dtype0
~
model/emb/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*!
shared_namemodel/emb/kernel
w
$model/emb/kernel/Read/ReadVariableOpReadVariableOpmodel/emb/kernel* 
_output_shapes
:
��*
dtype0
{
model/cls_embVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_namemodel/cls_emb
t
!model/cls_emb/Read/ReadVariableOpReadVariableOpmodel/cls_emb*#
_output_shapes
:�*
dtype0
�
serving_default_inputsPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsmodel/emb/kernelmodel/cls_embConst_15model/model/embeddings/position_embeddings/embeddingsConst7model/model/embeddings/token_type_embeddings/embeddings&model/model/embeddings/LayerNorm/gamma%model/model/embeddings/LayerNorm/beta5model/model/encoder/layer.0/attention/self/key/kernel3model/model/encoder/layer.0/attention/self/key/bias7model/model/encoder/layer.0/attention/self/value/kernel5model/model/encoder/layer.0/attention/self/value/bias7model/model/encoder/layer.0/attention/self/query/kernel5model/model/encoder/layer.0/attention/self/query/bias9model/model/encoder/layer.0/attention/output/dense/kernel7model/model/encoder/layer.0/attention/output/dense/bias<model/model/encoder/layer.0/attention/output/LayerNorm/gamma;model/model/encoder/layer.0/attention/output/LayerNorm/beta5model/model/encoder/layer.0/intermediate/dense/kernel3model/model/encoder/layer.0/intermediate/dense/bias/model/model/encoder/layer.0/output/dense/kernel-model/model/encoder/layer.0/output/dense/bias2model/model/encoder/layer.0/output/LayerNorm/gamma1model/model/encoder/layer.0/output/LayerNorm/beta+model/model/encoder/layer.1/cpe_conv/kernel)model/model/encoder/layer.1/cpe_conv/bias5model/model/encoder/layer.1/attention/self/key/kernel3model/model/encoder/layer.1/attention/self/key/bias7model/model/encoder/layer.1/attention/self/value/kernel5model/model/encoder/layer.1/attention/self/value/bias7model/model/encoder/layer.1/attention/self/query/kernel5model/model/encoder/layer.1/attention/self/query/bias9model/model/encoder/layer.1/attention/output/dense/kernel7model/model/encoder/layer.1/attention/output/dense/bias<model/model/encoder/layer.1/attention/output/LayerNorm/gamma;model/model/encoder/layer.1/attention/output/LayerNorm/beta5model/model/encoder/layer.1/intermediate/dense/kernel3model/model/encoder/layer.1/intermediate/dense/bias/model/model/encoder/layer.1/output/dense/kernel-model/model/encoder/layer.1/output/dense/bias2model/model/encoder/layer.1/output/LayerNorm/gamma1model/model/encoder/layer.1/output/LayerNorm/beta+model/model/encoder/layer.2/cpe_conv/kernel)model/model/encoder/layer.2/cpe_conv/bias5model/model/encoder/layer.2/attention/self/key/kernel3model/model/encoder/layer.2/attention/self/key/bias7model/model/encoder/layer.2/attention/self/value/kernel5model/model/encoder/layer.2/attention/self/value/bias7model/model/encoder/layer.2/attention/self/query/kernel5model/model/encoder/layer.2/attention/self/query/bias9model/model/encoder/layer.2/attention/output/dense/kernel7model/model/encoder/layer.2/attention/output/dense/bias<model/model/encoder/layer.2/attention/output/LayerNorm/gamma;model/model/encoder/layer.2/attention/output/LayerNorm/beta5model/model/encoder/layer.2/intermediate/dense/kernel3model/model/encoder/layer.2/intermediate/dense/bias/model/model/encoder/layer.2/output/dense/kernel-model/model/encoder/layer.2/output/dense/bias2model/model/encoder/layer.2/output/LayerNorm/gamma1model/model/encoder/layer.2/output/LayerNorm/betamodel/fc.1/kernelmodel/fc.1/bias*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_71615

NoOpNoOp
��
Const_2Const"/device:CPU:0*
_output_shapes
: *
dtype0*��
value��B�� B��
�
layer-0
layer_with_weights-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
emb
cls_emb
	model
fc
softmax*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59*
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59*
* 
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

]trace_0
^trace_1* 

_trace_0
`trace_1* 
 
a	capture_2
b	capture_4* 

cserving_default* 
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59*
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59*
* 
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

kernel

weight*
^X
VARIABLE_VALUEmodel/cls_emb7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUE*
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w
embeddings
xencoder*
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

Vkernel

Vweight
Wbias*

	keras_api* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 
PJ
VARIABLE_VALUEmodel/emb/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5model/model/embeddings/position_embeddings/embeddings&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7model/model/embeddings/token_type_embeddings/embeddings&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&model/model/embeddings/LayerNorm/gamma&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%model/model/embeddings/LayerNorm/beta&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
wq
VARIABLE_VALUE7model/model/encoder/layer.0/attention/self/query/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5model/model/encoder/layer.0/attention/self/query/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5model/model/encoder/layer.0/attention/self/key/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3model/model/encoder/layer.0/attention/self/key/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.0/attention/self/value/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.0/attention/self/value/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.0/attention/output/dense/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.0/attention/output/dense/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.0/attention/output/LayerNorm/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.0/attention/output/LayerNorm/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.0/intermediate/dense/kernel'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.0/intermediate/dense/bias'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.0/output/dense/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.0/output/dense/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.0/output/LayerNorm/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.0/output/LayerNorm/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.1/attention/self/query/kernel'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.1/attention/self/query/bias'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.1/attention/self/key/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.1/attention/self/key/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.1/attention/self/value/kernel'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.1/attention/self/value/bias'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.1/attention/output/dense/kernel'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.1/attention/output/dense/bias'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.1/attention/output/LayerNorm/gamma'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.1/attention/output/LayerNorm/beta'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.1/intermediate/dense/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.1/intermediate/dense/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.1/output/dense/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.1/output/dense/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.1/output/LayerNorm/gamma'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.1/output/LayerNorm/beta'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+model/model/encoder/layer.1/cpe_conv/kernel'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)model/model/encoder/layer.1/cpe_conv/bias'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.2/attention/self/query/kernel'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.2/attention/self/query/bias'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.2/attention/self/key/kernel'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.2/attention/self/key/bias'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.2/attention/self/value/kernel'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.2/attention/self/value/bias'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.2/attention/output/dense/kernel'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.2/attention/output/dense/bias'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.2/attention/output/LayerNorm/gamma'variables/48/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.2/attention/output/LayerNorm/beta'variables/49/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.2/intermediate/dense/kernel'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.2/intermediate/dense/bias'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.2/output/dense/kernel'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.2/output/dense/bias'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.2/output/LayerNorm/gamma'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.2/output/LayerNorm/beta'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+model/model/encoder/layer.2/cpe_conv/kernel'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)model/model/encoder/layer.2/cpe_conv/bias'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEmodel/fc.1/kernel'variables/58/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEmodel/fc.1/bias'variables/59/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
* 
* 
* 
 
a	capture_2
b	capture_4* 
 
a	capture_2
b	capture_4* 
 
a	capture_2
b	capture_4* 
 
a	capture_2
b	capture_4* 
* 
* 
 
a	capture_2
b	capture_4* 
* 

0
1
2*
* 
* 
* 
 
a	capture_2
b	capture_4* 
 
a	capture_2
b	capture_4* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
523
624
725
826
927
:28
;29
<30
=31
>32
?33
@34
A35
B36
C37
D38
E39
F40
G41
H42
I43
J44
K45
L46
M47
N48
O49
P50
Q51
R52
S53
T54
U55*
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
523
624
725
826
927
:28
;29
<30
=31
>32
?33
@34
A35
B36
C37
D38
E39
F40
G41
H42
I43
J44
K45
L46
M47
N48
O49
P50
Q51
R52
S53
T54
U55*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�position_embeddings
�token_type_embeddings
�	LayerNorm*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�layer*

V0
W1*

V0
W1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

w0
x1*
* 
* 
* 
 
0
1
 2
!3*
 
0
1
 2
!3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	 gamma
!beta*
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
620
721
822
923
:24
;25
<26
=27
>28
?29
@30
A31
B32
C33
D34
E35
F36
G37
H38
I39
J40
K41
L42
M43
N44
O45
P46
Q47
R48
S49
T50
U51*
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
620
721
822
923
:24
;25
<26
=27
>28
?29
@30
A31
B32
C33
D34
E35
F36
G37
H38
I39
J40
K41
L42
M43
N44
O45
P46
Q47
R48
S49
T50
U51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�0
�1
�2*
* 
* 
* 
* 
* 
* 

�0
�1
�2*
* 
* 
* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

 0
!1*

 0
!1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1
�2*
* 
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_
�cpe_conv*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_
�cpe_conv*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
z
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115*
z
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17*
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op*
�
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17*
�
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Tkernel
Ubias
!�_jit_compiled_convolution_op*
* 

�0
�1
�2*
* 
* 
* 
J
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9*
J
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*

,0
-1*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

,kernel

,weight
-bias*
 
.0
/1
02
13*
 
.0
/1
02
13*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel

.weight
/bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	0gamma
1beta*
* 
$
�0
�1
�2
�3*
* 
* 
* 
J
20
31
42
53
64
75
86
97
:8
;9*
J
20
31
42
53
64
75
86
97
:8
;9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

<kernel

<weight
=bias*
 
>0
?1
@2
A3*
 
>0
?1
@2
A3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

>kernel

>weight
?bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	@gamma
Abeta*

B0
C1*

B0
C1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�trace_0* 
* 
$
�0
�1
�2
�3*
* 
* 
* 
J
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9*
J
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel

Nweight
Obias*
 
P0
Q1
R2
S3*
 
P0
Q1
R2
S3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel

Pweight
Qbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Rgamma
Sbeta*

T0
U1*

T0
U1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

�trace_0* 
* 

�0
�1*
* 
* 
* 
.
"0
#1
$2
%3
&4
'5*
.
"0
#1
$2
%3
&4
'5*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

"kernel

"weight
#bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel

$weight
%bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

&kernel

&weight
'bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
(0
)1
*2
+3*
 
(0
)1
*2
+3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

(kernel

(weight
)bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta*
* 

�0*
* 
* 
* 

,0
-1*

,0
-1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

�0
�1*
* 
* 
* 

.0
/1*

.0
/1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

00
11*

00
11*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 

�0
�1*
* 
* 
* 
.
20
31
42
53
64
75*
.
20
31
42
53
64
75*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel

2weight
3bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

4kernel

4weight
5bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

6kernel

6weight
7bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
80
91
:2
;3*
 
80
91
:2
;3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

8kernel

8weight
9bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	:gamma
;beta*
* 

�0*
* 
* 
* 

<0
=1*

<0
=1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

�0
�1*
* 
* 
* 

>0
?1*

>0
?1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

@0
A1*

@0
A1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

�0
�1*
* 
* 
* 
.
D0
E1
F2
G3
H4
I5*
.
D0
E1
F2
G3
H4
I5*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel

Dweight
Ebias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel

Fweight
Gbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Hkernel

Hweight
Ibias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
J0
K1
L2
M3*
 
J0
K1
L2
M3*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel

Jweight
Kbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta*
* 

�0*
* 
* 
* 

N0
O1*

N0
O1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 

�0
�1*
* 
* 
* 

P0
Q1*

P0
Q1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

R0
S1*

R0
S1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
$
�0
�1
�2
�3*
* 
* 
* 

"0
#1*

"0
#1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

$0
%1*

$0
%1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

&0
'1*

&0
'1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

�0
�1*
* 
* 
* 

(0
)1*

(0
)1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

*0
+1*

*0
+1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
$
�0
�1
�2
�3*
* 
* 
* 

20
31*

20
31*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

40
51*

40
51*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

60
71*

60
71*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

�0
�1*
* 
* 
* 

80
91*

80
91*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

:0
;1*

:0
;1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
$
�0
�1
�2
�3*
* 
* 
* 

D0
E1*

D0
E1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

F0
G1*

F0
G1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

H0
I1*

H0
I1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses* 
* 
* 
* 

�0
�1*
* 
* 
* 

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 

L0
M1*

L0
M1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�$
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!model/cls_emb/Read/ReadVariableOp$model/emb/kernel/Read/ReadVariableOpImodel/model/embeddings/position_embeddings/embeddings/Read/ReadVariableOpKmodel/model/embeddings/token_type_embeddings/embeddings/Read/ReadVariableOp:model/model/embeddings/LayerNorm/gamma/Read/ReadVariableOp9model/model/embeddings/LayerNorm/beta/Read/ReadVariableOpKmodel/model/encoder/layer.0/attention/self/query/kernel/Read/ReadVariableOpImodel/model/encoder/layer.0/attention/self/query/bias/Read/ReadVariableOpImodel/model/encoder/layer.0/attention/self/key/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.0/attention/self/key/bias/Read/ReadVariableOpKmodel/model/encoder/layer.0/attention/self/value/kernel/Read/ReadVariableOpImodel/model/encoder/layer.0/attention/self/value/bias/Read/ReadVariableOpMmodel/model/encoder/layer.0/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.0/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.0/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.0/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.0/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.0/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.0/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.0/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.0/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.0/output/LayerNorm/beta/Read/ReadVariableOpKmodel/model/encoder/layer.1/attention/self/query/kernel/Read/ReadVariableOpImodel/model/encoder/layer.1/attention/self/query/bias/Read/ReadVariableOpImodel/model/encoder/layer.1/attention/self/key/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.1/attention/self/key/bias/Read/ReadVariableOpKmodel/model/encoder/layer.1/attention/self/value/kernel/Read/ReadVariableOpImodel/model/encoder/layer.1/attention/self/value/bias/Read/ReadVariableOpMmodel/model/encoder/layer.1/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.1/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.1/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.1/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.1/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.1/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.1/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.1/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.1/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.1/output/LayerNorm/beta/Read/ReadVariableOp?model/model/encoder/layer.1/cpe_conv/kernel/Read/ReadVariableOp=model/model/encoder/layer.1/cpe_conv/bias/Read/ReadVariableOpKmodel/model/encoder/layer.2/attention/self/query/kernel/Read/ReadVariableOpImodel/model/encoder/layer.2/attention/self/query/bias/Read/ReadVariableOpImodel/model/encoder/layer.2/attention/self/key/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.2/attention/self/key/bias/Read/ReadVariableOpKmodel/model/encoder/layer.2/attention/self/value/kernel/Read/ReadVariableOpImodel/model/encoder/layer.2/attention/self/value/bias/Read/ReadVariableOpMmodel/model/encoder/layer.2/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.2/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.2/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.2/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.2/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.2/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.2/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.2/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.2/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.2/output/LayerNorm/beta/Read/ReadVariableOp?model/model/encoder/layer.2/cpe_conv/kernel/Read/ReadVariableOp=model/model/encoder/layer.2/cpe_conv/bias/Read/ReadVariableOp%model/fc.1/kernel/Read/ReadVariableOp#model/fc.1/bias/Read/ReadVariableOpConst_2*I
TinB
@2>*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_72551
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodel/cls_embmodel/emb/kernel5model/model/embeddings/position_embeddings/embeddings7model/model/embeddings/token_type_embeddings/embeddings&model/model/embeddings/LayerNorm/gamma%model/model/embeddings/LayerNorm/beta7model/model/encoder/layer.0/attention/self/query/kernel5model/model/encoder/layer.0/attention/self/query/bias5model/model/encoder/layer.0/attention/self/key/kernel3model/model/encoder/layer.0/attention/self/key/bias7model/model/encoder/layer.0/attention/self/value/kernel5model/model/encoder/layer.0/attention/self/value/bias9model/model/encoder/layer.0/attention/output/dense/kernel7model/model/encoder/layer.0/attention/output/dense/bias<model/model/encoder/layer.0/attention/output/LayerNorm/gamma;model/model/encoder/layer.0/attention/output/LayerNorm/beta5model/model/encoder/layer.0/intermediate/dense/kernel3model/model/encoder/layer.0/intermediate/dense/bias/model/model/encoder/layer.0/output/dense/kernel-model/model/encoder/layer.0/output/dense/bias2model/model/encoder/layer.0/output/LayerNorm/gamma1model/model/encoder/layer.0/output/LayerNorm/beta7model/model/encoder/layer.1/attention/self/query/kernel5model/model/encoder/layer.1/attention/self/query/bias5model/model/encoder/layer.1/attention/self/key/kernel3model/model/encoder/layer.1/attention/self/key/bias7model/model/encoder/layer.1/attention/self/value/kernel5model/model/encoder/layer.1/attention/self/value/bias9model/model/encoder/layer.1/attention/output/dense/kernel7model/model/encoder/layer.1/attention/output/dense/bias<model/model/encoder/layer.1/attention/output/LayerNorm/gamma;model/model/encoder/layer.1/attention/output/LayerNorm/beta5model/model/encoder/layer.1/intermediate/dense/kernel3model/model/encoder/layer.1/intermediate/dense/bias/model/model/encoder/layer.1/output/dense/kernel-model/model/encoder/layer.1/output/dense/bias2model/model/encoder/layer.1/output/LayerNorm/gamma1model/model/encoder/layer.1/output/LayerNorm/beta+model/model/encoder/layer.1/cpe_conv/kernel)model/model/encoder/layer.1/cpe_conv/bias7model/model/encoder/layer.2/attention/self/query/kernel5model/model/encoder/layer.2/attention/self/query/bias5model/model/encoder/layer.2/attention/self/key/kernel3model/model/encoder/layer.2/attention/self/key/bias7model/model/encoder/layer.2/attention/self/value/kernel5model/model/encoder/layer.2/attention/self/value/bias9model/model/encoder/layer.2/attention/output/dense/kernel7model/model/encoder/layer.2/attention/output/dense/bias<model/model/encoder/layer.2/attention/output/LayerNorm/gamma;model/model/encoder/layer.2/attention/output/LayerNorm/beta5model/model/encoder/layer.2/intermediate/dense/kernel3model/model/encoder/layer.2/intermediate/dense/bias/model/model/encoder/layer.2/output/dense/kernel-model/model/encoder/layer.2/output/dense/bias2model/model/encoder/layer.2/output/LayerNorm/gamma1model/model/encoder/layer.2/output/LayerNorm/beta+model/model/encoder/layer.2/cpe_conv/kernel)model/model/encoder/layer.2/cpe_conv/biasmodel/fc.1/kernelmodel/fc.1/bias*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_72741��
��
�G
@__inference_model_layer_call_and_return_conditional_losses_72153
inputs_embeds6
"emb_matmul_readvariableop_resource:
��5
concat_readvariableop_resource:�
model_embeddings_71759N
;model_embeddings_position_embeddings_embedding_lookup_71767:	a�
model_embeddings_71778P
=model_embeddings_token_type_embeddings_embedding_lookup_71787:	�O
@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�K
<model_embeddings_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_0_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_0_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_0_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_0_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_0_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_0_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_0_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_0_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_0_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_0_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource:	�M
6model_encoder_layer_1_cpe_conv_readvariableop_resource:�M
>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�[
Gmodel_encoder_layer_1_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_1_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_1_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_1_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_1_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_1_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_1_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_1_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_1_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_1_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource:	�M
6model_encoder_layer_2_cpe_conv_readvariableop_resource:�M
>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�[
Gmodel_encoder_layer_2_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_2_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_2_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_2_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_2_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_2_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_2_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_2_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_2_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_2_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource:	�7
#fc_1_matmul_readvariableop_resource:
��/
 fc_1_add_readvariableop_resource:	�
identity��concat/ReadVariableOp�emb/MatMul/ReadVariableOp�fc.1/MatMul/ReadVariableOp�fc.1/add/ReadVariableOp�3model/embeddings/LayerNorm/batchnorm/ReadVariableOp�7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�5model/embeddings/position_embeddings/embedding_lookup�7model/embeddings/token_type_embeddings/embedding_lookup�Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.0/attention/self/key/add/ReadVariableOp�@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.0/attention/self/query/add/ReadVariableOp�@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.0/attention/self/value/add/ReadVariableOp�>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.0/output/dense/add/ReadVariableOp�Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.1/attention/self/key/add/ReadVariableOp�@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.1/attention/self/query/add/ReadVariableOp�@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.1/attention/self/value/add/ReadVariableOp�5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.1/cpe_conv/ReadVariableOp�>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.1/output/dense/add/ReadVariableOp�Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.2/attention/self/key/add/ReadVariableOp�@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.2/attention/self/query/add/ReadVariableOp�@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.2/attention/self/value/add/ReadVariableOp�5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.2/cpe_conv/ReadVariableOp�>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.2/output/dense/add/ReadVariableOp~
emb/MatMul/ReadVariableOpReadVariableOp"emb_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�

emb/MatMulBatchMatMulV2inputs_embeds!emb/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������y
concat/ReadVariableOpReadVariableOpconcat_readvariableop_resource*#
_output_shapes
:�*
dtype0M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2concat/ReadVariableOp:value:0emb/MatMul:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:����������U
model/embeddings/ShapeShapeconcat:output:0*
T0*
_output_shapes
:n
$model/embeddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&model/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model/embeddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/embeddings/strided_sliceStridedSlicemodel/embeddings/Shape:output:0-model/embeddings/strided_slice/stack:output:0/model/embeddings/strided_slice/stack_1:output:0/model/embeddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
model/embeddings/ConstConst*
_output_shapes
: *
dtype0*
value	B : Z
model/embeddings/Const_1Const*
_output_shapes
: *
dtype0*
value	B :}
&model/embeddings/strided_slice_1/stackPackmodel/embeddings/Const:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_1/stack_1Pack'model/embeddings/strided_slice:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_1/stack_2Pack!model/embeddings/Const_1:output:0*
N*
T0*
_output_shapes
:�
 model/embeddings/strided_slice_1StridedSlicemodel_embeddings_71759/model/embeddings/strided_slice_1/stack:output:01model/embeddings/strided_slice_1/stack_1:output:01model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
5model/embeddings/position_embeddings/embedding_lookupResourceGather;model_embeddings_position_embeddings_embedding_lookup_71767)model/embeddings/strided_slice_1:output:0*
Tindices0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/71767*(
_output_shapes
:����������*
dtype0�
>model/embeddings/position_embeddings/embedding_lookup/IdentityIdentity>model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/71767*(
_output_shapes
:�����������
@model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityGmodel/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/addAddV2concat:output:0Imodel/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:����������W
model/embeddings/Shape_1Shapeconcat:output:0*
T0*
_output_shapes
:p
&model/embeddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(model/embeddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model/embeddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model/embeddings/strided_slice_2StridedSlice!model/embeddings/Shape_1:output:0/model/embeddings/strided_slice_2/stack:output:01model/embeddings/strided_slice_2/stack_1:output:01model/embeddings/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
model/embeddings/Const_2Const*
_output_shapes
: *
dtype0*
value	B : Z
model/embeddings/Const_3Const*
_output_shapes
: *
dtype0*
value	B :
&model/embeddings/strided_slice_3/stackPack!model/embeddings/Const_2:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_3/stack_1Pack)model/embeddings/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_3/stack_2Pack!model/embeddings/Const_3:output:0*
N*
T0*
_output_shapes
:�
 model/embeddings/strided_slice_3StridedSlicemodel_embeddings_71778/model/embeddings/strided_slice_3/stack:output:01model/embeddings/strided_slice_3/stack_1:output:01model/embeddings/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
+model/embeddings/token_type_embeddings/CastCast)model/embeddings/strided_slice_3:output:0*

DstT0*

SrcT0*#
_output_shapes
:����������
7model/embeddings/token_type_embeddings/embedding_lookupResourceGather=model_embeddings_token_type_embeddings_embedding_lookup_71787/model/embeddings/token_type_embeddings/Cast:y:0*
Tindices0*P
_classF
DBloc:@model/embeddings/token_type_embeddings/embedding_lookup/71787*(
_output_shapes
:����������*
dtype0�
@model/embeddings/token_type_embeddings/embedding_lookup/IdentityIdentity@model/embeddings/token_type_embeddings/embedding_lookup:output:0*
T0*P
_classF
DBloc:@model/embeddings/token_type_embeddings/embedding_lookup/71787*(
_output_shapes
:�����������
Bmodel/embeddings/token_type_embeddings/embedding_lookup/Identity_1IdentityImodel/embeddings/token_type_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/add_1AddV2model/embeddings/add:z:0Kmodel/embeddings/token_type_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
9model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
'model/embeddings/LayerNorm/moments/meanMeanmodel/embeddings/add_1:z:0Bmodel/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
/model/embeddings/LayerNorm/moments/StopGradientStopGradient0model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
4model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencemodel/embeddings/add_1:z:08model/embeddings/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
=model/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model/embeddings/LayerNorm/moments/varianceMean8model/embeddings/LayerNorm/moments/SquaredDifference:z:0Fmodel/embeddings/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(o
*model/embeddings/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
(model/embeddings/LayerNorm/batchnorm/addAddV24model/embeddings/LayerNorm/moments/variance:output:03model/embeddings/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
*model/embeddings/LayerNorm/batchnorm/RsqrtRsqrt,model/embeddings/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(model/embeddings/LayerNorm/batchnorm/mulMul.model/embeddings/LayerNorm/batchnorm/Rsqrt:y:0?model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/mul_1Mulmodel/embeddings/add_1:z:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/mul_2Mul0model/embeddings/LayerNorm/moments/mean:output:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
3model/embeddings/LayerNorm/batchnorm/ReadVariableOpReadVariableOp<model_embeddings_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(model/embeddings/LayerNorm/batchnorm/subSub;model/embeddings/LayerNorm/batchnorm/ReadVariableOp:value:0.model/embeddings/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/add_1AddV2.model/embeddings/LayerNorm/batchnorm/mul_1:z:0,model/embeddings/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_0_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.0/attention/self/key/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.0/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_0_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.0/attention/self/key/addAddV28model/encoder/layer.0/attention/self/key/MatMul:output:0Cmodel/encoder/layer.0/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.0/attention/self/ReshapeReshape0model/encoder/layer.0/attention/self/key/add:z:0;model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.0/attention/self/transpose	Transpose5model/encoder/layer.0/attention/self/Reshape:output:0<model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.0/attention/self/value/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Hmodel/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.0/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_0_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.0/attention/self/value/addAddV2:model/encoder/layer.0/attention/self/value/MatMul:output:0Emodel/encoder/layer.0/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_1Reshape2model/encoder/layer.0/attention/self/value/add:z:0=model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_1	Transpose7model/encoder/layer.0/attention/self/Reshape_1:output:0>model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.0/attention/self/query/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Hmodel/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.0/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_0_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.0/attention/self/query/addAddV2:model/encoder/layer.0/attention/self/query/MatMul:output:0Emodel/encoder/layer.0/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_2Reshape2model/encoder/layer.0/attention/self/query/add:z:0=model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_2	Transpose7model/encoder/layer.0/attention/self/Reshape_2:output:0>model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.0/attention/self/MatMulBatchMatMulV24model/encoder/layer.0/attention/self/transpose_2:y:02model/encoder/layer.0/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.0/attention/self/truedivRealDiv4model/encoder/layer.0/attention/self/MatMul:output:07model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.0/attention/self/softmax_6/SoftmaxSoftmax0model/encoder/layer.0/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.0/attention/self/softmax_6/Softmax:softmax:04model/encoder/layer.0/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_3	Transpose6model/encoder/layer.0/attention/self/MatMul_1:output:0>model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.0/attention/self/Reshape_3Reshape4model/encoder/layer.0/attention/self/transpose_3:y:0=model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_3:output:0Jmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_0_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.0/attention/output/dense/addAddV2<model/encoder/layer.0/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.0/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.0/attention/output/addAddV24model/encoder/layer.0/attention/output/dense/add:z:0.model/embeddings/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.0/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.0/attention/output/add:z:0Xmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.0/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.0/attention/output/add:z:0Nmodel/encoder/layer.0/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.0/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.0/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.0/attention/output/add:z:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.0/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.0/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_0_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.0/intermediate/dense/addAddV28model/encoder/layer.0/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.0/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.0/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.0/intermediate/mulMul0model/encoder/layer.0/intermediate/beta:output:00model/encoder/layer.0/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.0/intermediate/SigmoidSigmoid*model/encoder/layer.0/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.0/intermediate/mul_1Mul0model/encoder/layer.0/intermediate/dense/add:z:0.model/encoder/layer.0/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.0/intermediate/IdentityIdentity,model/encoder/layer.0/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.0/intermediate/IdentityN	IdentityN,model/encoder/layer.0/intermediate/mul_1:z:00model/encoder/layer.0/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-71882*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.0/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_0_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.0/output/dense/MatMulBatchMatMulV25model/encoder/layer.0/intermediate/IdentityN:output:0@model/encoder/layer.0/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.0/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_0_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.0/output/dense/addAddV22model/encoder/layer.0/output/dense/MatMul:output:0=model/encoder/layer.0/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.0/output/addAddV2*model/encoder/layer.0/output/dense/add:z:0Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.0/output/LayerNorm/moments/meanMean$model/encoder/layer.0/output/add:z:0Nmodel/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.0/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.0/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.0/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.0/output/add:z:0Dmodel/encoder/layer.0/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.0/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.0/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.0/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.0/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.0/output/LayerNorm/moments/variance:output:0?model/encoder/layer.0/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.0/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.0/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.0/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.0/output/add:z:08model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.0/output/LayerNorm/moments/mean:output:08model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.0/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.0/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
-model/encoder/layer.1/cpe_conv/ReadVariableOpReadVariableOp6model_encoder_layer_1_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
.model/encoder/layer.1/cpe_conv/PartitionedCallPartitionedCall:model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:05model/encoder/layer.1/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69646�
5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpReadVariableOp>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.1/cpe_conv/BiasAddBiasAdd7model/encoder/layer.1/cpe_conv/PartitionedCall:output:0=model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
model/encoder/layer.1/addAddV2:model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0/model/encoder/layer.1/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_1_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.1/attention/self/key/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Fmodel/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.1/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_1_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.1/attention/self/key/addAddV28model/encoder/layer.1/attention/self/key/MatMul:output:0Cmodel/encoder/layer.1/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.1/attention/self/ReshapeReshape0model/encoder/layer.1/attention/self/key/add:z:0;model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.1/attention/self/transpose	Transpose5model/encoder/layer.1/attention/self/Reshape:output:0<model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.1/attention/self/value/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Hmodel/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.1/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_1_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.1/attention/self/value/addAddV2:model/encoder/layer.1/attention/self/value/MatMul:output:0Emodel/encoder/layer.1/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_1Reshape2model/encoder/layer.1/attention/self/value/add:z:0=model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_1	Transpose7model/encoder/layer.1/attention/self/Reshape_1:output:0>model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.1/attention/self/query/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Hmodel/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.1/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_1_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.1/attention/self/query/addAddV2:model/encoder/layer.1/attention/self/query/MatMul:output:0Emodel/encoder/layer.1/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_2Reshape2model/encoder/layer.1/attention/self/query/add:z:0=model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_2	Transpose7model/encoder/layer.1/attention/self/Reshape_2:output:0>model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.1/attention/self/MatMulBatchMatMulV24model/encoder/layer.1/attention/self/transpose_2:y:02model/encoder/layer.1/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.1/attention/self/truedivRealDiv4model/encoder/layer.1/attention/self/MatMul:output:07model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.1/attention/self/softmax_7/SoftmaxSoftmax0model/encoder/layer.1/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.1/attention/self/softmax_7/Softmax:softmax:04model/encoder/layer.1/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_3	Transpose6model/encoder/layer.1/attention/self/MatMul_1:output:0>model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.1/attention/self/Reshape_3Reshape4model/encoder/layer.1/attention/self/transpose_3:y:0=model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_3:output:0Jmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.1/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_1_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.1/attention/output/dense/addAddV2<model/encoder/layer.1/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.1/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.1/attention/output/addAddV24model/encoder/layer.1/attention/output/dense/add:z:0model/encoder/layer.1/add:z:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.1/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.1/attention/output/add:z:0Xmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.1/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.1/attention/output/add:z:0Nmodel/encoder/layer.1/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.1/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.1/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.1/attention/output/add:z:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.1/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.1/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_1_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.1/intermediate/dense/addAddV28model/encoder/layer.1/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.1/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.1/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.1/intermediate/mulMul0model/encoder/layer.1/intermediate/beta:output:00model/encoder/layer.1/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.1/intermediate/SigmoidSigmoid*model/encoder/layer.1/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.1/intermediate/mul_1Mul0model/encoder/layer.1/intermediate/dense/add:z:0.model/encoder/layer.1/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.1/intermediate/IdentityIdentity,model/encoder/layer.1/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.1/intermediate/IdentityN	IdentityN,model/encoder/layer.1/intermediate/mul_1:z:00model/encoder/layer.1/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-71992*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.1/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_1_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.1/output/dense/MatMulBatchMatMulV25model/encoder/layer.1/intermediate/IdentityN:output:0@model/encoder/layer.1/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.1/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_1_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.1/output/dense/addAddV22model/encoder/layer.1/output/dense/MatMul:output:0=model/encoder/layer.1/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.1/output/addAddV2*model/encoder/layer.1/output/dense/add:z:0Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.1/output/LayerNorm/moments/meanMean$model/encoder/layer.1/output/add:z:0Nmodel/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.1/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.1/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.1/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.1/output/add:z:0Dmodel/encoder/layer.1/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.1/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.1/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.1/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.1/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.1/output/LayerNorm/moments/variance:output:0?model/encoder/layer.1/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.1/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.1/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.1/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.1/output/add:z:08model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.1/output/LayerNorm/moments/mean:output:08model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.1/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.1/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
-model/encoder/layer.2/cpe_conv/ReadVariableOpReadVariableOp6model_encoder_layer_2_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
.model/encoder/layer.2/cpe_conv/PartitionedCallPartitionedCall:model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:05model/encoder/layer.2/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69767�
5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpReadVariableOp>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.2/cpe_conv/BiasAddBiasAdd7model/encoder/layer.2/cpe_conv/PartitionedCall:output:0=model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
model/encoder/layer.2/addAddV2:model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0/model/encoder/layer.2/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_2_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.2/attention/self/key/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Fmodel/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.2/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_2_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.2/attention/self/key/addAddV28model/encoder/layer.2/attention/self/key/MatMul:output:0Cmodel/encoder/layer.2/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.2/attention/self/ReshapeReshape0model/encoder/layer.2/attention/self/key/add:z:0;model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.2/attention/self/transpose	Transpose5model/encoder/layer.2/attention/self/Reshape:output:0<model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.2/attention/self/value/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Hmodel/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.2/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_2_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.2/attention/self/value/addAddV2:model/encoder/layer.2/attention/self/value/MatMul:output:0Emodel/encoder/layer.2/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_1Reshape2model/encoder/layer.2/attention/self/value/add:z:0=model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_1	Transpose7model/encoder/layer.2/attention/self/Reshape_1:output:0>model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
8model/encoder/layer.2/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
:model/encoder/layer.2/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
:model/encoder/layer.2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/encoder/layer.2/attention/self/strided_sliceStridedSlicemodel/encoder/layer.2/add:z:0Amodel/encoder/layer.2/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.2/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.2/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.2/attention/self/query/MatMulBatchMatMulV2;model/encoder/layer.2/attention/self/strided_slice:output:0Hmodel/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.2/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_2_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.2/attention/self/query/addAddV2:model/encoder/layer.2/attention/self/query/MatMul:output:0Emodel/encoder/layer.2/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_2Reshape2model/encoder/layer.2/attention/self/query/add:z:0=model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_2	Transpose7model/encoder/layer.2/attention/self/Reshape_2:output:0>model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.2/attention/self/MatMulBatchMatMulV24model/encoder/layer.2/attention/self/transpose_2:y:02model/encoder/layer.2/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.2/attention/self/truedivRealDiv4model/encoder/layer.2/attention/self/MatMul:output:07model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.2/attention/self/softmax_8/SoftmaxSoftmax0model/encoder/layer.2/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.2/attention/self/softmax_8/Softmax:softmax:04model/encoder/layer.2/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_3	Transpose6model/encoder/layer.2/attention/self/MatMul_1:output:0>model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.2/attention/self/Reshape_3Reshape4model/encoder/layer.2/attention/self/transpose_3:y:0=model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_3:output:0Jmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.2/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_2_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.2/attention/output/dense/addAddV2<model/encoder/layer.2/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.2/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:model/encoder/layer.2/attention/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
<model/encoder/layer.2/attention/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
<model/encoder/layer.2/attention/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
4model/encoder/layer.2/attention/output/strided_sliceStridedSlicemodel/encoder/layer.2/add:z:0Cmodel/encoder/layer.2/attention/output/strided_slice/stack:output:0Emodel/encoder/layer.2/attention/output/strided_slice/stack_1:output:0Emodel/encoder/layer.2/attention/output/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
*model/encoder/layer.2/attention/output/addAddV24model/encoder/layer.2/attention/output/dense/add:z:0=model/encoder/layer.2/attention/output/strided_slice:output:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.2/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.2/attention/output/add:z:0Xmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.2/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.2/attention/output/add:z:0Nmodel/encoder/layer.2/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.2/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.2/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.2/attention/output/add:z:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.2/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.2/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_2_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.2/intermediate/dense/addAddV28model/encoder/layer.2/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.2/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.2/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.2/intermediate/mulMul0model/encoder/layer.2/intermediate/beta:output:00model/encoder/layer.2/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.2/intermediate/SigmoidSigmoid*model/encoder/layer.2/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.2/intermediate/mul_1Mul0model/encoder/layer.2/intermediate/dense/add:z:0.model/encoder/layer.2/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.2/intermediate/IdentityIdentity,model/encoder/layer.2/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.2/intermediate/IdentityN	IdentityN,model/encoder/layer.2/intermediate/mul_1:z:00model/encoder/layer.2/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-72110*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.2/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_2_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.2/output/dense/MatMulBatchMatMulV25model/encoder/layer.2/intermediate/IdentityN:output:0@model/encoder/layer.2/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.2/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_2_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.2/output/dense/addAddV22model/encoder/layer.2/output/dense/MatMul:output:0=model/encoder/layer.2/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.2/output/addAddV2*model/encoder/layer.2/output/dense/add:z:0Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.2/output/LayerNorm/moments/meanMean$model/encoder/layer.2/output/add:z:0Nmodel/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.2/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.2/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.2/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.2/output/add:z:0Dmodel/encoder/layer.2/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.2/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.2/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.2/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.2/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.2/output/LayerNorm/moments/variance:output:0?model/encoder/layer.2/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.2/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.2/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.2/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.2/output/add:z:08model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.2/output/LayerNorm/moments/mean:output:08model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.2/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.2/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlice:model/encoder/layer.2/output/LayerNorm/batchnorm/add_1:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_mask*
shrink_axis_mask�
fc.1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
fc.1/MatMulMatMulstrided_slice:output:0"fc.1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
fc.1/add/ReadVariableOpReadVariableOp fc_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0s
fc.1/addAddV2fc.1/MatMul:product:0fc.1/add/ReadVariableOp:value:0*
T0*
_output_shapes
:	�S
IdentityIdentityfc.1/add:z:0^NoOp*
T0*
_output_shapes
:	��
NoOpNoOp^concat/ReadVariableOp^emb/MatMul/ReadVariableOp^fc.1/MatMul/ReadVariableOp^fc.1/add/ReadVariableOp4^model/embeddings/LayerNorm/batchnorm/ReadVariableOp8^model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp6^model/embeddings/position_embeddings/embedding_lookup8^model/embeddings/token_type_embeddings/embedding_lookupJ^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.0/attention/self/key/add/ReadVariableOpA^model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.0/attention/self/query/add/ReadVariableOpA^model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.0/attention/self/value/add/ReadVariableOp?^model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.0/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.0/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.0/output/dense/add/ReadVariableOpJ^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.1/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.1/attention/self/key/add/ReadVariableOpA^model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.1/attention/self/query/add/ReadVariableOpA^model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.1/attention/self/value/add/ReadVariableOp6^model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.1/cpe_conv/ReadVariableOp?^model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.1/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.1/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.1/output/dense/add/ReadVariableOpJ^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.2/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.2/attention/self/key/add/ReadVariableOpA^model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.2/attention/self/query/add/ReadVariableOpA^model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.2/attention/self/value/add/ReadVariableOp6^model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.2/cpe_conv/ReadVariableOp?^model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.2/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.2/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2.
concat/ReadVariableOpconcat/ReadVariableOp26
emb/MatMul/ReadVariableOpemb/MatMul/ReadVariableOp28
fc.1/MatMul/ReadVariableOpfc.1/MatMul/ReadVariableOp22
fc.1/add/ReadVariableOpfc.1/add/ReadVariableOp2j
3model/embeddings/LayerNorm/batchnorm/ReadVariableOp3model/embeddings/LayerNorm/batchnorm/ReadVariableOp2r
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2n
5model/embeddings/position_embeddings/embedding_lookup5model/embeddings/position_embeddings/embedding_lookup2r
7model/embeddings/token_type_embeddings/embedding_lookup7model/embeddings/token_type_embeddings/embedding_lookup2�
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.0/attention/self/key/add/ReadVariableOp;model/encoder/layer.0/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.0/attention/self/query/add/ReadVariableOp=model/encoder/layer.0/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.0/attention/self/value/add/ReadVariableOp=model/encoder/layer.0/attention/self/value/add/ReadVariableOp2�
>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.0/output/dense/add/ReadVariableOp5model/encoder/layer.0/output/dense/add/ReadVariableOp2�
Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.1/attention/self/key/add/ReadVariableOp;model/encoder/layer.1/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.1/attention/self/query/add/ReadVariableOp=model/encoder/layer.1/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.1/attention/self/value/add/ReadVariableOp=model/encoder/layer.1/attention/self/value/add/ReadVariableOp2n
5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp2^
-model/encoder/layer.1/cpe_conv/ReadVariableOp-model/encoder/layer.1/cpe_conv/ReadVariableOp2�
>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.1/output/dense/add/ReadVariableOp5model/encoder/layer.1/output/dense/add/ReadVariableOp2�
Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.2/attention/self/key/add/ReadVariableOp;model/encoder/layer.2/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.2/attention/self/query/add/ReadVariableOp=model/encoder/layer.2/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.2/attention/self/value/add/ReadVariableOp=model/encoder/layer.2/attention/self/value/add/ReadVariableOp2n
5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp2^
-model/encoder/layer.2/cpe_conv/ReadVariableOp-model/encoder/layer.2/cpe_conv/ReadVariableOp2�
>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.2/output/dense/add/ReadVariableOp5model/encoder/layer.2/output/dense/add/ReadVariableOp:[ W
,
_output_shapes
:����������
'
_user_specified_nameinputs_embeds: 

_output_shapes
:a: 

_output_shapes
:a
��
�G
@__inference_model_layer_call_and_return_conditional_losses_70311
inputs_embeds6
"emb_matmul_readvariableop_resource:
��5
concat_readvariableop_resource:�
model_embeddings_69917N
;model_embeddings_position_embeddings_embedding_lookup_69925:	a�
model_embeddings_69936P
=model_embeddings_token_type_embeddings_embedding_lookup_69945:	�O
@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�K
<model_embeddings_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_0_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_0_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_0_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_0_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_0_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_0_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_0_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_0_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_0_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_0_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource:	�M
6model_encoder_layer_1_cpe_conv_readvariableop_resource:�M
>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�[
Gmodel_encoder_layer_1_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_1_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_1_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_1_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_1_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_1_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_1_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_1_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_1_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_1_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource:	�M
6model_encoder_layer_2_cpe_conv_readvariableop_resource:�M
>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�[
Gmodel_encoder_layer_2_attention_self_key_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_2_attention_self_key_add_readvariableop_resource:	�]
Imodel_encoder_layer_2_attention_self_value_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_2_attention_self_value_add_readvariableop_resource:	�]
Imodel_encoder_layer_2_attention_self_query_matmul_readvariableop_resource:
��U
Fmodel_encoder_layer_2_attention_self_query_add_readvariableop_resource:	�_
Kmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource:
��W
Hmodel_encoder_layer_2_attention_output_dense_add_readvariableop_resource:	�e
Vmodel_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�a
Rmodel_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource:	�[
Gmodel_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource:
��S
Dmodel_encoder_layer_2_intermediate_dense_add_readvariableop_resource:	�U
Amodel_encoder_layer_2_output_dense_matmul_readvariableop_resource:
��M
>model_encoder_layer_2_output_dense_add_readvariableop_resource:	�[
Lmodel_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource:	�W
Hmodel_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource:	�7
#fc_1_matmul_readvariableop_resource:
��/
 fc_1_add_readvariableop_resource:	�
identity��concat/ReadVariableOp�emb/MatMul/ReadVariableOp�fc.1/MatMul/ReadVariableOp�fc.1/add/ReadVariableOp�3model/embeddings/LayerNorm/batchnorm/ReadVariableOp�7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�5model/embeddings/position_embeddings/embedding_lookup�7model/embeddings/token_type_embeddings/embedding_lookup�Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.0/attention/self/key/add/ReadVariableOp�@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.0/attention/self/query/add/ReadVariableOp�@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.0/attention/self/value/add/ReadVariableOp�>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.0/output/dense/add/ReadVariableOp�Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.1/attention/self/key/add/ReadVariableOp�@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.1/attention/self/query/add/ReadVariableOp�@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.1/attention/self/value/add/ReadVariableOp�5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.1/cpe_conv/ReadVariableOp�>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.1/output/dense/add/ReadVariableOp�Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp�;model/encoder/layer.2/attention/self/key/add/ReadVariableOp�@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp�=model/encoder/layer.2/attention/self/query/add/ReadVariableOp�@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp�=model/encoder/layer.2/attention/self/value/add/ReadVariableOp�5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.2/cpe_conv/ReadVariableOp�>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.2/output/dense/add/ReadVariableOp~
emb/MatMul/ReadVariableOpReadVariableOp"emb_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�

emb/MatMulBatchMatMulV2inputs_embeds!emb/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������y
concat/ReadVariableOpReadVariableOpconcat_readvariableop_resource*#
_output_shapes
:�*
dtype0M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2concat/ReadVariableOp:value:0emb/MatMul:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:����������U
model/embeddings/ShapeShapeconcat:output:0*
T0*
_output_shapes
:n
$model/embeddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:p
&model/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&model/embeddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
model/embeddings/strided_sliceStridedSlicemodel/embeddings/Shape:output:0-model/embeddings/strided_slice/stack:output:0/model/embeddings/strided_slice/stack_1:output:0/model/embeddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
model/embeddings/ConstConst*
_output_shapes
: *
dtype0*
value	B : Z
model/embeddings/Const_1Const*
_output_shapes
: *
dtype0*
value	B :}
&model/embeddings/strided_slice_1/stackPackmodel/embeddings/Const:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_1/stack_1Pack'model/embeddings/strided_slice:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_1/stack_2Pack!model/embeddings/Const_1:output:0*
N*
T0*
_output_shapes
:�
 model/embeddings/strided_slice_1StridedSlicemodel_embeddings_69917/model/embeddings/strided_slice_1/stack:output:01model/embeddings/strided_slice_1/stack_1:output:01model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
5model/embeddings/position_embeddings/embedding_lookupResourceGather;model_embeddings_position_embeddings_embedding_lookup_69925)model/embeddings/strided_slice_1:output:0*
Tindices0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/69925*(
_output_shapes
:����������*
dtype0�
>model/embeddings/position_embeddings/embedding_lookup/IdentityIdentity>model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/69925*(
_output_shapes
:�����������
@model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityGmodel/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/addAddV2concat:output:0Imodel/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:����������W
model/embeddings/Shape_1Shapeconcat:output:0*
T0*
_output_shapes
:p
&model/embeddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:r
(model/embeddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model/embeddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model/embeddings/strided_slice_2StridedSlice!model/embeddings/Shape_1:output:0/model/embeddings/strided_slice_2/stack:output:01model/embeddings/strided_slice_2/stack_1:output:01model/embeddings/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
model/embeddings/Const_2Const*
_output_shapes
: *
dtype0*
value	B : Z
model/embeddings/Const_3Const*
_output_shapes
: *
dtype0*
value	B :
&model/embeddings/strided_slice_3/stackPack!model/embeddings/Const_2:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_3/stack_1Pack)model/embeddings/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
(model/embeddings/strided_slice_3/stack_2Pack!model/embeddings/Const_3:output:0*
N*
T0*
_output_shapes
:�
 model/embeddings/strided_slice_3StridedSlicemodel_embeddings_69936/model/embeddings/strided_slice_3/stack:output:01model/embeddings/strided_slice_3/stack_1:output:01model/embeddings/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
+model/embeddings/token_type_embeddings/CastCast)model/embeddings/strided_slice_3:output:0*

DstT0*

SrcT0*#
_output_shapes
:����������
7model/embeddings/token_type_embeddings/embedding_lookupResourceGather=model_embeddings_token_type_embeddings_embedding_lookup_69945/model/embeddings/token_type_embeddings/Cast:y:0*
Tindices0*P
_classF
DBloc:@model/embeddings/token_type_embeddings/embedding_lookup/69945*(
_output_shapes
:����������*
dtype0�
@model/embeddings/token_type_embeddings/embedding_lookup/IdentityIdentity@model/embeddings/token_type_embeddings/embedding_lookup:output:0*
T0*P
_classF
DBloc:@model/embeddings/token_type_embeddings/embedding_lookup/69945*(
_output_shapes
:�����������
Bmodel/embeddings/token_type_embeddings/embedding_lookup/Identity_1IdentityImodel/embeddings/token_type_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/add_1AddV2model/embeddings/add:z:0Kmodel/embeddings/token_type_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
9model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
'model/embeddings/LayerNorm/moments/meanMeanmodel/embeddings/add_1:z:0Bmodel/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
/model/embeddings/LayerNorm/moments/StopGradientStopGradient0model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
4model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencemodel/embeddings/add_1:z:08model/embeddings/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
=model/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
+model/embeddings/LayerNorm/moments/varianceMean8model/embeddings/LayerNorm/moments/SquaredDifference:z:0Fmodel/embeddings/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(o
*model/embeddings/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
(model/embeddings/LayerNorm/batchnorm/addAddV24model/embeddings/LayerNorm/moments/variance:output:03model/embeddings/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
*model/embeddings/LayerNorm/batchnorm/RsqrtRsqrt,model/embeddings/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(model/embeddings/LayerNorm/batchnorm/mulMul.model/embeddings/LayerNorm/batchnorm/Rsqrt:y:0?model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/mul_1Mulmodel/embeddings/add_1:z:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/mul_2Mul0model/embeddings/LayerNorm/moments/mean:output:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
3model/embeddings/LayerNorm/batchnorm/ReadVariableOpReadVariableOp<model_embeddings_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
(model/embeddings/LayerNorm/batchnorm/subSub;model/embeddings/LayerNorm/batchnorm/ReadVariableOp:value:0.model/embeddings/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
*model/embeddings/LayerNorm/batchnorm/add_1AddV2.model/embeddings/LayerNorm/batchnorm/mul_1:z:0,model/embeddings/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_0_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.0/attention/self/key/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.0/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_0_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.0/attention/self/key/addAddV28model/encoder/layer.0/attention/self/key/MatMul:output:0Cmodel/encoder/layer.0/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.0/attention/self/ReshapeReshape0model/encoder/layer.0/attention/self/key/add:z:0;model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.0/attention/self/transpose	Transpose5model/encoder/layer.0/attention/self/Reshape:output:0<model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.0/attention/self/value/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Hmodel/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.0/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_0_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.0/attention/self/value/addAddV2:model/encoder/layer.0/attention/self/value/MatMul:output:0Emodel/encoder/layer.0/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_1Reshape2model/encoder/layer.0/attention/self/value/add:z:0=model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_1	Transpose7model/encoder/layer.0/attention/self/Reshape_1:output:0>model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.0/attention/self/query/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Hmodel/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.0/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_0_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.0/attention/self/query/addAddV2:model/encoder/layer.0/attention/self/query/MatMul:output:0Emodel/encoder/layer.0/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_2Reshape2model/encoder/layer.0/attention/self/query/add:z:0=model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_2	Transpose7model/encoder/layer.0/attention/self/Reshape_2:output:0>model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.0/attention/self/MatMulBatchMatMulV24model/encoder/layer.0/attention/self/transpose_2:y:02model/encoder/layer.0/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.0/attention/self/truedivRealDiv4model/encoder/layer.0/attention/self/MatMul:output:07model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.0/attention/self/softmax_6/SoftmaxSoftmax0model/encoder/layer.0/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.0/attention/self/softmax_6/Softmax:softmax:04model/encoder/layer.0/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_3	Transpose6model/encoder/layer.0/attention/self/MatMul_1:output:0>model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.0/attention/self/Reshape_3Reshape4model/encoder/layer.0/attention/self/transpose_3:y:0=model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_3:output:0Jmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_0_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.0/attention/output/dense/addAddV2<model/encoder/layer.0/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.0/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.0/attention/output/addAddV24model/encoder/layer.0/attention/output/dense/add:z:0.model/embeddings/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.0/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.0/attention/output/add:z:0Xmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.0/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.0/attention/output/add:z:0Nmodel/encoder/layer.0/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.0/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.0/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.0/attention/output/add:z:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.0/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.0/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.0/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_0_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.0/intermediate/dense/addAddV28model/encoder/layer.0/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.0/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.0/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.0/intermediate/mulMul0model/encoder/layer.0/intermediate/beta:output:00model/encoder/layer.0/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.0/intermediate/SigmoidSigmoid*model/encoder/layer.0/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.0/intermediate/mul_1Mul0model/encoder/layer.0/intermediate/dense/add:z:0.model/encoder/layer.0/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.0/intermediate/IdentityIdentity,model/encoder/layer.0/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.0/intermediate/IdentityN	IdentityN,model/encoder/layer.0/intermediate/mul_1:z:00model/encoder/layer.0/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-70040*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.0/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_0_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.0/output/dense/MatMulBatchMatMulV25model/encoder/layer.0/intermediate/IdentityN:output:0@model/encoder/layer.0/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.0/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_0_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.0/output/dense/addAddV22model/encoder/layer.0/output/dense/MatMul:output:0=model/encoder/layer.0/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.0/output/addAddV2*model/encoder/layer.0/output/dense/add:z:0Dmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.0/output/LayerNorm/moments/meanMean$model/encoder/layer.0/output/add:z:0Nmodel/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.0/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.0/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.0/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.0/output/add:z:0Dmodel/encoder/layer.0/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.0/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.0/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.0/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.0/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.0/output/LayerNorm/moments/variance:output:0?model/encoder/layer.0/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.0/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.0/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.0/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.0/output/add:z:08model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.0/output/LayerNorm/moments/mean:output:08model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.0/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.0/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.0/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
-model/encoder/layer.1/cpe_conv/ReadVariableOpReadVariableOp6model_encoder_layer_1_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
.model/encoder/layer.1/cpe_conv/PartitionedCallPartitionedCall:model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:05model/encoder/layer.1/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69646�
5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpReadVariableOp>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.1/cpe_conv/BiasAddBiasAdd7model/encoder/layer.1/cpe_conv/PartitionedCall:output:0=model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
model/encoder/layer.1/addAddV2:model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0/model/encoder/layer.1/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_1_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.1/attention/self/key/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Fmodel/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.1/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_1_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.1/attention/self/key/addAddV28model/encoder/layer.1/attention/self/key/MatMul:output:0Cmodel/encoder/layer.1/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.1/attention/self/ReshapeReshape0model/encoder/layer.1/attention/self/key/add:z:0;model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.1/attention/self/transpose	Transpose5model/encoder/layer.1/attention/self/Reshape:output:0<model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.1/attention/self/value/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Hmodel/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.1/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_1_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.1/attention/self/value/addAddV2:model/encoder/layer.1/attention/self/value/MatMul:output:0Emodel/encoder/layer.1/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_1Reshape2model/encoder/layer.1/attention/self/value/add:z:0=model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_1	Transpose7model/encoder/layer.1/attention/self/Reshape_1:output:0>model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.1/attention/self/query/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Hmodel/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.1/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_1_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.1/attention/self/query/addAddV2:model/encoder/layer.1/attention/self/query/MatMul:output:0Emodel/encoder/layer.1/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_2Reshape2model/encoder/layer.1/attention/self/query/add:z:0=model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_2	Transpose7model/encoder/layer.1/attention/self/Reshape_2:output:0>model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.1/attention/self/MatMulBatchMatMulV24model/encoder/layer.1/attention/self/transpose_2:y:02model/encoder/layer.1/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.1/attention/self/truedivRealDiv4model/encoder/layer.1/attention/self/MatMul:output:07model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.1/attention/self/softmax_7/SoftmaxSoftmax0model/encoder/layer.1/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.1/attention/self/softmax_7/Softmax:softmax:04model/encoder/layer.1/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_3	Transpose6model/encoder/layer.1/attention/self/MatMul_1:output:0>model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.1/attention/self/Reshape_3Reshape4model/encoder/layer.1/attention/self/transpose_3:y:0=model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_3:output:0Jmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.1/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_1_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.1/attention/output/dense/addAddV2<model/encoder/layer.1/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.1/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.1/attention/output/addAddV24model/encoder/layer.1/attention/output/dense/add:z:0model/encoder/layer.1/add:z:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.1/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.1/attention/output/add:z:0Xmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.1/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.1/attention/output/add:z:0Nmodel/encoder/layer.1/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.1/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.1/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.1/attention/output/add:z:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.1/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.1/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.1/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_1_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.1/intermediate/dense/addAddV28model/encoder/layer.1/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.1/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.1/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.1/intermediate/mulMul0model/encoder/layer.1/intermediate/beta:output:00model/encoder/layer.1/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.1/intermediate/SigmoidSigmoid*model/encoder/layer.1/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.1/intermediate/mul_1Mul0model/encoder/layer.1/intermediate/dense/add:z:0.model/encoder/layer.1/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.1/intermediate/IdentityIdentity,model/encoder/layer.1/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.1/intermediate/IdentityN	IdentityN,model/encoder/layer.1/intermediate/mul_1:z:00model/encoder/layer.1/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-70150*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.1/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_1_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.1/output/dense/MatMulBatchMatMulV25model/encoder/layer.1/intermediate/IdentityN:output:0@model/encoder/layer.1/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.1/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_1_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.1/output/dense/addAddV22model/encoder/layer.1/output/dense/MatMul:output:0=model/encoder/layer.1/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.1/output/addAddV2*model/encoder/layer.1/output/dense/add:z:0Dmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.1/output/LayerNorm/moments/meanMean$model/encoder/layer.1/output/add:z:0Nmodel/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.1/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.1/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.1/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.1/output/add:z:0Dmodel/encoder/layer.1/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.1/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.1/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.1/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.1/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.1/output/LayerNorm/moments/variance:output:0?model/encoder/layer.1/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.1/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.1/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.1/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.1/output/add:z:08model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.1/output/LayerNorm/moments/mean:output:08model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.1/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.1/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.1/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
-model/encoder/layer.2/cpe_conv/ReadVariableOpReadVariableOp6model_encoder_layer_2_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
.model/encoder/layer.2/cpe_conv/PartitionedCallPartitionedCall:model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:05model/encoder/layer.2/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69767�
5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpReadVariableOp>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.2/cpe_conv/BiasAddBiasAdd7model/encoder/layer.2/cpe_conv/PartitionedCall:output:0=model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
model/encoder/layer.2/addAddV2:model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0/model/encoder/layer.2/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_2_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.2/attention/self/key/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Fmodel/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.2/attention/self/key/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_2_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.2/attention/self/key/addAddV28model/encoder/layer.2/attention/self/key/MatMul:output:0Cmodel/encoder/layer.2/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.2/attention/self/ReshapeReshape0model/encoder/layer.2/attention/self/key/add:z:0;model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.2/attention/self/transpose	Transpose5model/encoder/layer.2/attention/self/Reshape:output:0<model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.2/attention/self/value/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Hmodel/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.2/attention/self/value/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_2_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.2/attention/self/value/addAddV2:model/encoder/layer.2/attention/self/value/MatMul:output:0Emodel/encoder/layer.2/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_1Reshape2model/encoder/layer.2/attention/self/value/add:z:0=model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_1	Transpose7model/encoder/layer.2/attention/self/Reshape_1:output:0>model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
8model/encoder/layer.2/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
:model/encoder/layer.2/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
:model/encoder/layer.2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
2model/encoder/layer.2/attention/self/strided_sliceStridedSlicemodel/encoder/layer.2/add:z:0Amodel/encoder/layer.2/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.2/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.2/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
1model/encoder/layer.2/attention/self/query/MatMulBatchMatMulV2;model/encoder/layer.2/attention/self/strided_slice:output:0Hmodel/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
=model/encoder/layer.2/attention/self/query/add/ReadVariableOpReadVariableOpFmodel_encoder_layer_2_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
.model/encoder/layer.2/attention/self/query/addAddV2:model/encoder/layer.2/attention/self/query/MatMul:output:0Emodel/encoder/layer.2/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_2Reshape2model/encoder/layer.2/attention/self/query/add:z:0=model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_2	Transpose7model/encoder/layer.2/attention/self/Reshape_2:output:0>model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
+model/encoder/layer.2/attention/self/MatMulBatchMatMulV24model/encoder/layer.2/attention/self/transpose_2:y:02model/encoder/layer.2/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"������������������s
.model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.2/attention/self/truedivRealDiv4model/encoder/layer.2/attention/self/MatMul:output:07model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
6model/encoder/layer.2/attention/self/softmax_8/SoftmaxSoftmax0model/encoder/layer.2/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
-model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV2@model/encoder/layer.2/attention/self/softmax_8/Softmax:softmax:04model/encoder/layer.2/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_3	Transpose6model/encoder/layer.2/attention/self/MatMul_1:output:0>model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.2/attention/self/Reshape_3Reshape4model/encoder/layer.2/attention/self/transpose_3:y:0=model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_3:output:0Jmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.2/attention/output/dense/add/ReadVariableOpReadVariableOpHmodel_encoder_layer_2_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
0model/encoder/layer.2/attention/output/dense/addAddV2<model/encoder/layer.2/attention/output/dense/MatMul:output:0Gmodel/encoder/layer.2/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:model/encoder/layer.2/attention/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
<model/encoder/layer.2/attention/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
<model/encoder/layer.2/attention/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
4model/encoder/layer.2/attention/output/strided_sliceStridedSlicemodel/encoder/layer.2/add:z:0Cmodel/encoder/layer.2/attention/output/strided_slice/stack:output:0Emodel/encoder/layer.2/attention/output/strided_slice/stack_1:output:0Emodel/encoder/layer.2/attention/output/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
*model/encoder/layer.2/attention/output/addAddV24model/encoder/layer.2/attention/output/dense/add:z:0=model/encoder/layer.2/attention/output/strided_slice:output:0*
T0*,
_output_shapes
:�����������
Omodel/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
=model/encoder/layer.2/attention/output/LayerNorm/moments/meanMean.model/encoder/layer.2/attention/output/add:z:0Xmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Emodel/encoder/layer.2/attention/output/LayerNorm/moments/StopGradientStopGradientFmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Jmodel/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference.model/encoder/layer.2/attention/output/add:z:0Nmodel/encoder/layer.2/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Smodel/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Amodel/encoder/layer.2/attention/output/LayerNorm/moments/varianceMeanNmodel/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifference:z:0\model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/addAddV2Jmodel/encoder/layer.2/attention/output/LayerNorm/moments/variance:output:0Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/RsqrtRsqrtBmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpVmodel_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mulMulDmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/Rsqrt:y:0Umodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1Mul.model/encoder/layer.2/attention/output/add:z:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2MulFmodel/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpRmodel_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
>model/encoder/layer.2/attention/output/LayerNorm/batchnorm/subSubQmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1AddV2Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1:z:0Bmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpReadVariableOpGmodel_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
/model/encoder/layer.2/intermediate/dense/MatMulBatchMatMulV2Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0Fmodel/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
;model/encoder/layer.2/intermediate/dense/add/ReadVariableOpReadVariableOpDmodel_encoder_layer_2_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
,model/encoder/layer.2/intermediate/dense/addAddV28model/encoder/layer.2/intermediate/dense/MatMul:output:0Cmodel/encoder/layer.2/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������l
'model/encoder/layer.2/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
&model/encoder/layer.2/intermediate/mulMul0model/encoder/layer.2/intermediate/beta:output:00model/encoder/layer.2/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
*model/encoder/layer.2/intermediate/SigmoidSigmoid*model/encoder/layer.2/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
(model/encoder/layer.2/intermediate/mul_1Mul0model/encoder/layer.2/intermediate/dense/add:z:0.model/encoder/layer.2/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
+model/encoder/layer.2/intermediate/IdentityIdentity,model/encoder/layer.2/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
,model/encoder/layer.2/intermediate/IdentityN	IdentityN,model/encoder/layer.2/intermediate/mul_1:z:00model/encoder/layer.2/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-70268*D
_output_shapes2
0:����������:�����������
8model/encoder/layer.2/output/dense/MatMul/ReadVariableOpReadVariableOpAmodel_encoder_layer_2_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
)model/encoder/layer.2/output/dense/MatMulBatchMatMulV25model/encoder/layer.2/intermediate/IdentityN:output:0@model/encoder/layer.2/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
5model/encoder/layer.2/output/dense/add/ReadVariableOpReadVariableOp>model_encoder_layer_2_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&model/encoder/layer.2/output/dense/addAddV22model/encoder/layer.2/output/dense/MatMul:output:0=model/encoder/layer.2/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
 model/encoder/layer.2/output/addAddV2*model/encoder/layer.2/output/dense/add:z:0Dmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Emodel/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
3model/encoder/layer.2/output/LayerNorm/moments/meanMean$model/encoder/layer.2/output/add:z:0Nmodel/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
;model/encoder/layer.2/output/LayerNorm/moments/StopGradientStopGradient<model/encoder/layer.2/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
@model/encoder/layer.2/output/LayerNorm/moments/SquaredDifferenceSquaredDifference$model/encoder/layer.2/output/add:z:0Dmodel/encoder/layer.2/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Imodel/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7model/encoder/layer.2/output/LayerNorm/moments/varianceMeanDmodel/encoder/layer.2/output/LayerNorm/moments/SquaredDifference:z:0Rmodel/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims({
6model/encoder/layer.2/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
4model/encoder/layer.2/output/LayerNorm/batchnorm/addAddV2@model/encoder/layer.2/output/LayerNorm/moments/variance:output:0?model/encoder/layer.2/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/RsqrtRsqrt8model/encoder/layer.2/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpLmodel_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.2/output/LayerNorm/batchnorm/mulMul:model/encoder/layer.2/output/LayerNorm/batchnorm/Rsqrt:y:0Kmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1Mul$model/encoder/layer.2/output/add:z:08model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2Mul<model/encoder/layer.2/output/LayerNorm/moments/mean:output:08model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpHmodel_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
4model/encoder/layer.2/output/LayerNorm/batchnorm/subSubGmodel/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp:value:0:model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
6model/encoder/layer.2/output/LayerNorm/batchnorm/add_1AddV2:model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1:z:08model/encoder/layer.2/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
strided_sliceStridedSlice:model/encoder/layer.2/output/LayerNorm/batchnorm/add_1:z:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_mask*
shrink_axis_mask�
fc.1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0{
fc.1/MatMulMatMulstrided_slice:output:0"fc.1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	�u
fc.1/add/ReadVariableOpReadVariableOp fc_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0s
fc.1/addAddV2fc.1/MatMul:product:0fc.1/add/ReadVariableOp:value:0*
T0*
_output_shapes
:	�S
IdentityIdentityfc.1/add:z:0^NoOp*
T0*
_output_shapes
:	��
NoOpNoOp^concat/ReadVariableOp^emb/MatMul/ReadVariableOp^fc.1/MatMul/ReadVariableOp^fc.1/add/ReadVariableOp4^model/embeddings/LayerNorm/batchnorm/ReadVariableOp8^model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp6^model/embeddings/position_embeddings/embedding_lookup8^model/embeddings/token_type_embeddings/embedding_lookupJ^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.0/attention/self/key/add/ReadVariableOpA^model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.0/attention/self/query/add/ReadVariableOpA^model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.0/attention/self/value/add/ReadVariableOp?^model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.0/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.0/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.0/output/dense/add/ReadVariableOpJ^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.1/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.1/attention/self/key/add/ReadVariableOpA^model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.1/attention/self/query/add/ReadVariableOpA^model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.1/attention/self/value/add/ReadVariableOp6^model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.1/cpe_conv/ReadVariableOp?^model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.1/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.1/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.1/output/dense/add/ReadVariableOpJ^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.2/attention/output/dense/add/ReadVariableOp?^model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp<^model/encoder/layer.2/attention/self/key/add/ReadVariableOpA^model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp>^model/encoder/layer.2/attention/self/query/add/ReadVariableOpA^model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp>^model/encoder/layer.2/attention/self/value/add/ReadVariableOp6^model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.2/cpe_conv/ReadVariableOp?^model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.2/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.2/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2.
concat/ReadVariableOpconcat/ReadVariableOp26
emb/MatMul/ReadVariableOpemb/MatMul/ReadVariableOp28
fc.1/MatMul/ReadVariableOpfc.1/MatMul/ReadVariableOp22
fc.1/add/ReadVariableOpfc.1/add/ReadVariableOp2j
3model/embeddings/LayerNorm/batchnorm/ReadVariableOp3model/embeddings/LayerNorm/batchnorm/ReadVariableOp2r
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2n
5model/embeddings/position_embeddings/embedding_lookup5model/embeddings/position_embeddings/embedding_lookup2r
7model/embeddings/token_type_embeddings/embedding_lookup7model/embeddings/token_type_embeddings/embedding_lookup2�
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.0/attention/self/key/add/ReadVariableOp;model/encoder/layer.0/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.0/attention/self/query/add/ReadVariableOp=model/encoder/layer.0/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.0/attention/self/value/add/ReadVariableOp=model/encoder/layer.0/attention/self/value/add/ReadVariableOp2�
>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.0/output/dense/add/ReadVariableOp5model/encoder/layer.0/output/dense/add/ReadVariableOp2�
Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.1/attention/self/key/add/ReadVariableOp;model/encoder/layer.1/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.1/attention/self/query/add/ReadVariableOp=model/encoder/layer.1/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.1/attention/self/value/add/ReadVariableOp=model/encoder/layer.1/attention/self/value/add/ReadVariableOp2n
5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp2^
-model/encoder/layer.1/cpe_conv/ReadVariableOp-model/encoder/layer.1/cpe_conv/ReadVariableOp2�
>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.1/output/dense/add/ReadVariableOp5model/encoder/layer.1/output/dense/add/ReadVariableOp2�
Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp2�
>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp>model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp2z
;model/encoder/layer.2/attention/self/key/add/ReadVariableOp;model/encoder/layer.2/attention/self/key/add/ReadVariableOp2�
@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp@model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp2~
=model/encoder/layer.2/attention/self/query/add/ReadVariableOp=model/encoder/layer.2/attention/self/query/add/ReadVariableOp2�
@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp@model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp2~
=model/encoder/layer.2/attention/self/value/add/ReadVariableOp=model/encoder/layer.2/attention/self/value/add/ReadVariableOp2n
5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp2^
-model/encoder/layer.2/cpe_conv/ReadVariableOp-model/encoder/layer.2/cpe_conv/ReadVariableOp2�
>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp2z
;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp2�
?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp2�
Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpCmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp2t
8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp2n
5model/encoder/layer.2/output/dense/add/ReadVariableOp5model/encoder/layer.2/output/dense/add/ReadVariableOp:[ W
,
_output_shapes
:����������
'
_user_specified_nameinputs_embeds: 

_output_shapes
:a: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_72327
result_grads_0
result_grads_1/
+mul_model_encoder_layer_0_intermediate_beta4
0mul_model_encoder_layer_0_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_0_intermediate_beta0mul_model_encoder_layer_0_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_0_intermediate_beta0mul_model_encoder_layer_0_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�
�
"__inference_internal_grad_fn_72417
result_grads_0
result_grads_1/
+mul_model_encoder_layer_2_intermediate_beta4
0mul_model_encoder_layer_2_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_2_intermediate_beta0mul_model_encoder_layer_2_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_2_intermediate_beta0mul_model_encoder_layer_2_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
��
�4
!__inference__traced_restore_72741
file_prefix5
assignvariableop_model_cls_emb:�7
#assignvariableop_1_model_emb_kernel:
��[
Hassignvariableop_2_model_model_embeddings_position_embeddings_embeddings:	a�]
Jassignvariableop_3_model_model_embeddings_token_type_embeddings_embeddings:	�H
9assignvariableop_4_model_model_embeddings_layernorm_gamma:	�G
8assignvariableop_5_model_model_embeddings_layernorm_beta:	�^
Jassignvariableop_6_model_model_encoder_layer_0_attention_self_query_kernel:
��W
Hassignvariableop_7_model_model_encoder_layer_0_attention_self_query_bias:	�\
Hassignvariableop_8_model_model_encoder_layer_0_attention_self_key_kernel:
��U
Fassignvariableop_9_model_model_encoder_layer_0_attention_self_key_bias:	�_
Kassignvariableop_10_model_model_encoder_layer_0_attention_self_value_kernel:
��X
Iassignvariableop_11_model_model_encoder_layer_0_attention_self_value_bias:	�a
Massignvariableop_12_model_model_encoder_layer_0_attention_output_dense_kernel:
��Z
Kassignvariableop_13_model_model_encoder_layer_0_attention_output_dense_bias:	�_
Passignvariableop_14_model_model_encoder_layer_0_attention_output_layernorm_gamma:	�^
Oassignvariableop_15_model_model_encoder_layer_0_attention_output_layernorm_beta:	�]
Iassignvariableop_16_model_model_encoder_layer_0_intermediate_dense_kernel:
��V
Gassignvariableop_17_model_model_encoder_layer_0_intermediate_dense_bias:	�W
Cassignvariableop_18_model_model_encoder_layer_0_output_dense_kernel:
��P
Aassignvariableop_19_model_model_encoder_layer_0_output_dense_bias:	�U
Fassignvariableop_20_model_model_encoder_layer_0_output_layernorm_gamma:	�T
Eassignvariableop_21_model_model_encoder_layer_0_output_layernorm_beta:	�_
Kassignvariableop_22_model_model_encoder_layer_1_attention_self_query_kernel:
��X
Iassignvariableop_23_model_model_encoder_layer_1_attention_self_query_bias:	�]
Iassignvariableop_24_model_model_encoder_layer_1_attention_self_key_kernel:
��V
Gassignvariableop_25_model_model_encoder_layer_1_attention_self_key_bias:	�_
Kassignvariableop_26_model_model_encoder_layer_1_attention_self_value_kernel:
��X
Iassignvariableop_27_model_model_encoder_layer_1_attention_self_value_bias:	�a
Massignvariableop_28_model_model_encoder_layer_1_attention_output_dense_kernel:
��Z
Kassignvariableop_29_model_model_encoder_layer_1_attention_output_dense_bias:	�_
Passignvariableop_30_model_model_encoder_layer_1_attention_output_layernorm_gamma:	�^
Oassignvariableop_31_model_model_encoder_layer_1_attention_output_layernorm_beta:	�]
Iassignvariableop_32_model_model_encoder_layer_1_intermediate_dense_kernel:
��V
Gassignvariableop_33_model_model_encoder_layer_1_intermediate_dense_bias:	�W
Cassignvariableop_34_model_model_encoder_layer_1_output_dense_kernel:
��P
Aassignvariableop_35_model_model_encoder_layer_1_output_dense_bias:	�U
Fassignvariableop_36_model_model_encoder_layer_1_output_layernorm_gamma:	�T
Eassignvariableop_37_model_model_encoder_layer_1_output_layernorm_beta:	�V
?assignvariableop_38_model_model_encoder_layer_1_cpe_conv_kernel:�L
=assignvariableop_39_model_model_encoder_layer_1_cpe_conv_bias:	�_
Kassignvariableop_40_model_model_encoder_layer_2_attention_self_query_kernel:
��X
Iassignvariableop_41_model_model_encoder_layer_2_attention_self_query_bias:	�]
Iassignvariableop_42_model_model_encoder_layer_2_attention_self_key_kernel:
��V
Gassignvariableop_43_model_model_encoder_layer_2_attention_self_key_bias:	�_
Kassignvariableop_44_model_model_encoder_layer_2_attention_self_value_kernel:
��X
Iassignvariableop_45_model_model_encoder_layer_2_attention_self_value_bias:	�a
Massignvariableop_46_model_model_encoder_layer_2_attention_output_dense_kernel:
��Z
Kassignvariableop_47_model_model_encoder_layer_2_attention_output_dense_bias:	�_
Passignvariableop_48_model_model_encoder_layer_2_attention_output_layernorm_gamma:	�^
Oassignvariableop_49_model_model_encoder_layer_2_attention_output_layernorm_beta:	�]
Iassignvariableop_50_model_model_encoder_layer_2_intermediate_dense_kernel:
��V
Gassignvariableop_51_model_model_encoder_layer_2_intermediate_dense_bias:	�W
Cassignvariableop_52_model_model_encoder_layer_2_output_dense_kernel:
��P
Aassignvariableop_53_model_model_encoder_layer_2_output_dense_bias:	�U
Fassignvariableop_54_model_model_encoder_layer_2_output_layernorm_gamma:	�T
Eassignvariableop_55_model_model_encoder_layer_2_output_layernorm_beta:	�V
?assignvariableop_56_model_model_encoder_layer_2_cpe_conv_kernel:�L
=assignvariableop_57_model_model_encoder_layer_2_cpe_conv_bias:	�9
%assignvariableop_58_model_fc_1_kernel:
��2
#assignvariableop_59_model_fc_1_bias:	�
identity_61��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*K
dtypesA
?2=[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_model_cls_embIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp#assignvariableop_1_model_emb_kernelIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpHassignvariableop_2_model_model_embeddings_position_embeddings_embeddingsIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpJassignvariableop_3_model_model_embeddings_token_type_embeddings_embeddingsIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp9assignvariableop_4_model_model_embeddings_layernorm_gammaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp8assignvariableop_5_model_model_embeddings_layernorm_betaIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpJassignvariableop_6_model_model_encoder_layer_0_attention_self_query_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpHassignvariableop_7_model_model_encoder_layer_0_attention_self_query_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpHassignvariableop_8_model_model_encoder_layer_0_attention_self_key_kernelIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpFassignvariableop_9_model_model_encoder_layer_0_attention_self_key_biasIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpKassignvariableop_10_model_model_encoder_layer_0_attention_self_value_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpIassignvariableop_11_model_model_encoder_layer_0_attention_self_value_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpMassignvariableop_12_model_model_encoder_layer_0_attention_output_dense_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpKassignvariableop_13_model_model_encoder_layer_0_attention_output_dense_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpPassignvariableop_14_model_model_encoder_layer_0_attention_output_layernorm_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpOassignvariableop_15_model_model_encoder_layer_0_attention_output_layernorm_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpIassignvariableop_16_model_model_encoder_layer_0_intermediate_dense_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpGassignvariableop_17_model_model_encoder_layer_0_intermediate_dense_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpCassignvariableop_18_model_model_encoder_layer_0_output_dense_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpAassignvariableop_19_model_model_encoder_layer_0_output_dense_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpFassignvariableop_20_model_model_encoder_layer_0_output_layernorm_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpEassignvariableop_21_model_model_encoder_layer_0_output_layernorm_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpKassignvariableop_22_model_model_encoder_layer_1_attention_self_query_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpIassignvariableop_23_model_model_encoder_layer_1_attention_self_query_biasIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpIassignvariableop_24_model_model_encoder_layer_1_attention_self_key_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpGassignvariableop_25_model_model_encoder_layer_1_attention_self_key_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpKassignvariableop_26_model_model_encoder_layer_1_attention_self_value_kernelIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpIassignvariableop_27_model_model_encoder_layer_1_attention_self_value_biasIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpMassignvariableop_28_model_model_encoder_layer_1_attention_output_dense_kernelIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpKassignvariableop_29_model_model_encoder_layer_1_attention_output_dense_biasIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpPassignvariableop_30_model_model_encoder_layer_1_attention_output_layernorm_gammaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpOassignvariableop_31_model_model_encoder_layer_1_attention_output_layernorm_betaIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpIassignvariableop_32_model_model_encoder_layer_1_intermediate_dense_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpGassignvariableop_33_model_model_encoder_layer_1_intermediate_dense_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpCassignvariableop_34_model_model_encoder_layer_1_output_dense_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpAassignvariableop_35_model_model_encoder_layer_1_output_dense_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpFassignvariableop_36_model_model_encoder_layer_1_output_layernorm_gammaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOpEassignvariableop_37_model_model_encoder_layer_1_output_layernorm_betaIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp?assignvariableop_38_model_model_encoder_layer_1_cpe_conv_kernelIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp=assignvariableop_39_model_model_encoder_layer_1_cpe_conv_biasIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpKassignvariableop_40_model_model_encoder_layer_2_attention_self_query_kernelIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpIassignvariableop_41_model_model_encoder_layer_2_attention_self_query_biasIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpIassignvariableop_42_model_model_encoder_layer_2_attention_self_key_kernelIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpGassignvariableop_43_model_model_encoder_layer_2_attention_self_key_biasIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpKassignvariableop_44_model_model_encoder_layer_2_attention_self_value_kernelIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpIassignvariableop_45_model_model_encoder_layer_2_attention_self_value_biasIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpMassignvariableop_46_model_model_encoder_layer_2_attention_output_dense_kernelIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpKassignvariableop_47_model_model_encoder_layer_2_attention_output_dense_biasIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpPassignvariableop_48_model_model_encoder_layer_2_attention_output_layernorm_gammaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpOassignvariableop_49_model_model_encoder_layer_2_attention_output_layernorm_betaIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpIassignvariableop_50_model_model_encoder_layer_2_intermediate_dense_kernelIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpGassignvariableop_51_model_model_encoder_layer_2_intermediate_dense_biasIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpCassignvariableop_52_model_model_encoder_layer_2_output_dense_kernelIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpAassignvariableop_53_model_model_encoder_layer_2_output_dense_biasIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpFassignvariableop_54_model_model_encoder_layer_2_output_layernorm_gammaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOpEassignvariableop_55_model_model_encoder_layer_2_output_layernorm_betaIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp?assignvariableop_56_model_model_encoder_layer_2_cpe_conv_kernelIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp=assignvariableop_57_model_model_encoder_layer_2_cpe_conv_biasIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp%assignvariableop_58_model_fc_1_kernelIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp#assignvariableop_59_model_fc_1_biasIdentity_59:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_60Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_61IdentityIdentity_60:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_61Identity_61:output:0*�
_input_shapes|
z: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�!
�
A__inference_bertf1_layer_call_and_return_conditional_losses_70968

inputs
model_70841:
��"
model_70843:�
model_70845
model_70847:	a�
model_70849
model_70851:	�
model_70853:	�
model_70855:	�
model_70857:
��
model_70859:	�
model_70861:
��
model_70863:	�
model_70865:
��
model_70867:	�
model_70869:
��
model_70871:	�
model_70873:	�
model_70875:	�
model_70877:
��
model_70879:	�
model_70881:
��
model_70883:	�
model_70885:	�
model_70887:	�"
model_70889:�
model_70891:	�
model_70893:
��
model_70895:	�
model_70897:
��
model_70899:	�
model_70901:
��
model_70903:	�
model_70905:
��
model_70907:	�
model_70909:	�
model_70911:	�
model_70913:
��
model_70915:	�
model_70917:
��
model_70919:	�
model_70921:	�
model_70923:	�"
model_70925:�
model_70927:	�
model_70929:
��
model_70931:	�
model_70933:
��
model_70935:	�
model_70937:
��
model_70939:	�
model_70941:
��
model_70943:	�
model_70945:	�
model_70947:	�
model_70949:
��
model_70951:	�
model_70953:
��
model_70955:	�
model_70957:	�
model_70959:	�
model_70961:
��
model_70963:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_70841model_70843model_70845model_70847model_70849model_70851model_70853model_70855model_70857model_70859model_70861model_70863model_70865model_70867model_70869model_70871model_70873model_70875model_70877model_70879model_70881model_70883model_70885model_70887model_70889model_70891model_70893model_70895model_70897model_70899model_70901model_70903model_70905model_70907model_70909model_70911model_70913model_70915model_70917model_70919model_70921model_70923model_70925model_70927model_70929model_70931model_70933model_70935model_70937model_70939model_70941model_70943model_70945model_70947model_70949model_70951model_70953model_70955model_70957model_70959model_70961model_70963*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_70311�
outputs/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_outputs_layer_call_and_return_conditional_losses_70441g
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�f
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�!
�
A__inference_bertf1_layer_call_and_return_conditional_losses_70444

inputs
model_70312:
��"
model_70314:�
model_70316
model_70318:	a�
model_70320
model_70322:	�
model_70324:	�
model_70326:	�
model_70328:
��
model_70330:	�
model_70332:
��
model_70334:	�
model_70336:
��
model_70338:	�
model_70340:
��
model_70342:	�
model_70344:	�
model_70346:	�
model_70348:
��
model_70350:	�
model_70352:
��
model_70354:	�
model_70356:	�
model_70358:	�"
model_70360:�
model_70362:	�
model_70364:
��
model_70366:	�
model_70368:
��
model_70370:	�
model_70372:
��
model_70374:	�
model_70376:
��
model_70378:	�
model_70380:	�
model_70382:	�
model_70384:
��
model_70386:	�
model_70388:
��
model_70390:	�
model_70392:	�
model_70394:	�"
model_70396:�
model_70398:	�
model_70400:
��
model_70402:	�
model_70404:
��
model_70406:	�
model_70408:
��
model_70410:	�
model_70412:
��
model_70414:	�
model_70416:	�
model_70418:	�
model_70420:
��
model_70422:	�
model_70424:
��
model_70426:	�
model_70428:	�
model_70430:	�
model_70432:
��
model_70434:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_70312model_70314model_70316model_70318model_70320model_70322model_70324model_70326model_70328model_70330model_70332model_70334model_70336model_70338model_70340model_70342model_70344model_70346model_70348model_70350model_70352model_70354model_70356model_70358model_70360model_70362model_70364model_70366model_70368model_70370model_70372model_70374model_70376model_70378model_70380model_70382model_70384model_70386model_70388model_70390model_70392model_70394model_70396model_70398model_70400model_70402model_70404model_70406model_70408model_70410model_70412model_70414model_70416model_70418model_70420model_70422model_70424model_70426model_70428model_70430model_70432model_70434*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_70311�
outputs/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_outputs_layer_call_and_return_conditional_losses_70441g
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�f
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_72381
result_grads_0
result_grads_1/
+mul_model_encoder_layer_0_intermediate_beta4
0mul_model_encoder_layer_0_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_0_intermediate_beta0mul_model_encoder_layer_0_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_0_intermediate_beta0mul_model_encoder_layer_0_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�

V
.__inference__jit_compiled_convolution_op_72173

inputs

kernel
identity`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : }
Conv1D/ExpandDims_1
ExpandDimskernel Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������d
IdentityIdentityConv1D/Squeeze:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:�*
	_noinline(:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:KG
#
_output_shapes
:�
 
_user_specified_namekernel
��
�S
 __inference__wrapped_model_69895

inputsC
/bertf1_model_emb_matmul_readvariableop_resource:
��B
+bertf1_model_concat_readvariableop_resource:�'
#bertf1_model_model_embeddings_69479[
Hbertf1_model_model_embeddings_position_embeddings_embedding_lookup_69487:	a�'
#bertf1_model_model_embeddings_69498]
Jbertf1_model_model_embeddings_token_type_embeddings_embedding_lookup_69507:	�\
Mbertf1_model_model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�X
Ibertf1_model_model_embeddings_layernorm_batchnorm_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_0_attention_self_key_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_0_attention_self_key_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_0_attention_self_value_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_0_attention_self_value_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_0_attention_self_query_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_0_attention_self_query_add_readvariableop_resource:	�l
Xbertf1_model_model_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource:
��d
Ubertf1_model_model_encoder_layer_0_attention_output_dense_add_readvariableop_resource:	�r
cbertf1_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�n
_bertf1_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_0_intermediate_dense_add_readvariableop_resource:	�b
Nbertf1_model_model_encoder_layer_0_output_dense_matmul_readvariableop_resource:
��Z
Kbertf1_model_model_encoder_layer_0_output_dense_add_readvariableop_resource:	�h
Ybertf1_model_model_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource:	�d
Ubertf1_model_model_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource:	�Z
Cbertf1_model_model_encoder_layer_1_cpe_conv_readvariableop_resource:�Z
Kbertf1_model_model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_1_attention_self_key_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_1_attention_self_key_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_1_attention_self_value_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_1_attention_self_value_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_1_attention_self_query_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_1_attention_self_query_add_readvariableop_resource:	�l
Xbertf1_model_model_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource:
��d
Ubertf1_model_model_encoder_layer_1_attention_output_dense_add_readvariableop_resource:	�r
cbertf1_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�n
_bertf1_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_1_intermediate_dense_add_readvariableop_resource:	�b
Nbertf1_model_model_encoder_layer_1_output_dense_matmul_readvariableop_resource:
��Z
Kbertf1_model_model_encoder_layer_1_output_dense_add_readvariableop_resource:	�h
Ybertf1_model_model_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource:	�d
Ubertf1_model_model_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource:	�Z
Cbertf1_model_model_encoder_layer_2_cpe_conv_readvariableop_resource:�Z
Kbertf1_model_model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_2_attention_self_key_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_2_attention_self_key_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_2_attention_self_value_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_2_attention_self_value_add_readvariableop_resource:	�j
Vbertf1_model_model_encoder_layer_2_attention_self_query_matmul_readvariableop_resource:
��b
Sbertf1_model_model_encoder_layer_2_attention_self_query_add_readvariableop_resource:	�l
Xbertf1_model_model_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource:
��d
Ubertf1_model_model_encoder_layer_2_attention_output_dense_add_readvariableop_resource:	�r
cbertf1_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�n
_bertf1_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource:	�h
Tbertf1_model_model_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource:
��`
Qbertf1_model_model_encoder_layer_2_intermediate_dense_add_readvariableop_resource:	�b
Nbertf1_model_model_encoder_layer_2_output_dense_matmul_readvariableop_resource:
��Z
Kbertf1_model_model_encoder_layer_2_output_dense_add_readvariableop_resource:	�h
Ybertf1_model_model_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource:	�d
Ubertf1_model_model_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource:	�D
0bertf1_model_fc_1_matmul_readvariableop_resource:
��<
-bertf1_model_fc_1_add_readvariableop_resource:	�
identity��"bertf1/model/concat/ReadVariableOp�&bertf1/model/emb/MatMul/ReadVariableOp�'bertf1/model/fc.1/MatMul/ReadVariableOp�$bertf1/model/fc.1/add/ReadVariableOp�@bertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp�Dbertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�Bbertf1/model/model/embeddings/position_embeddings/embedding_lookup�Dbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup�Vbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�Zbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Obertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�Lbertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�Kbertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOp�Kbertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�Lbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Pbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�Ebertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�Bbertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOp�Vbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�Zbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Obertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�Lbertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�Kbertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOp�Bbertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�:bertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOp�Kbertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�Lbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Pbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�Ebertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�Bbertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOp�Vbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�Zbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Obertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�Lbertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�Kbertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOp�Mbertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp�Jbertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOp�Bbertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�:bertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOp�Kbertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�Hbertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�Lbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Pbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�Ebertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�Bbertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOp�
&bertf1/model/emb/MatMul/ReadVariableOpReadVariableOp/bertf1_model_emb_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
bertf1/model/emb/MatMulBatchMatMulV2inputs.bertf1/model/emb/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
"bertf1/model/concat/ReadVariableOpReadVariableOp+bertf1_model_concat_readvariableop_resource*#
_output_shapes
:�*
dtype0Z
bertf1/model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
bertf1/model/concatConcatV2*bertf1/model/concat/ReadVariableOp:value:0 bertf1/model/emb/MatMul:output:0!bertf1/model/concat/axis:output:0*
N*
T0*,
_output_shapes
:����������o
#bertf1/model/model/embeddings/ShapeShapebertf1/model/concat:output:0*
T0*
_output_shapes
:{
1bertf1/model/model/embeddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:}
3bertf1/model/model/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3bertf1/model/model/embeddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+bertf1/model/model/embeddings/strided_sliceStridedSlice,bertf1/model/model/embeddings/Shape:output:0:bertf1/model/model/embeddings/strided_slice/stack:output:0<bertf1/model/model/embeddings/strided_slice/stack_1:output:0<bertf1/model/model/embeddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#bertf1/model/model/embeddings/ConstConst*
_output_shapes
: *
dtype0*
value	B : g
%bertf1/model/model/embeddings/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
3bertf1/model/model/embeddings/strided_slice_1/stackPack,bertf1/model/model/embeddings/Const:output:0*
N*
T0*
_output_shapes
:�
5bertf1/model/model/embeddings/strided_slice_1/stack_1Pack4bertf1/model/model/embeddings/strided_slice:output:0*
N*
T0*
_output_shapes
:�
5bertf1/model/model/embeddings/strided_slice_1/stack_2Pack.bertf1/model/model/embeddings/Const_1:output:0*
N*
T0*
_output_shapes
:�
-bertf1/model/model/embeddings/strided_slice_1StridedSlice#bertf1_model_model_embeddings_69479<bertf1/model/model/embeddings/strided_slice_1/stack:output:0>bertf1/model/model/embeddings/strided_slice_1/stack_1:output:0>bertf1/model/model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
Bbertf1/model/model/embeddings/position_embeddings/embedding_lookupResourceGatherHbertf1_model_model_embeddings_position_embeddings_embedding_lookup_694876bertf1/model/model/embeddings/strided_slice_1:output:0*
Tindices0*[
_classQ
OMloc:@bertf1/model/model/embeddings/position_embeddings/embedding_lookup/69487*(
_output_shapes
:����������*
dtype0�
Kbertf1/model/model/embeddings/position_embeddings/embedding_lookup/IdentityIdentityKbertf1/model/model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@bertf1/model/model/embeddings/position_embeddings/embedding_lookup/69487*(
_output_shapes
:�����������
Mbertf1/model/model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityTbertf1/model/model/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
!bertf1/model/model/embeddings/addAddV2bertf1/model/concat:output:0Vbertf1/model/model/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:����������q
%bertf1/model/model/embeddings/Shape_1Shapebertf1/model/concat:output:0*
T0*
_output_shapes
:}
3bertf1/model/model/embeddings/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
5bertf1/model/model/embeddings/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5bertf1/model/model/embeddings/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
-bertf1/model/model/embeddings/strided_slice_2StridedSlice.bertf1/model/model/embeddings/Shape_1:output:0<bertf1/model/model/embeddings/strided_slice_2/stack:output:0>bertf1/model/model/embeddings/strided_slice_2/stack_1:output:0>bertf1/model/model/embeddings/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%bertf1/model/model/embeddings/Const_2Const*
_output_shapes
: *
dtype0*
value	B : g
%bertf1/model/model/embeddings/Const_3Const*
_output_shapes
: *
dtype0*
value	B :�
3bertf1/model/model/embeddings/strided_slice_3/stackPack.bertf1/model/model/embeddings/Const_2:output:0*
N*
T0*
_output_shapes
:�
5bertf1/model/model/embeddings/strided_slice_3/stack_1Pack6bertf1/model/model/embeddings/strided_slice_2:output:0*
N*
T0*
_output_shapes
:�
5bertf1/model/model/embeddings/strided_slice_3/stack_2Pack.bertf1/model/model/embeddings/Const_3:output:0*
N*
T0*
_output_shapes
:�
-bertf1/model/model/embeddings/strided_slice_3StridedSlice#bertf1_model_model_embeddings_69498<bertf1/model/model/embeddings/strided_slice_3/stack:output:0>bertf1/model/model/embeddings/strided_slice_3/stack_1:output:0>bertf1/model/model/embeddings/strided_slice_3/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
8bertf1/model/model/embeddings/token_type_embeddings/CastCast6bertf1/model/model/embeddings/strided_slice_3:output:0*

DstT0*

SrcT0*#
_output_shapes
:����������
Dbertf1/model/model/embeddings/token_type_embeddings/embedding_lookupResourceGatherJbertf1_model_model_embeddings_token_type_embeddings_embedding_lookup_69507<bertf1/model/model/embeddings/token_type_embeddings/Cast:y:0*
Tindices0*]
_classS
QOloc:@bertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/69507*(
_output_shapes
:����������*
dtype0�
Mbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/IdentityIdentityMbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup:output:0*
T0*]
_classS
QOloc:@bertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/69507*(
_output_shapes
:�����������
Obertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/Identity_1IdentityVbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
#bertf1/model/model/embeddings/add_1AddV2%bertf1/model/model/embeddings/add:z:0Xbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Fbertf1/model/model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
4bertf1/model/model/embeddings/LayerNorm/moments/meanMean'bertf1/model/model/embeddings/add_1:z:0Obertf1/model/model/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
<bertf1/model/model/embeddings/LayerNorm/moments/StopGradientStopGradient=bertf1/model/model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Abertf1/model/model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifference'bertf1/model/model/embeddings/add_1:z:0Ebertf1/model/model/embeddings/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
8bertf1/model/model/embeddings/LayerNorm/moments/varianceMeanEbertf1/model/model/embeddings/LayerNorm/moments/SquaredDifference:z:0Sbertf1/model/model/embeddings/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(|
7bertf1/model/model/embeddings/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
5bertf1/model/model/embeddings/LayerNorm/batchnorm/addAddV2Abertf1/model/model/embeddings/LayerNorm/moments/variance:output:0@bertf1/model/model/embeddings/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
7bertf1/model/model/embeddings/LayerNorm/batchnorm/RsqrtRsqrt9bertf1/model/model/embeddings/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Dbertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpMbertf1_model_model_embeddings_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5bertf1/model/model/embeddings/LayerNorm/batchnorm/mulMul;bertf1/model/model/embeddings/LayerNorm/batchnorm/Rsqrt:y:0Lbertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/embeddings/LayerNorm/batchnorm/mul_1Mul'bertf1/model/model/embeddings/add_1:z:09bertf1/model/model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/embeddings/LayerNorm/batchnorm/mul_2Mul=bertf1/model/model/embeddings/LayerNorm/moments/mean:output:09bertf1/model/model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
@bertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOpReadVariableOpIbertf1_model_model_embeddings_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
5bertf1/model/model/embeddings/LayerNorm/batchnorm/subSubHbertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp:value:0;bertf1/model/model/embeddings/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/embeddings/LayerNorm/batchnorm/add_1AddV2;bertf1/model/model/embeddings/LayerNorm/batchnorm/mul_1:z:09bertf1/model/model/embeddings/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_0_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.0/attention/self/key/MatMulBatchMatMulV2;bertf1/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0Sbertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_0_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.0/attention/self/key/addAddV2Ebertf1/model/model/encoder/layer.0/attention/self/key/MatMul:output:0Pbertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?bertf1/model/model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
9bertf1/model/model/encoder/layer.0/attention/self/ReshapeReshape=bertf1/model/model/encoder/layer.0/attention/self/key/add:z:0Hbertf1/model/model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
@bertf1/model/model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
;bertf1/model/model/encoder/layer.0/attention/self/transpose	TransposeBbertf1/model/model/encoder/layer.0/attention/self/Reshape:output:0Ibertf1/model/model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
Mbertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_0_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.0/attention/self/value/MatMulBatchMatMulV2;bertf1/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0Ubertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_0_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.0/attention/self/value/addAddV2Gbertf1/model/model/encoder/layer.0/attention/self/value/MatMul:output:0Rbertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.0/attention/self/Reshape_1Reshape?bertf1/model/model/encoder/layer.0/attention/self/value/add:z:0Jbertf1/model/model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.0/attention/self/transpose_1	TransposeDbertf1/model/model/encoder/layer.0/attention/self/Reshape_1:output:0Kbertf1/model/model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Mbertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_0_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.0/attention/self/query/MatMulBatchMatMulV2;bertf1/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0Ubertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_0_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.0/attention/self/query/addAddV2Gbertf1/model/model/encoder/layer.0/attention/self/query/MatMul:output:0Rbertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.0/attention/self/Reshape_2Reshape?bertf1/model/model/encoder/layer.0/attention/self/query/add:z:0Jbertf1/model/model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.0/attention/self/transpose_2	TransposeDbertf1/model/model/encoder/layer.0/attention/self/Reshape_2:output:0Kbertf1/model/model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
8bertf1/model/model/encoder/layer.0/attention/self/MatMulBatchMatMulV2Abertf1/model/model/encoder/layer.0/attention/self/transpose_2:y:0?bertf1/model/model/encoder/layer.0/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"�������������������
;bertf1/model/model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
9bertf1/model/model/encoder/layer.0/attention/self/truedivRealDivAbertf1/model/model/encoder/layer.0/attention/self/MatMul:output:0Dbertf1/model/model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
Cbertf1/model/model/encoder/layer.0/attention/self/softmax_6/SoftmaxSoftmax=bertf1/model/model/encoder/layer.0/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
:bertf1/model/model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV2Mbertf1/model/model/encoder/layer.0/attention/self/softmax_6/Softmax:softmax:0Abertf1/model/model/encoder/layer.0/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.0/attention/self/transpose_3	TransposeCbertf1/model/model/encoder/layer.0/attention/self/MatMul_1:output:0Kbertf1/model/model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
Abertf1/model/model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
;bertf1/model/model/encoder/layer.0/attention/self/Reshape_3ReshapeAbertf1/model/model/encoder/layer.0/attention/self/transpose_3:y:0Jbertf1/model/model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Obertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOpXbertf1_model_model_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
@bertf1/model/model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV2Dbertf1/model/model/encoder/layer.0/attention/self/Reshape_3:output:0Wbertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_0_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=bertf1/model/model/encoder/layer.0/attention/output/dense/addAddV2Ibertf1/model/model/encoder/layer.0/attention/output/dense/MatMul:output:0Tbertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/encoder/layer.0/attention/output/addAddV2Abertf1/model/model/encoder/layer.0/attention/output/dense/add:z:0;bertf1/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
\bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Jbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/meanMean;bertf1/model/model/encoder/layer.0/attention/output/add:z:0ebertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Rbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/StopGradientStopGradientSbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Wbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference;bertf1/model/model/encoder/layer.0/attention/output/add:z:0[bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
`bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Nbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/varianceMean[bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifference:z:0ibertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Mbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Kbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/addAddV2Wbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance:output:0Vbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/RsqrtRsqrtObertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Zbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpcbertf1_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mulMulQbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/Rsqrt:y:0bbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1Mul;bertf1/model/model/encoder/layer.0/attention/output/add:z:0Obertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2MulSbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0Obertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp_bertf1_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/subSub^bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Qbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1AddV2Qbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1:z:0Obertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.0/intermediate/dense/MatMulBatchMatMulV2Qbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0Sbertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_0_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.0/intermediate/dense/addAddV2Ebertf1/model/model/encoder/layer.0/intermediate/dense/MatMul:output:0Pbertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������y
4bertf1/model/model/encoder/layer.0/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3bertf1/model/model/encoder/layer.0/intermediate/mulMul=bertf1/model/model/encoder/layer.0/intermediate/beta:output:0=bertf1/model/model/encoder/layer.0/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/encoder/layer.0/intermediate/SigmoidSigmoid7bertf1/model/model/encoder/layer.0/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
5bertf1/model/model/encoder/layer.0/intermediate/mul_1Mul=bertf1/model/model/encoder/layer.0/intermediate/dense/add:z:0;bertf1/model/model/encoder/layer.0/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
8bertf1/model/model/encoder/layer.0/intermediate/IdentityIdentity9bertf1/model/model/encoder/layer.0/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
9bertf1/model/model/encoder/layer.0/intermediate/IdentityN	IdentityN9bertf1/model/model/encoder/layer.0/intermediate/mul_1:z:0=bertf1/model/model/encoder/layer.0/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-69602*D
_output_shapes2
0:����������:�����������
Ebertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpReadVariableOpNbertf1_model_model_encoder_layer_0_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6bertf1/model/model/encoder/layer.0/output/dense/MatMulBatchMatMulV2Bbertf1/model/model/encoder/layer.0/intermediate/IdentityN:output:0Mbertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bbertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOpReadVariableOpKbertf1_model_model_encoder_layer_0_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3bertf1/model/model/encoder/layer.0/output/dense/addAddV2?bertf1/model/model/encoder/layer.0/output/dense/MatMul:output:0Jbertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
-bertf1/model/model/encoder/layer.0/output/addAddV27bertf1/model/model/encoder/layer.0/output/dense/add:z:0Qbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Rbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
@bertf1/model/model/encoder/layer.0/output/LayerNorm/moments/meanMean1bertf1/model/model/encoder/layer.0/output/add:z:0[bertf1/model/model/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Hbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/StopGradientStopGradientIbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/SquaredDifferenceSquaredDifference1bertf1/model/model/encoder/layer.0/output/add:z:0Qbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Dbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/varianceMeanQbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/SquaredDifference:z:0_bertf1/model/model/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Cbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Abertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/addAddV2Mbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/variance:output:0Lbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Cbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/RsqrtRsqrtEbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Pbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpYbertf1_model_model_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mulMulGbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/Rsqrt:y:0Xbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1Mul1bertf1/model/model/encoder/layer.0/output/add:z:0Ebertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2MulIbertf1/model/model/encoder/layer.0/output/LayerNorm/moments/mean:output:0Ebertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/subSubTbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp:value:0Gbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1AddV2Gbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1:z:0Ebertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
:bertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOpReadVariableOpCbertf1_model_model_encoder_layer_1_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
;bertf1/model/model/encoder/layer.1/cpe_conv/PartitionedCallPartitionedCallGbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0Bbertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69646�
Bbertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpReadVariableOpKbertf1_model_model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3bertf1/model/model/encoder/layer.1/cpe_conv/BiasAddBiasAddDbertf1/model/model/encoder/layer.1/cpe_conv/PartitionedCall:output:0Jbertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
&bertf1/model/model/encoder/layer.1/addAddV2Gbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0<bertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_1_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.1/attention/self/key/MatMulBatchMatMulV2*bertf1/model/model/encoder/layer.1/add:z:0Sbertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_1_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.1/attention/self/key/addAddV2Ebertf1/model/model/encoder/layer.1/attention/self/key/MatMul:output:0Pbertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?bertf1/model/model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
9bertf1/model/model/encoder/layer.1/attention/self/ReshapeReshape=bertf1/model/model/encoder/layer.1/attention/self/key/add:z:0Hbertf1/model/model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
@bertf1/model/model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
;bertf1/model/model/encoder/layer.1/attention/self/transpose	TransposeBbertf1/model/model/encoder/layer.1/attention/self/Reshape:output:0Ibertf1/model/model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
Mbertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_1_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.1/attention/self/value/MatMulBatchMatMulV2*bertf1/model/model/encoder/layer.1/add:z:0Ubertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_1_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.1/attention/self/value/addAddV2Gbertf1/model/model/encoder/layer.1/attention/self/value/MatMul:output:0Rbertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.1/attention/self/Reshape_1Reshape?bertf1/model/model/encoder/layer.1/attention/self/value/add:z:0Jbertf1/model/model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.1/attention/self/transpose_1	TransposeDbertf1/model/model/encoder/layer.1/attention/self/Reshape_1:output:0Kbertf1/model/model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Mbertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_1_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.1/attention/self/query/MatMulBatchMatMulV2*bertf1/model/model/encoder/layer.1/add:z:0Ubertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_1_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.1/attention/self/query/addAddV2Gbertf1/model/model/encoder/layer.1/attention/self/query/MatMul:output:0Rbertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.1/attention/self/Reshape_2Reshape?bertf1/model/model/encoder/layer.1/attention/self/query/add:z:0Jbertf1/model/model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.1/attention/self/transpose_2	TransposeDbertf1/model/model/encoder/layer.1/attention/self/Reshape_2:output:0Kbertf1/model/model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
8bertf1/model/model/encoder/layer.1/attention/self/MatMulBatchMatMulV2Abertf1/model/model/encoder/layer.1/attention/self/transpose_2:y:0?bertf1/model/model/encoder/layer.1/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"�������������������
;bertf1/model/model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
9bertf1/model/model/encoder/layer.1/attention/self/truedivRealDivAbertf1/model/model/encoder/layer.1/attention/self/MatMul:output:0Dbertf1/model/model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
Cbertf1/model/model/encoder/layer.1/attention/self/softmax_7/SoftmaxSoftmax=bertf1/model/model/encoder/layer.1/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
:bertf1/model/model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV2Mbertf1/model/model/encoder/layer.1/attention/self/softmax_7/Softmax:softmax:0Abertf1/model/model/encoder/layer.1/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.1/attention/self/transpose_3	TransposeCbertf1/model/model/encoder/layer.1/attention/self/MatMul_1:output:0Kbertf1/model/model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
Abertf1/model/model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
;bertf1/model/model/encoder/layer.1/attention/self/Reshape_3ReshapeAbertf1/model/model/encoder/layer.1/attention/self/transpose_3:y:0Jbertf1/model/model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Obertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOpXbertf1_model_model_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
@bertf1/model/model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV2Dbertf1/model/model/encoder/layer.1/attention/self/Reshape_3:output:0Wbertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_1_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=bertf1/model/model/encoder/layer.1/attention/output/dense/addAddV2Ibertf1/model/model/encoder/layer.1/attention/output/dense/MatMul:output:0Tbertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/encoder/layer.1/attention/output/addAddV2Abertf1/model/model/encoder/layer.1/attention/output/dense/add:z:0*bertf1/model/model/encoder/layer.1/add:z:0*
T0*,
_output_shapes
:�����������
\bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Jbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/meanMean;bertf1/model/model/encoder/layer.1/attention/output/add:z:0ebertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Rbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/StopGradientStopGradientSbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Wbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference;bertf1/model/model/encoder/layer.1/attention/output/add:z:0[bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
`bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Nbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/varianceMean[bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifference:z:0ibertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Mbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Kbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/addAddV2Wbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance:output:0Vbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/RsqrtRsqrtObertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Zbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpcbertf1_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mulMulQbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/Rsqrt:y:0bbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1Mul;bertf1/model/model/encoder/layer.1/attention/output/add:z:0Obertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2MulSbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0Obertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp_bertf1_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/subSub^bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Qbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1AddV2Qbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1:z:0Obertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.1/intermediate/dense/MatMulBatchMatMulV2Qbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0Sbertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_1_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.1/intermediate/dense/addAddV2Ebertf1/model/model/encoder/layer.1/intermediate/dense/MatMul:output:0Pbertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������y
4bertf1/model/model/encoder/layer.1/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3bertf1/model/model/encoder/layer.1/intermediate/mulMul=bertf1/model/model/encoder/layer.1/intermediate/beta:output:0=bertf1/model/model/encoder/layer.1/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/encoder/layer.1/intermediate/SigmoidSigmoid7bertf1/model/model/encoder/layer.1/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
5bertf1/model/model/encoder/layer.1/intermediate/mul_1Mul=bertf1/model/model/encoder/layer.1/intermediate/dense/add:z:0;bertf1/model/model/encoder/layer.1/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
8bertf1/model/model/encoder/layer.1/intermediate/IdentityIdentity9bertf1/model/model/encoder/layer.1/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
9bertf1/model/model/encoder/layer.1/intermediate/IdentityN	IdentityN9bertf1/model/model/encoder/layer.1/intermediate/mul_1:z:0=bertf1/model/model/encoder/layer.1/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-69723*D
_output_shapes2
0:����������:�����������
Ebertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpReadVariableOpNbertf1_model_model_encoder_layer_1_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6bertf1/model/model/encoder/layer.1/output/dense/MatMulBatchMatMulV2Bbertf1/model/model/encoder/layer.1/intermediate/IdentityN:output:0Mbertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bbertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOpReadVariableOpKbertf1_model_model_encoder_layer_1_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3bertf1/model/model/encoder/layer.1/output/dense/addAddV2?bertf1/model/model/encoder/layer.1/output/dense/MatMul:output:0Jbertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
-bertf1/model/model/encoder/layer.1/output/addAddV27bertf1/model/model/encoder/layer.1/output/dense/add:z:0Qbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Rbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
@bertf1/model/model/encoder/layer.1/output/LayerNorm/moments/meanMean1bertf1/model/model/encoder/layer.1/output/add:z:0[bertf1/model/model/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Hbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/StopGradientStopGradientIbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/SquaredDifferenceSquaredDifference1bertf1/model/model/encoder/layer.1/output/add:z:0Qbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Dbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/varianceMeanQbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/SquaredDifference:z:0_bertf1/model/model/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Cbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Abertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/addAddV2Mbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/variance:output:0Lbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Cbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/RsqrtRsqrtEbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Pbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpYbertf1_model_model_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mulMulGbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/Rsqrt:y:0Xbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1Mul1bertf1/model/model/encoder/layer.1/output/add:z:0Ebertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2MulIbertf1/model/model/encoder/layer.1/output/LayerNorm/moments/mean:output:0Ebertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/subSubTbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp:value:0Gbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1AddV2Gbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1:z:0Ebertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
:bertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOpReadVariableOpCbertf1_model_model_encoder_layer_2_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
;bertf1/model/model/encoder/layer.2/cpe_conv/PartitionedCallPartitionedCallGbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0Bbertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOp:value:0*
Tin
2*
Tout
2*
_XlaMustCompile(*
_collective_manager_ids
 *,
_output_shapes
:����������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *7
f2R0
.__inference__jit_compiled_convolution_op_69767�
Bbertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpReadVariableOpKbertf1_model_model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3bertf1/model/model/encoder/layer.2/cpe_conv/BiasAddBiasAddDbertf1/model/model/encoder/layer.2/cpe_conv/PartitionedCall:output:0Jbertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
&bertf1/model/model/encoder/layer.2/addAddV2Gbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0<bertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_2_attention_self_key_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.2/attention/self/key/MatMulBatchMatMulV2*bertf1/model/model/encoder/layer.2/add:z:0Sbertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_2_attention_self_key_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.2/attention/self/key/addAddV2Ebertf1/model/model/encoder/layer.2/attention/self/key/MatMul:output:0Pbertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
?bertf1/model/model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
9bertf1/model/model/encoder/layer.2/attention/self/ReshapeReshape=bertf1/model/model/encoder/layer.2/attention/self/key/add:z:0Hbertf1/model/model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
@bertf1/model/model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
;bertf1/model/model/encoder/layer.2/attention/self/transpose	TransposeBbertf1/model/model/encoder/layer.2/attention/self/Reshape:output:0Ibertf1/model/model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:@����������
Mbertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_2_attention_self_value_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.2/attention/self/value/MatMulBatchMatMulV2*bertf1/model/model/encoder/layer.2/add:z:0Ubertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_2_attention_self_value_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.2/attention/self/value/addAddV2Gbertf1/model/model/encoder/layer.2/attention/self/value/MatMul:output:0Rbertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.2/attention/self/Reshape_1Reshape?bertf1/model/model/encoder/layer.2/attention/self/value/add:z:0Jbertf1/model/model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.2/attention/self/transpose_1	TransposeDbertf1/model/model/encoder/layer.2/attention/self/Reshape_1:output:0Kbertf1/model/model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Ebertf1/model/model/encoder/layer.2/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Gbertf1/model/model/encoder/layer.2/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Gbertf1/model/model/encoder/layer.2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
?bertf1/model/model/encoder/layer.2/attention/self/strided_sliceStridedSlice*bertf1/model/model/encoder/layer.2/add:z:0Nbertf1/model/model/encoder/layer.2/attention/self/strided_slice/stack:output:0Pbertf1/model/model/encoder/layer.2/attention/self/strided_slice/stack_1:output:0Pbertf1/model/model/encoder/layer.2/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
Mbertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOpReadVariableOpVbertf1_model_model_encoder_layer_2_attention_self_query_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
>bertf1/model/model/encoder/layer.2/attention/self/query/MatMulBatchMatMulV2Hbertf1/model/model/encoder/layer.2/attention/self/strided_slice:output:0Ubertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jbertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOpReadVariableOpSbertf1_model_model_encoder_layer_2_attention_self_query_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
;bertf1/model/model/encoder/layer.2/attention/self/query/addAddV2Gbertf1/model/model/encoder/layer.2/attention/self/query/MatMul:output:0Rbertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Abertf1/model/model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
;bertf1/model/model/encoder/layer.2/attention/self/Reshape_2Reshape?bertf1/model/model/encoder/layer.2/attention/self/query/add:z:0Jbertf1/model/model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.2/attention/self/transpose_2	TransposeDbertf1/model/model/encoder/layer.2/attention/self/Reshape_2:output:0Kbertf1/model/model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
8bertf1/model/model/encoder/layer.2/attention/self/MatMulBatchMatMulV2Abertf1/model/model/encoder/layer.2/attention/self/transpose_2:y:0?bertf1/model/model/encoder/layer.2/attention/self/transpose:y:0*
T0*8
_output_shapes&
$:"�������������������
;bertf1/model/model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
9bertf1/model/model/encoder/layer.2/attention/self/truedivRealDivAbertf1/model/model/encoder/layer.2/attention/self/MatMul:output:0Dbertf1/model/model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*8
_output_shapes&
$:"�������������������
Cbertf1/model/model/encoder/layer.2/attention/self/softmax_8/SoftmaxSoftmax=bertf1/model/model/encoder/layer.2/attention/self/truediv:z:0*
T0*8
_output_shapes&
$:"�������������������
:bertf1/model/model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV2Mbertf1/model/model/encoder/layer.2/attention/self/softmax_8/Softmax:softmax:0Abertf1/model/model/encoder/layer.2/attention/self/transpose_1:y:0*
T0*/
_output_shapes
:���������@�
Bbertf1/model/model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
=bertf1/model/model/encoder/layer.2/attention/self/transpose_3	TransposeCbertf1/model/model/encoder/layer.2/attention/self/MatMul_1:output:0Kbertf1/model/model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*/
_output_shapes
:���������@�
Abertf1/model/model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
;bertf1/model/model/encoder/layer.2/attention/self/Reshape_3ReshapeAbertf1/model/model/encoder/layer.2/attention/self/transpose_3:y:0Jbertf1/model/model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*,
_output_shapes
:�����������
Obertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOpXbertf1_model_model_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
@bertf1/model/model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV2Dbertf1/model/model/encoder/layer.2/attention/self/Reshape_3:output:0Wbertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_2_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
=bertf1/model/model/encoder/layer.2/attention/output/dense/addAddV2Ibertf1/model/model/encoder/layer.2/attention/output/dense/MatMul:output:0Tbertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Gbertf1/model/model/encoder/layer.2/attention/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Ibertf1/model/model/encoder/layer.2/attention/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Ibertf1/model/model/encoder/layer.2/attention/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Abertf1/model/model/encoder/layer.2/attention/output/strided_sliceStridedSlice*bertf1/model/model/encoder/layer.2/add:z:0Pbertf1/model/model/encoder/layer.2/attention/output/strided_slice/stack:output:0Rbertf1/model/model/encoder/layer.2/attention/output/strided_slice/stack_1:output:0Rbertf1/model/model/encoder/layer.2/attention/output/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
7bertf1/model/model/encoder/layer.2/attention/output/addAddV2Abertf1/model/model/encoder/layer.2/attention/output/dense/add:z:0Jbertf1/model/model/encoder/layer.2/attention/output/strided_slice:output:0*
T0*,
_output_shapes
:�����������
\bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Jbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/meanMean;bertf1/model/model/encoder/layer.2/attention/output/add:z:0ebertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Rbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/StopGradientStopGradientSbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Wbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference;bertf1/model/model/encoder/layer.2/attention/output/add:z:0[bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
`bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Nbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/varianceMean[bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifference:z:0ibertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Mbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Kbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/addAddV2Wbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance:output:0Vbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/RsqrtRsqrtObertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Zbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpcbertf1_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mulMulQbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/Rsqrt:y:0bbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1Mul;bertf1/model/model/encoder/layer.2/attention/output/add:z:0Obertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2MulSbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0Obertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOp_bertf1_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Kbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/subSub^bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Qbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Mbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1AddV2Qbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1:z:0Obertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Kbertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpReadVariableOpTbertf1_model_model_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
<bertf1/model/model/encoder/layer.2/intermediate/dense/MatMulBatchMatMulV2Qbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0Sbertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Hbertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpReadVariableOpQbertf1_model_model_encoder_layer_2_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
9bertf1/model/model/encoder/layer.2/intermediate/dense/addAddV2Ebertf1/model/model/encoder/layer.2/intermediate/dense/MatMul:output:0Pbertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������y
4bertf1/model/model/encoder/layer.2/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
3bertf1/model/model/encoder/layer.2/intermediate/mulMul=bertf1/model/model/encoder/layer.2/intermediate/beta:output:0=bertf1/model/model/encoder/layer.2/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
7bertf1/model/model/encoder/layer.2/intermediate/SigmoidSigmoid7bertf1/model/model/encoder/layer.2/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
5bertf1/model/model/encoder/layer.2/intermediate/mul_1Mul=bertf1/model/model/encoder/layer.2/intermediate/dense/add:z:0;bertf1/model/model/encoder/layer.2/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
8bertf1/model/model/encoder/layer.2/intermediate/IdentityIdentity9bertf1/model/model/encoder/layer.2/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
9bertf1/model/model/encoder/layer.2/intermediate/IdentityN	IdentityN9bertf1/model/model/encoder/layer.2/intermediate/mul_1:z:0=bertf1/model/model/encoder/layer.2/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-69852*D
_output_shapes2
0:����������:�����������
Ebertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpReadVariableOpNbertf1_model_model_encoder_layer_2_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6bertf1/model/model/encoder/layer.2/output/dense/MatMulBatchMatMulV2Bbertf1/model/model/encoder/layer.2/intermediate/IdentityN:output:0Mbertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bbertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOpReadVariableOpKbertf1_model_model_encoder_layer_2_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3bertf1/model/model/encoder/layer.2/output/dense/addAddV2?bertf1/model/model/encoder/layer.2/output/dense/MatMul:output:0Jbertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
-bertf1/model/model/encoder/layer.2/output/addAddV27bertf1/model/model/encoder/layer.2/output/dense/add:z:0Qbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Rbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
@bertf1/model/model/encoder/layer.2/output/LayerNorm/moments/meanMean1bertf1/model/model/encoder/layer.2/output/add:z:0[bertf1/model/model/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Hbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/StopGradientStopGradientIbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Mbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/SquaredDifferenceSquaredDifference1bertf1/model/model/encoder/layer.2/output/add:z:0Qbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Vbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Dbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/varianceMeanQbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/SquaredDifference:z:0_bertf1/model/model/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Cbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *̼�+�
Abertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/addAddV2Mbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/variance:output:0Lbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Cbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/RsqrtRsqrtEbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Pbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpYbertf1_model_model_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mulMulGbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/Rsqrt:y:0Xbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1Mul1bertf1/model/model/encoder/layer.2/output/add:z:0Ebertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2MulIbertf1/model/model/encoder/layer.2/output/LayerNorm/moments/mean:output:0Ebertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Lbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpUbertf1_model_model_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Abertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/subSubTbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp:value:0Gbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Cbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add_1AddV2Gbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1:z:0Ebertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������q
 bertf1/model/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"bertf1/model/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       s
"bertf1/model/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
bertf1/model/strided_sliceStridedSliceGbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add_1:z:0)bertf1/model/strided_slice/stack:output:0+bertf1/model/strided_slice/stack_1:output:0+bertf1/model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_mask*
shrink_axis_mask�
'bertf1/model/fc.1/MatMul/ReadVariableOpReadVariableOp0bertf1_model_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
bertf1/model/fc.1/MatMulMatMul#bertf1/model/strided_slice:output:0/bertf1/model/fc.1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
$bertf1/model/fc.1/add/ReadVariableOpReadVariableOp-bertf1_model_fc_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
bertf1/model/fc.1/addAddV2"bertf1/model/fc.1/MatMul:product:0,bertf1/model/fc.1/add/ReadVariableOp:value:0*
T0*
_output_shapes
:	�`
IdentityIdentitybertf1/model/fc.1/add:z:0^NoOp*
T0*
_output_shapes
:	��#
NoOpNoOp#^bertf1/model/concat/ReadVariableOp'^bertf1/model/emb/MatMul/ReadVariableOp(^bertf1/model/fc.1/MatMul/ReadVariableOp%^bertf1/model/fc.1/add/ReadVariableOpA^bertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOpE^bertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpC^bertf1/model/model/embeddings/position_embeddings/embedding_lookupE^bertf1/model/model/embeddings/token_type_embeddings/embedding_lookupW^bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp[^bertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpP^bertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpM^bertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpL^bertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOpN^bertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOpN^bertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOpL^bertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpM^bertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpQ^bertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpF^bertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpC^bertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOpW^bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp[^bertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpP^bertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpM^bertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpL^bertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOpN^bertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOpN^bertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOpC^bertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp;^bertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOpL^bertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpM^bertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpQ^bertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpF^bertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpC^bertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOpW^bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp[^bertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpP^bertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpM^bertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpL^bertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOpN^bertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOpN^bertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOpK^bertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOpC^bertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp;^bertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOpL^bertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpI^bertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpM^bertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpQ^bertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpF^bertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpC^bertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2H
"bertf1/model/concat/ReadVariableOp"bertf1/model/concat/ReadVariableOp2P
&bertf1/model/emb/MatMul/ReadVariableOp&bertf1/model/emb/MatMul/ReadVariableOp2R
'bertf1/model/fc.1/MatMul/ReadVariableOp'bertf1/model/fc.1/MatMul/ReadVariableOp2L
$bertf1/model/fc.1/add/ReadVariableOp$bertf1/model/fc.1/add/ReadVariableOp2�
@bertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp@bertf1/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp2�
Dbertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpDbertf1/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bbertf1/model/model/embeddings/position_embeddings/embedding_lookupBbertf1/model/model/embeddings/position_embeddings/embedding_lookup2�
Dbertf1/model/model/embeddings/token_type_embeddings/embedding_lookupDbertf1/model/model/embeddings/token_type_embeddings/embedding_lookup2�
Vbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpVbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Zbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpZbertf1/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Obertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpObertf1/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpLbertf1/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.0/attention/self/key/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOpHbertf1/model/model/encoder/layer.0/attention/self/key/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.0/attention/self/query/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOpJbertf1/model/model/encoder/layer.0/attention/self/query/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.0/attention/self/value/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOpJbertf1/model/model/encoder/layer.0/attention/self/value/add/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpHbertf1/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpLbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp2�
Pbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpPbertf1/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Ebertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpEbertf1/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp2�
Bbertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOpBbertf1/model/model/encoder/layer.0/output/dense/add/ReadVariableOp2�
Vbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpVbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Zbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpZbertf1/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Obertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpObertf1/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpLbertf1/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.1/attention/self/key/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOpHbertf1/model/model/encoder/layer.1/attention/self/key/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.1/attention/self/query/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOpJbertf1/model/model/encoder/layer.1/attention/self/query/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.1/attention/self/value/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOpJbertf1/model/model/encoder/layer.1/attention/self/value/add/ReadVariableOp2�
Bbertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpBbertf1/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp2x
:bertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOp:bertf1/model/model/encoder/layer.1/cpe_conv/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpHbertf1/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpLbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp2�
Pbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpPbertf1/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Ebertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpEbertf1/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp2�
Bbertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOpBbertf1/model/model/encoder/layer.1/output/dense/add/ReadVariableOp2�
Vbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpVbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Zbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpZbertf1/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Obertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpObertf1/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpLbertf1/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.2/attention/self/key/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOpHbertf1/model/model/encoder/layer.2/attention/self/key/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.2/attention/self/query/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOpJbertf1/model/model/encoder/layer.2/attention/self/query/add/ReadVariableOp2�
Mbertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOpMbertf1/model/model/encoder/layer.2/attention/self/value/MatMul/ReadVariableOp2�
Jbertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOpJbertf1/model/model/encoder/layer.2/attention/self/value/add/ReadVariableOp2�
Bbertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpBbertf1/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp2x
:bertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOp:bertf1/model/model/encoder/layer.2/cpe_conv/ReadVariableOp2�
Kbertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpKbertf1/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp2�
Hbertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpHbertf1/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp2�
Lbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpLbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp2�
Pbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpPbertf1/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Ebertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpEbertf1/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp2�
Bbertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOpBbertf1/model/model/encoder/layer.2/output/dense/add/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
��
�'
__inference__traced_save_72551
file_prefix,
(savev2_model_cls_emb_read_readvariableop/
+savev2_model_emb_kernel_read_readvariableopT
Psavev2_model_model_embeddings_position_embeddings_embeddings_read_readvariableopV
Rsavev2_model_model_embeddings_token_type_embeddings_embeddings_read_readvariableopE
Asavev2_model_model_embeddings_layernorm_gamma_read_readvariableopD
@savev2_model_model_embeddings_layernorm_beta_read_readvariableopV
Rsavev2_model_model_encoder_layer_0_attention_self_query_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_0_attention_self_query_bias_read_readvariableopT
Psavev2_model_model_encoder_layer_0_attention_self_key_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_0_attention_self_key_bias_read_readvariableopV
Rsavev2_model_model_encoder_layer_0_attention_self_value_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_0_attention_self_value_bias_read_readvariableopX
Tsavev2_model_model_encoder_layer_0_attention_output_dense_kernel_read_readvariableopV
Rsavev2_model_model_encoder_layer_0_attention_output_dense_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_0_attention_output_layernorm_gamma_read_readvariableopZ
Vsavev2_model_model_encoder_layer_0_attention_output_layernorm_beta_read_readvariableopT
Psavev2_model_model_encoder_layer_0_intermediate_dense_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_0_intermediate_dense_bias_read_readvariableopN
Jsavev2_model_model_encoder_layer_0_output_dense_kernel_read_readvariableopL
Hsavev2_model_model_encoder_layer_0_output_dense_bias_read_readvariableopQ
Msavev2_model_model_encoder_layer_0_output_layernorm_gamma_read_readvariableopP
Lsavev2_model_model_encoder_layer_0_output_layernorm_beta_read_readvariableopV
Rsavev2_model_model_encoder_layer_1_attention_self_query_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_1_attention_self_query_bias_read_readvariableopT
Psavev2_model_model_encoder_layer_1_attention_self_key_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_1_attention_self_key_bias_read_readvariableopV
Rsavev2_model_model_encoder_layer_1_attention_self_value_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_1_attention_self_value_bias_read_readvariableopX
Tsavev2_model_model_encoder_layer_1_attention_output_dense_kernel_read_readvariableopV
Rsavev2_model_model_encoder_layer_1_attention_output_dense_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_1_attention_output_layernorm_gamma_read_readvariableopZ
Vsavev2_model_model_encoder_layer_1_attention_output_layernorm_beta_read_readvariableopT
Psavev2_model_model_encoder_layer_1_intermediate_dense_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_1_intermediate_dense_bias_read_readvariableopN
Jsavev2_model_model_encoder_layer_1_output_dense_kernel_read_readvariableopL
Hsavev2_model_model_encoder_layer_1_output_dense_bias_read_readvariableopQ
Msavev2_model_model_encoder_layer_1_output_layernorm_gamma_read_readvariableopP
Lsavev2_model_model_encoder_layer_1_output_layernorm_beta_read_readvariableopJ
Fsavev2_model_model_encoder_layer_1_cpe_conv_kernel_read_readvariableopH
Dsavev2_model_model_encoder_layer_1_cpe_conv_bias_read_readvariableopV
Rsavev2_model_model_encoder_layer_2_attention_self_query_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_2_attention_self_query_bias_read_readvariableopT
Psavev2_model_model_encoder_layer_2_attention_self_key_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_2_attention_self_key_bias_read_readvariableopV
Rsavev2_model_model_encoder_layer_2_attention_self_value_kernel_read_readvariableopT
Psavev2_model_model_encoder_layer_2_attention_self_value_bias_read_readvariableopX
Tsavev2_model_model_encoder_layer_2_attention_output_dense_kernel_read_readvariableopV
Rsavev2_model_model_encoder_layer_2_attention_output_dense_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_2_attention_output_layernorm_gamma_read_readvariableopZ
Vsavev2_model_model_encoder_layer_2_attention_output_layernorm_beta_read_readvariableopT
Psavev2_model_model_encoder_layer_2_intermediate_dense_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_2_intermediate_dense_bias_read_readvariableopN
Jsavev2_model_model_encoder_layer_2_output_dense_kernel_read_readvariableopL
Hsavev2_model_model_encoder_layer_2_output_dense_bias_read_readvariableopQ
Msavev2_model_model_encoder_layer_2_output_layernorm_gamma_read_readvariableopP
Lsavev2_model_model_encoder_layer_2_output_layernorm_beta_read_readvariableopJ
Fsavev2_model_model_encoder_layer_2_cpe_conv_kernel_read_readvariableopH
Dsavev2_model_model_encoder_layer_2_cpe_conv_bias_read_readvariableop0
,savev2_model_fc_1_kernel_read_readvariableop.
*savev2_model_fc_1_bias_read_readvariableop
savev2_const_2

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB'variables/59/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:=*
dtype0*�
value�B�=B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_model_cls_emb_read_readvariableop+savev2_model_emb_kernel_read_readvariableopPsavev2_model_model_embeddings_position_embeddings_embeddings_read_readvariableopRsavev2_model_model_embeddings_token_type_embeddings_embeddings_read_readvariableopAsavev2_model_model_embeddings_layernorm_gamma_read_readvariableop@savev2_model_model_embeddings_layernorm_beta_read_readvariableopRsavev2_model_model_encoder_layer_0_attention_self_query_kernel_read_readvariableopPsavev2_model_model_encoder_layer_0_attention_self_query_bias_read_readvariableopPsavev2_model_model_encoder_layer_0_attention_self_key_kernel_read_readvariableopNsavev2_model_model_encoder_layer_0_attention_self_key_bias_read_readvariableopRsavev2_model_model_encoder_layer_0_attention_self_value_kernel_read_readvariableopPsavev2_model_model_encoder_layer_0_attention_self_value_bias_read_readvariableopTsavev2_model_model_encoder_layer_0_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_0_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_0_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_0_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_0_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_0_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_0_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_0_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_0_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_0_output_layernorm_beta_read_readvariableopRsavev2_model_model_encoder_layer_1_attention_self_query_kernel_read_readvariableopPsavev2_model_model_encoder_layer_1_attention_self_query_bias_read_readvariableopPsavev2_model_model_encoder_layer_1_attention_self_key_kernel_read_readvariableopNsavev2_model_model_encoder_layer_1_attention_self_key_bias_read_readvariableopRsavev2_model_model_encoder_layer_1_attention_self_value_kernel_read_readvariableopPsavev2_model_model_encoder_layer_1_attention_self_value_bias_read_readvariableopTsavev2_model_model_encoder_layer_1_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_1_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_1_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_1_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_1_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_1_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_1_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_1_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_1_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_1_output_layernorm_beta_read_readvariableopFsavev2_model_model_encoder_layer_1_cpe_conv_kernel_read_readvariableopDsavev2_model_model_encoder_layer_1_cpe_conv_bias_read_readvariableopRsavev2_model_model_encoder_layer_2_attention_self_query_kernel_read_readvariableopPsavev2_model_model_encoder_layer_2_attention_self_query_bias_read_readvariableopPsavev2_model_model_encoder_layer_2_attention_self_key_kernel_read_readvariableopNsavev2_model_model_encoder_layer_2_attention_self_key_bias_read_readvariableopRsavev2_model_model_encoder_layer_2_attention_self_value_kernel_read_readvariableopPsavev2_model_model_encoder_layer_2_attention_self_value_bias_read_readvariableopTsavev2_model_model_encoder_layer_2_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_2_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_2_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_2_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_2_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_2_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_2_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_2_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_2_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_2_output_layernorm_beta_read_readvariableopFsavev2_model_model_encoder_layer_2_cpe_conv_kernel_read_readvariableopDsavev2_model_model_encoder_layer_2_cpe_conv_bias_read_readvariableop,savev2_model_fc_1_kernel_read_readvariableop*savev2_model_fc_1_bias_read_readvariableopsavev2_const_2"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *K
dtypesA
?2=�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :�:
��:	a�:	�:�:�:
��:�:
��:�:
��:�:
��:�:�:�:
��:�:
��:�:�:�:
��:�:
��:�:
��:�:
��:�:�:�:
��:�:
��:�:�:�:�:�:
��:�:
��:�:
��:�:
��:�:�:�:
��:�:
��:�:�:�:�:�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:)%
#
_output_shapes
:�:&"
 
_output_shapes
:
��:%!

_output_shapes
:	a�:%!

_output_shapes
:	�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&	"
 
_output_shapes
:
��:!


_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:! 

_output_shapes	
:�:&!"
 
_output_shapes
:
��:!"

_output_shapes	
:�:&#"
 
_output_shapes
:
��:!$

_output_shapes	
:�:!%

_output_shapes	
:�:!&

_output_shapes	
:�:)'%
#
_output_shapes
:�:!(

_output_shapes	
:�:&)"
 
_output_shapes
:
��:!*

_output_shapes	
:�:&+"
 
_output_shapes
:
��:!,

_output_shapes	
:�:&-"
 
_output_shapes
:
��:!.

_output_shapes	
:�:&/"
 
_output_shapes
:
��:!0

_output_shapes	
:�:!1

_output_shapes	
:�:!2

_output_shapes	
:�:&3"
 
_output_shapes
:
��:!4

_output_shapes	
:�:&5"
 
_output_shapes
:
��:!6

_output_shapes	
:�:!7

_output_shapes	
:�:!8

_output_shapes	
:�:)9%
#
_output_shapes
:�:!:

_output_shapes	
:�:&;"
 
_output_shapes
:
��:!<

_output_shapes	
:�:=

_output_shapes
: 
�
Y
B__inference_outputs_layer_call_and_return_conditional_losses_70441
x
identityA
IdentityIdentityx*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:B >

_output_shapes
:	�

_user_specified_namex
�
�
&__inference_bertf1_layer_call_fn_71224

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�!

unknown_23:�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:
��

unknown_38:	�

unknown_39:	�

unknown_40:	�!

unknown_41:�

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:
��

unknown_50:	�

unknown_51:	�

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:
��

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:
��

unknown_60:	�
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_bertf1_layer_call_and_return_conditional_losses_70968g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�!
�
A__inference_bertf1_layer_call_and_return_conditional_losses_71354

inputs
model_71227:
��"
model_71229:�
model_71231
model_71233:	a�
model_71235
model_71237:	�
model_71239:	�
model_71241:	�
model_71243:
��
model_71245:	�
model_71247:
��
model_71249:	�
model_71251:
��
model_71253:	�
model_71255:
��
model_71257:	�
model_71259:	�
model_71261:	�
model_71263:
��
model_71265:	�
model_71267:
��
model_71269:	�
model_71271:	�
model_71273:	�"
model_71275:�
model_71277:	�
model_71279:
��
model_71281:	�
model_71283:
��
model_71285:	�
model_71287:
��
model_71289:	�
model_71291:
��
model_71293:	�
model_71295:	�
model_71297:	�
model_71299:
��
model_71301:	�
model_71303:
��
model_71305:	�
model_71307:	�
model_71309:	�"
model_71311:�
model_71313:	�
model_71315:
��
model_71317:	�
model_71319:
��
model_71321:	�
model_71323:
��
model_71325:	�
model_71327:
��
model_71329:	�
model_71331:	�
model_71333:	�
model_71335:
��
model_71337:	�
model_71339:
��
model_71341:	�
model_71343:	�
model_71345:	�
model_71347:
��
model_71349:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_71227model_71229model_71231model_71233model_71235model_71237model_71239model_71241model_71243model_71245model_71247model_71249model_71251model_71253model_71255model_71257model_71259model_71261model_71263model_71265model_71267model_71269model_71271model_71273model_71275model_71277model_71279model_71281model_71283model_71285model_71287model_71289model_71291model_71293model_71295model_71297model_71299model_71301model_71303model_71305model_71307model_71309model_71311model_71313model_71315model_71317model_71319model_71321model_71323model_71325model_71327model_71329model_71331model_71333model_71335model_71337model_71339model_71341model_71343model_71345model_71347model_71349*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_70311�
outputs/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_outputs_layer_call_and_return_conditional_losses_70441g
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�f
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�

V
.__inference__jit_compiled_convolution_op_69646

inputs

kernel
identity`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : }
Conv1D/ExpandDims_1
ExpandDimskernel Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������d
IdentityIdentityConv1D/Squeeze:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:�*
	_noinline(:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:KG
#
_output_shapes
:�
 
_user_specified_namekernel
�
Y
B__inference_outputs_layer_call_and_return_conditional_losses_72162
x
identityA
IdentityIdentityx*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:B >

_output_shapes
:	�

_user_specified_namex
�
�
&__inference_bertf1_layer_call_fn_70571

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�!

unknown_23:�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:
��

unknown_38:	�

unknown_39:	�

unknown_40:	�!

unknown_41:�

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:
��

unknown_50:	�

unknown_51:	�

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:
��

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:
��

unknown_60:	�
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *J
fERC
A__inference_bertf1_layer_call_and_return_conditional_losses_70444g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�
�
#__inference_signature_wrapper_71615

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�!

unknown_23:�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:
��

unknown_38:	�

unknown_39:	�

unknown_40:	�!

unknown_41:�

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:
��

unknown_50:	�

unknown_51:	�

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:
��

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:
��

unknown_60:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_69895g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�
>
'__inference_outputs_layer_call_fn_72158
x
identity�
PartitionedCallPartitionedCallx*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_outputs_layer_call_and_return_conditional_losses_70441X
IdentityIdentityPartitionedCall:output:0*
T0*
_output_shapes
:	�"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
:	�:B >

_output_shapes
:	�

_user_specified_namex
�
�
%__inference_model_layer_call_fn_71744
inputs_embeds
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3
	unknown_4:	�
	unknown_5:	�
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:
��

unknown_14:	�

unknown_15:	�

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:
��

unknown_20:	�

unknown_21:	�

unknown_22:	�!

unknown_23:�

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:
��

unknown_32:	�

unknown_33:	�

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:
��

unknown_38:	�

unknown_39:	�

unknown_40:	�!

unknown_41:�

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:
��

unknown_50:	�

unknown_51:	�

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:
��

unknown_56:	�

unknown_57:	�

unknown_58:	�

unknown_59:
��

unknown_60:	�
identity��StatefulPartitionedCall�	
StatefulPartitionedCallStatefulPartitionedCallinputs_embedsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40
unknown_41
unknown_42
unknown_43
unknown_44
unknown_45
unknown_46
unknown_47
unknown_48
unknown_49
unknown_50
unknown_51
unknown_52
unknown_53
unknown_54
unknown_55
unknown_56
unknown_57
unknown_58
unknown_59
unknown_60*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_70311g
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_nameinputs_embeds: 

_output_shapes
:a: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_72345
result_grads_0
result_grads_1/
+mul_model_encoder_layer_1_intermediate_beta4
0mul_model_encoder_layer_1_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_1_intermediate_beta0mul_model_encoder_layer_1_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_1_intermediate_beta0mul_model_encoder_layer_1_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�
�
"__inference_internal_grad_fn_72435
result_grads_0
result_grads_1<
8mul_bertf1_model_model_encoder_layer_0_intermediate_betaA
=mul_bertf1_model_model_encoder_layer_0_intermediate_dense_add
identity�
mulMul8mul_bertf1_model_model_encoder_layer_0_intermediate_beta=mul_bertf1_model_model_encoder_layer_0_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul8mul_bertf1_model_model_encoder_layer_0_intermediate_beta=mul_bertf1_model_model_encoder_layer_0_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�
�
"__inference_internal_grad_fn_72453
result_grads_0
result_grads_1<
8mul_bertf1_model_model_encoder_layer_1_intermediate_betaA
=mul_bertf1_model_model_encoder_layer_1_intermediate_dense_add
identity�
mulMul8mul_bertf1_model_model_encoder_layer_1_intermediate_beta=mul_bertf1_model_model_encoder_layer_1_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul8mul_bertf1_model_model_encoder_layer_1_intermediate_beta=mul_bertf1_model_model_encoder_layer_1_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�!
�
A__inference_bertf1_layer_call_and_return_conditional_losses_71484

inputs
model_71357:
��"
model_71359:�
model_71361
model_71363:	a�
model_71365
model_71367:	�
model_71369:	�
model_71371:	�
model_71373:
��
model_71375:	�
model_71377:
��
model_71379:	�
model_71381:
��
model_71383:	�
model_71385:
��
model_71387:	�
model_71389:	�
model_71391:	�
model_71393:
��
model_71395:	�
model_71397:
��
model_71399:	�
model_71401:	�
model_71403:	�"
model_71405:�
model_71407:	�
model_71409:
��
model_71411:	�
model_71413:
��
model_71415:	�
model_71417:
��
model_71419:	�
model_71421:
��
model_71423:	�
model_71425:	�
model_71427:	�
model_71429:
��
model_71431:	�
model_71433:
��
model_71435:	�
model_71437:	�
model_71439:	�"
model_71441:�
model_71443:	�
model_71445:
��
model_71447:	�
model_71449:
��
model_71451:	�
model_71453:
��
model_71455:	�
model_71457:
��
model_71459:	�
model_71461:	�
model_71463:	�
model_71465:
��
model_71467:	�
model_71469:
��
model_71471:	�
model_71473:	�
model_71475:	�
model_71477:
��
model_71479:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_71357model_71359model_71361model_71363model_71365model_71367model_71369model_71371model_71373model_71375model_71377model_71379model_71381model_71383model_71385model_71387model_71389model_71391model_71393model_71395model_71397model_71399model_71401model_71403model_71405model_71407model_71409model_71411model_71413model_71415model_71417model_71419model_71421model_71423model_71425model_71427model_71429model_71431model_71433model_71435model_71437model_71439model_71441model_71443model_71445model_71447model_71449model_71451model_71453model_71455model_71457model_71459model_71461model_71463model_71465model_71467model_71469model_71471model_71473model_71475model_71477model_71479*J
TinC
A2?*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*^
_read_only_resource_inputs@
><	
 !"#$%&'()*+,-./0123456789:;<=>*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_70311�
outputs/PartitionedCallPartitionedCall&model/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *K
fFRD
B__inference_outputs_layer_call_and_return_conditional_losses_70441g
IdentityIdentity outputs/PartitionedCall:output:0^NoOp*
T0*
_output_shapes
:	�f
NoOpNoOp^model/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a: 

_output_shapes
:a
�

V
.__inference__jit_compiled_convolution_op_72184

inputs

kernel
identity`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : }
Conv1D/ExpandDims_1
ExpandDimskernel Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������d
IdentityIdentityConv1D/Squeeze:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:�*
	_noinline(:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:KG
#
_output_shapes
:�
 
_user_specified_namekernel
�

V
.__inference__jit_compiled_convolution_op_69767

inputs

kernel
identity`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
Conv1D/ExpandDims
ExpandDimsinputsConv1D/ExpandDims/dim:output:0*
T0*0
_output_shapes
:����������Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : }
Conv1D/ExpandDims_1
ExpandDimskernel Conv1D/ExpandDims_1/dim:output:0*
T0*'
_output_shapes
:��
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*0
_output_shapes
:����������*
paddingSAME*
strides
�
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*,
_output_shapes
:����������*
squeeze_dims

���������d
IdentityIdentityConv1D/Squeeze:output:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*
_XlaMustCompile(*(
_construction_contextkEagerRuntime*:
_input_shapes)
':����������:�*
	_noinline(:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs:KG
#
_output_shapes
:�
 
_user_specified_namekernel
�
�
"__inference_internal_grad_fn_72399
result_grads_0
result_grads_1/
+mul_model_encoder_layer_1_intermediate_beta4
0mul_model_encoder_layer_1_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_1_intermediate_beta0mul_model_encoder_layer_1_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_1_intermediate_beta0mul_model_encoder_layer_1_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�
�
"__inference_internal_grad_fn_72363
result_grads_0
result_grads_1/
+mul_model_encoder_layer_2_intermediate_beta4
0mul_model_encoder_layer_2_intermediate_dense_add
identity�
mulMul+mul_model_encoder_layer_2_intermediate_beta0mul_model_encoder_layer_2_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul+mul_model_encoder_layer_2_intermediate_beta0mul_model_encoder_layer_2_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������
�
�
"__inference_internal_grad_fn_72471
result_grads_0
result_grads_1<
8mul_bertf1_model_model_encoder_layer_2_intermediate_betaA
=mul_bertf1_model_model_encoder_layer_2_intermediate_dense_add
identity�
mulMul8mul_bertf1_model_model_encoder_layer_2_intermediate_beta=mul_bertf1_model_model_encoder_layer_2_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul8mul_bertf1_model_model_encoder_layer_2_intermediate_beta=mul_bertf1_model_model_encoder_layer_2_intermediate_dense_add*
T0*,
_output_shapes
:����������J
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
subSubsub/x:output:0Sigmoid:y:0*
T0*,
_output_shapes
:����������W
mul_2Mul	mul_1:z:0sub:z:0*
T0*,
_output_shapes
:����������J
add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  �?^
addAddV2add/x:output:0	mul_2:z:0*
T0*,
_output_shapes
:����������Y
mul_3MulSigmoid:y:0add:z:0*
T0*,
_output_shapes
:����������^
mul_4Mulresult_grads_0	mul_3:z:0*
T0*,
_output_shapes
:����������V
IdentityIdentity	mul_4:z:0*
T0*,
_output_shapes
:����������"
identityIdentity:output:0*]
_input_shapesL
J:����������:����������: :����������:� �
&
 _has_manual_control_dependencies(
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_0:\X
,
_output_shapes
:����������
(
_user_specified_nameresult_grads_1:

_output_shapes
: :2.
,
_output_shapes
:����������:
"__inference_internal_grad_fn_72327CustomGradient-71882:
"__inference_internal_grad_fn_72345CustomGradient-71992:
"__inference_internal_grad_fn_72363CustomGradient-72110:
"__inference_internal_grad_fn_72381CustomGradient-70040:
"__inference_internal_grad_fn_72399CustomGradient-70150:
"__inference_internal_grad_fn_72417CustomGradient-70268:
"__inference_internal_grad_fn_72435CustomGradient-69602:
"__inference_internal_grad_fn_72453CustomGradient-69723:
"__inference_internal_grad_fn_72471CustomGradient-69852"�
L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
>
inputs4
serving_default_inputs:0����������3
outputs(
StatefulPartitionedCall:0	�tensorflow/serving/predict:в
�
layer-0
layer_with_weights-0
layer-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
emb
cls_emb
	model
fc
softmax"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59"
trackable_list_wrapper
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
]trace_0
^trace_12�
&__inference_bertf1_layer_call_fn_70571
&__inference_bertf1_layer_call_fn_71224�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z]trace_0z^trace_1
�
_trace_0
`trace_12�
A__inference_bertf1_layer_call_and_return_conditional_losses_71354
A__inference_bertf1_layer_call_and_return_conditional_losses_71484�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z_trace_0z`trace_1
�
a	capture_2
b	capture_4B�
 __inference__wrapped_model_69895inputs"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
,
cserving_default"
signature_map
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59"
trackable_list_wrapper
�
0
1
2
3
 4
!5
"6
#7
$8
%9
&10
'11
(12
)13
*14
+15
,16
-17
.18
/19
020
121
222
323
424
525
626
727
828
929
:30
;31
<32
=33
>34
?35
@36
A37
B38
C39
D40
E41
F42
G43
H44
I45
J46
K47
L48
M49
N50
O51
P52
Q53
R54
S55
T56
U57
V58
W59"
trackable_list_wrapper
 "
trackable_list_wrapper
�
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
itrace_02�
%__inference_model_layer_call_fn_71744�
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zitrace_0
�
jtrace_02�
@__inference_model_layer_call_and_return_conditional_losses_72153�
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zjtrace_0
�
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses

kernel

weight"
_tf_keras_layer
$:"�2model/cls_emb
�
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w
embeddings
xencoder"
_tf_keras_layer
�
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses

Vkernel

Vweight
Wbias"
_tf_keras_layer
(
	keras_api"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_outputs_layer_call_fn_72158�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_outputs_layer_call_and_return_conditional_losses_72162�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
$:"
��2model/emb/kernel
H:F	a�25model/model/embeddings/position_embeddings/embeddings
J:H	�27model/model/embeddings/token_type_embeddings/embeddings
5:3�2&model/model/embeddings/LayerNorm/gamma
4:2�2%model/model/embeddings/LayerNorm/beta
K:I
��27model/model/encoder/layer.0/attention/self/query/kernel
D:B�25model/model/encoder/layer.0/attention/self/query/bias
I:G
��25model/model/encoder/layer.0/attention/self/key/kernel
B:@�23model/model/encoder/layer.0/attention/self/key/bias
K:I
��27model/model/encoder/layer.0/attention/self/value/kernel
D:B�25model/model/encoder/layer.0/attention/self/value/bias
M:K
��29model/model/encoder/layer.0/attention/output/dense/kernel
F:D�27model/model/encoder/layer.0/attention/output/dense/bias
K:I�2<model/model/encoder/layer.0/attention/output/LayerNorm/gamma
J:H�2;model/model/encoder/layer.0/attention/output/LayerNorm/beta
I:G
��25model/model/encoder/layer.0/intermediate/dense/kernel
B:@�23model/model/encoder/layer.0/intermediate/dense/bias
C:A
��2/model/model/encoder/layer.0/output/dense/kernel
<::�2-model/model/encoder/layer.0/output/dense/bias
A:?�22model/model/encoder/layer.0/output/LayerNorm/gamma
@:>�21model/model/encoder/layer.0/output/LayerNorm/beta
K:I
��27model/model/encoder/layer.1/attention/self/query/kernel
D:B�25model/model/encoder/layer.1/attention/self/query/bias
I:G
��25model/model/encoder/layer.1/attention/self/key/kernel
B:@�23model/model/encoder/layer.1/attention/self/key/bias
K:I
��27model/model/encoder/layer.1/attention/self/value/kernel
D:B�25model/model/encoder/layer.1/attention/self/value/bias
M:K
��29model/model/encoder/layer.1/attention/output/dense/kernel
F:D�27model/model/encoder/layer.1/attention/output/dense/bias
K:I�2<model/model/encoder/layer.1/attention/output/LayerNorm/gamma
J:H�2;model/model/encoder/layer.1/attention/output/LayerNorm/beta
I:G
��25model/model/encoder/layer.1/intermediate/dense/kernel
B:@�23model/model/encoder/layer.1/intermediate/dense/bias
C:A
��2/model/model/encoder/layer.1/output/dense/kernel
<::�2-model/model/encoder/layer.1/output/dense/bias
A:?�22model/model/encoder/layer.1/output/LayerNorm/gamma
@:>�21model/model/encoder/layer.1/output/LayerNorm/beta
B:@�2+model/model/encoder/layer.1/cpe_conv/kernel
8:6�2)model/model/encoder/layer.1/cpe_conv/bias
K:I
��27model/model/encoder/layer.2/attention/self/query/kernel
D:B�25model/model/encoder/layer.2/attention/self/query/bias
I:G
��25model/model/encoder/layer.2/attention/self/key/kernel
B:@�23model/model/encoder/layer.2/attention/self/key/bias
K:I
��27model/model/encoder/layer.2/attention/self/value/kernel
D:B�25model/model/encoder/layer.2/attention/self/value/bias
M:K
��29model/model/encoder/layer.2/attention/output/dense/kernel
F:D�27model/model/encoder/layer.2/attention/output/dense/bias
K:I�2<model/model/encoder/layer.2/attention/output/LayerNorm/gamma
J:H�2;model/model/encoder/layer.2/attention/output/LayerNorm/beta
I:G
��25model/model/encoder/layer.2/intermediate/dense/kernel
B:@�23model/model/encoder/layer.2/intermediate/dense/bias
C:A
��2/model/model/encoder/layer.2/output/dense/kernel
<::�2-model/model/encoder/layer.2/output/dense/bias
A:?�22model/model/encoder/layer.2/output/LayerNorm/gamma
@:>�21model/model/encoder/layer.2/output/LayerNorm/beta
B:@�2+model/model/encoder/layer.2/cpe_conv/kernel
8:6�2)model/model/encoder/layer.2/cpe_conv/bias
%:#
��2model/fc.1/kernel
:�2model/fc.1/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
a	capture_2
b	capture_4B�
&__inference_bertf1_layer_call_fn_70571inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
�
a	capture_2
b	capture_4B�
&__inference_bertf1_layer_call_fn_71224inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
�
a	capture_2
b	capture_4B�
A__inference_bertf1_layer_call_and_return_conditional_losses_71354inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
�
a	capture_2
b	capture_4B�
A__inference_bertf1_layer_call_and_return_conditional_losses_71484inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
!J	
Const_1jtf.TrackableConstant
J
Constjtf.TrackableConstant
�
a	capture_2
b	capture_4B�
#__inference_signature_wrapper_71615inputs"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
a	capture_2
b	capture_4B�
%__inference_model_layer_call_fn_71744inputs_embeds"�
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
�
a	capture_2
b	capture_4B�
@__inference_model_layer_call_and_return_conditional_losses_72153inputs_embeds"�
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 za	capture_2zb	capture_4
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
523
624
725
826
927
:28
;29
<30
=31
>32
?33
@34
A35
B36
C37
D38
E39
F40
G41
H42
I43
J44
K45
L46
M47
N48
O49
P50
Q51
R52
S53
T54
U55"
trackable_list_wrapper
�
0
1
 2
!3
"4
#5
$6
%7
&8
'9
(10
)11
*12
+13
,14
-15
.16
/17
018
119
220
321
422
523
624
725
826
927
:28
;29
<30
=31
>32
?33
@34
A35
B36
C37
D38
E39
F40
G41
H42
I43
J44
K45
L46
M47
N48
O49
P50
Q51
R52
S53
T54
U55"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�position_embeddings
�token_type_embeddings
�	LayerNorm"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�layer"
_tf_keras_layer
.
V0
W1"
trackable_list_wrapper
.
V0
W1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_outputs_layer_call_fn_72158x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_outputs_layer_call_and_return_conditional_losses_72162x"�
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
.
w0
x1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
<
0
1
 2
!3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jinputs_embeds
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

embeddings"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	 gamma
!beta"
_tf_keras_layer
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
620
721
822
923
:24
;25
<26
=27
>28
?29
@30
A31
B32
C33
D34
E35
F36
G37
H38
I39
J40
K41
L42
M43
N44
O45
P46
Q47
R48
S49
T50
U51"
trackable_list_wrapper
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115
216
317
418
519
620
721
822
923
:24
;25
<26
=27
>28
?29
@30
A31
B32
C33
D34
E35
F36
G37
H38
I39
J40
K41
L42
M43
N44
O45
P46
Q47
R48
S49
T50
U51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_
�cpe_conv"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�	attention
�intermediate
�output_
�cpe_conv"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115"
trackable_list_wrapper
�
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9
,10
-11
.12
/13
014
115"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17"
trackable_list_wrapper
�
20
31
42
53
64
75
86
97
:8
;9
<10
=11
>12
?13
@14
A15
B16
C17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Bkernel
Cbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17"
trackable_list_wrapper
�
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9
N10
O11
P12
Q13
R14
S15
T16
U17"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�self
�output_"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Tkernel
Ubias
!�_jit_compiled_convolution_op"
_tf_keras_layer
 "
trackable_list_wrapper
8
�0
�1
�2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9"
trackable_list_wrapper
f
"0
#1
$2
%3
&4
'5
(6
)7
*8
+9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

,kernel

,weight
-bias"
_tf_keras_layer
<
.0
/1
02
13"
trackable_list_wrapper
<
.0
/1
02
13"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

.kernel

.weight
/bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	0gamma
1beta"
_tf_keras_layer
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
20
31
42
53
64
75
86
97
:8
;9"
trackable_list_wrapper
f
20
31
42
53
64
75
86
97
:8
;9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

<kernel

<weight
=bias"
_tf_keras_layer
<
>0
?1
@2
A3"
trackable_list_wrapper
<
>0
?1
@2
A3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

>kernel

>weight
?bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	@gamma
Abeta"
_tf_keras_layer
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�trace_02�
.__inference__jit_compiled_convolution_op_72173�
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
f
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9"
trackable_list_wrapper
f
D0
E1
F2
G3
H4
I5
J6
K7
L8
M9"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�query
�key

�value
�softmax"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Nkernel

Nweight
Obias"
_tf_keras_layer
<
P0
Q1
R2
S3"
trackable_list_wrapper
<
P0
Q1
R2
S3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Pkernel

Pweight
Qbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Rgamma
Sbeta"
_tf_keras_layer
.
T0
U1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�trace_02�
.__inference__jit_compiled_convolution_op_72184�
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0z�trace_0
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
"0
#1
$2
%3
&4
'5"
trackable_list_wrapper
J
"0
#1
$2
%3
&4
'5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

"kernel

"weight
#bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

$kernel

$weight
%bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

&kernel

&weight
'bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
<
(0
)1
*2
+3"
trackable_list_wrapper
<
(0
)1
*2
+3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

(kernel

(weight
)bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	*gamma
+beta"
_tf_keras_layer
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
20
31
42
53
64
75"
trackable_list_wrapper
J
20
31
42
53
64
75"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

2kernel

2weight
3bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

4kernel

4weight
5bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

6kernel

6weight
7bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
<
80
91
:2
;3"
trackable_list_wrapper
<
80
91
:2
;3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

8kernel

8weight
9bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	:gamma
;beta"
_tf_keras_layer
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference__jit_compiled_convolution_op_72173inputskernel"�
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
J
D0
E1
F2
G3
H4
I5"
trackable_list_wrapper
J
D0
E1
F2
G3
H4
I5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec$
args�
jself
jhidden_states
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Dkernel

Dweight
Ebias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Fkernel

Fweight
Gbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Hkernel

Hweight
Ibias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses"
_tf_keras_layer
<
J0
K1
L2
M3"
trackable_list_wrapper
<
J0
K1
L2
M3"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec4
args,�)
jself
jhidden_states
jinput_tensor
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Jkernel

Jweight
Kbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Lgamma
Mbeta"
_tf_keras_layer
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
N0
O1"
trackable_list_wrapper
.
N0
O1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
.__inference__jit_compiled_convolution_op_72184inputskernel"�
���
FullArgSpec'
args�
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
40
51"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
60
71"
trackable_list_wrapper
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
@
�0
�1
�2
�3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec%
args�
jself
jinputs
jmask
varargs
 
varkw
 
defaults�

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
0
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jx
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
.
L0
M1"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�2��
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
obm
)model/encoder/layer.0/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_72153
tbr
.model/encoder/layer.0/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_72153
obm
)model/encoder/layer.1/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_72153
tbr
.model/encoder/layer.1/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_72153
obm
)model/encoder/layer.2/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_72153
tbr
.model/encoder/layer.2/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_72153
obm
)model/encoder/layer.0/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_70311
tbr
.model/encoder/layer.0/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_70311
obm
)model/encoder/layer.1/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_70311
tbr
.model/encoder/layer.1/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_70311
obm
)model/encoder/layer.2/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_70311
tbr
.model/encoder/layer.2/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_70311
\bZ
6bertf1/model/model/encoder/layer.0/intermediate/beta:0 __inference__wrapped_model_69895
ab_
;bertf1/model/model/encoder/layer.0/intermediate/dense/add:0 __inference__wrapped_model_69895
\bZ
6bertf1/model/model/encoder/layer.1/intermediate/beta:0 __inference__wrapped_model_69895
ab_
;bertf1/model/model/encoder/layer.1/intermediate/dense/add:0 __inference__wrapped_model_69895
\bZ
6bertf1/model/model/encoder/layer.2/intermediate/beta:0 __inference__wrapped_model_69895
ab_
;bertf1/model/model/encoder/layer.2/intermediate/dense/add:0 __inference__wrapped_model_69895�
.__inference__jit_compiled_convolution_op_72173|R�O
H�E
%�"
inputs����������
�
kernel�
� "&�#
unknown�����������
.__inference__jit_compiled_convolution_op_72184|R�O
H�E
%�"
inputs����������
�
kernel�
� "&�#
unknown�����������
 __inference__wrapped_model_69895�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW4�1
*�'
%�"
inputs����������
� ")�&
$
outputs�
outputs	��
A__inference_bertf1_layer_call_and_return_conditional_losses_71354�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW<�9
2�/
%�"
inputs����������
p 

 
� "$�!
�
tensor_0	�
� �
A__inference_bertf1_layer_call_and_return_conditional_losses_71484�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW<�9
2�/
%�"
inputs����������
p

 
� "$�!
�
tensor_0	�
� �
&__inference_bertf1_layer_call_fn_70571�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW<�9
2�/
%�"
inputs����������
p 

 
� "�
unknown	��
&__inference_bertf1_layer_call_fn_71224�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW<�9
2�/
%�"
inputs����������
p

 
� "�
unknown	��
"__inference_internal_grad_fn_72327���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72345���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72363���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72381���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72399���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72417���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72435���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72453���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
"__inference_internal_grad_fn_72471���o�l
e�b

 
-�*
result_grads_0����������
-�*
result_grads_1����������
� "0�-

 
'�$
tensor_1�����������
@__inference_model_layer_call_and_return_conditional_losses_72153�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW;�8
1�.
,�)
inputs_embeds����������
� "$�!
�
tensor_0	�
� �
%__inference_model_layer_call_fn_71744�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW;�8
1�.
,�)
inputs_embeds����������
� "�
unknown	��
B__inference_outputs_layer_call_and_return_conditional_losses_72162J"�
�
�
x	�
� "$�!
�
tensor_0	�
� j
'__inference_outputs_layer_call_fn_72158?"�
�
�
x	�
� "�
unknown	��
#__inference_signature_wrapper_71615�>ab !$%&'"#()*+,-./01BC45672389:;<=>?@ATUFGHIDEJKLMNOPQRSVW>�;
� 
4�1
/
inputs%�"
inputs����������")�&
$
outputs�
outputs	�