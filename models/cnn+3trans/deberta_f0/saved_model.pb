��$
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
�
ConstConst*
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
:model/model/encoder/layer.2/attention/self/value_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.2/attention/self/value_proj/bias
�
Nmodel/model/encoder/layer.2/attention/self/value_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.2/attention/self/value_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.2/attention/self/value_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.2/attention/self/value_proj/kernel
�
Pmodel/model/encoder/layer.2/attention/self/value_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.2/attention/self/value_proj/kernel* 
_output_shapes
:
��*
dtype0
�
8model/model/encoder/layer.2/attention/self/key_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8model/model/encoder/layer.2/attention/self/key_proj/bias
�
Lmodel/model/encoder/layer.2/attention/self/key_proj/bias/Read/ReadVariableOpReadVariableOp8model/model/encoder/layer.2/attention/self/key_proj/bias*
_output_shapes	
:�*
dtype0
�
:model/model/encoder/layer.2/attention/self/key_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:model/model/encoder/layer.2/attention/self/key_proj/kernel
�
Nmodel/model/encoder/layer.2/attention/self/key_proj/kernel/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.2/attention/self/key_proj/kernel* 
_output_shapes
:
��*
dtype0
�
:model/model/encoder/layer.2/attention/self/query_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.2/attention/self/query_proj/bias
�
Nmodel/model/encoder/layer.2/attention/self/query_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.2/attention/self/query_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.2/attention/self/query_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.2/attention/self/query_proj/kernel
�
Pmodel/model/encoder/layer.2/attention/self/query_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.2/attention/self/query_proj/kernel* 
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
:model/model/encoder/layer.1/attention/self/value_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.1/attention/self/value_proj/bias
�
Nmodel/model/encoder/layer.1/attention/self/value_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.1/attention/self/value_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.1/attention/self/value_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.1/attention/self/value_proj/kernel
�
Pmodel/model/encoder/layer.1/attention/self/value_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.1/attention/self/value_proj/kernel* 
_output_shapes
:
��*
dtype0
�
8model/model/encoder/layer.1/attention/self/key_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8model/model/encoder/layer.1/attention/self/key_proj/bias
�
Lmodel/model/encoder/layer.1/attention/self/key_proj/bias/Read/ReadVariableOpReadVariableOp8model/model/encoder/layer.1/attention/self/key_proj/bias*
_output_shapes	
:�*
dtype0
�
:model/model/encoder/layer.1/attention/self/key_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:model/model/encoder/layer.1/attention/self/key_proj/kernel
�
Nmodel/model/encoder/layer.1/attention/self/key_proj/kernel/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.1/attention/self/key_proj/kernel* 
_output_shapes
:
��*
dtype0
�
:model/model/encoder/layer.1/attention/self/query_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.1/attention/self/query_proj/bias
�
Nmodel/model/encoder/layer.1/attention/self/query_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.1/attention/self/query_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.1/attention/self/query_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.1/attention/self/query_proj/kernel
�
Pmodel/model/encoder/layer.1/attention/self/query_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.1/attention/self/query_proj/kernel* 
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
:model/model/encoder/layer.0/attention/self/value_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.0/attention/self/value_proj/bias
�
Nmodel/model/encoder/layer.0/attention/self/value_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.0/attention/self/value_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.0/attention/self/value_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.0/attention/self/value_proj/kernel
�
Pmodel/model/encoder/layer.0/attention/self/value_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.0/attention/self/value_proj/kernel* 
_output_shapes
:
��*
dtype0
�
8model/model/encoder/layer.0/attention/self/key_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*I
shared_name:8model/model/encoder/layer.0/attention/self/key_proj/bias
�
Lmodel/model/encoder/layer.0/attention/self/key_proj/bias/Read/ReadVariableOpReadVariableOp8model/model/encoder/layer.0/attention/self/key_proj/bias*
_output_shapes	
:�*
dtype0
�
:model/model/encoder/layer.0/attention/self/key_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*K
shared_name<:model/model/encoder/layer.0/attention/self/key_proj/kernel
�
Nmodel/model/encoder/layer.0/attention/self/key_proj/kernel/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.0/attention/self/key_proj/kernel* 
_output_shapes
:
��*
dtype0
�
:model/model/encoder/layer.0/attention/self/query_proj/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*K
shared_name<:model/model/encoder/layer.0/attention/self/query_proj/bias
�
Nmodel/model/encoder/layer.0/attention/self/query_proj/bias/Read/ReadVariableOpReadVariableOp:model/model/encoder/layer.0/attention/self/query_proj/bias*
_output_shapes	
:�*
dtype0
�
<model/model/encoder/layer.0/attention/self/query_proj/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*M
shared_name><model/model/encoder/layer.0/attention/self/query_proj/kernel
�
Pmodel/model/encoder/layer.0/attention/self/query_proj/kernel/Read/ReadVariableOpReadVariableOp<model/model/encoder/layer.0/attention/self/query_proj/kernel* 
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
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputsmodel/emb/kernelmodel/cls_embConst5model/model/embeddings/position_embeddings/embeddings&model/model/embeddings/LayerNorm/gamma%model/model/embeddings/LayerNorm/beta:model/model/encoder/layer.0/attention/self/key_proj/kernel8model/model/encoder/layer.0/attention/self/key_proj/bias<model/model/encoder/layer.0/attention/self/value_proj/kernel:model/model/encoder/layer.0/attention/self/value_proj/bias<model/model/encoder/layer.0/attention/self/query_proj/kernel:model/model/encoder/layer.0/attention/self/query_proj/bias9model/model/encoder/layer.0/attention/output/dense/kernel7model/model/encoder/layer.0/attention/output/dense/bias<model/model/encoder/layer.0/attention/output/LayerNorm/gamma;model/model/encoder/layer.0/attention/output/LayerNorm/beta5model/model/encoder/layer.0/intermediate/dense/kernel3model/model/encoder/layer.0/intermediate/dense/bias/model/model/encoder/layer.0/output/dense/kernel-model/model/encoder/layer.0/output/dense/bias2model/model/encoder/layer.0/output/LayerNorm/gamma1model/model/encoder/layer.0/output/LayerNorm/beta+model/model/encoder/layer.1/cpe_conv/kernel)model/model/encoder/layer.1/cpe_conv/bias:model/model/encoder/layer.1/attention/self/key_proj/kernel8model/model/encoder/layer.1/attention/self/key_proj/bias<model/model/encoder/layer.1/attention/self/value_proj/kernel:model/model/encoder/layer.1/attention/self/value_proj/bias<model/model/encoder/layer.1/attention/self/query_proj/kernel:model/model/encoder/layer.1/attention/self/query_proj/bias9model/model/encoder/layer.1/attention/output/dense/kernel7model/model/encoder/layer.1/attention/output/dense/bias<model/model/encoder/layer.1/attention/output/LayerNorm/gamma;model/model/encoder/layer.1/attention/output/LayerNorm/beta5model/model/encoder/layer.1/intermediate/dense/kernel3model/model/encoder/layer.1/intermediate/dense/bias/model/model/encoder/layer.1/output/dense/kernel-model/model/encoder/layer.1/output/dense/bias2model/model/encoder/layer.1/output/LayerNorm/gamma1model/model/encoder/layer.1/output/LayerNorm/beta+model/model/encoder/layer.2/cpe_conv/kernel)model/model/encoder/layer.2/cpe_conv/bias:model/model/encoder/layer.2/attention/self/key_proj/kernel8model/model/encoder/layer.2/attention/self/key_proj/bias<model/model/encoder/layer.2/attention/self/value_proj/kernel:model/model/encoder/layer.2/attention/self/value_proj/bias<model/model/encoder/layer.2/attention/self/query_proj/kernel:model/model/encoder/layer.2/attention/self/query_proj/bias9model/model/encoder/layer.2/attention/output/dense/kernel7model/model/encoder/layer.2/attention/output/dense/bias<model/model/encoder/layer.2/attention/output/LayerNorm/gamma;model/model/encoder/layer.2/attention/output/LayerNorm/beta5model/model/encoder/layer.2/intermediate/dense/kernel3model/model/encoder/layer.2/intermediate/dense/bias/model/model/encoder/layer.2/output/dense/kernel-model/model/encoder/layer.2/output/dense/bias2model/model/encoder/layer.2/output/LayerNorm/gamma1model/model/encoder/layer.2/output/LayerNorm/betamodel/fc.1/kernelmodel/fc.1/bias*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *,
f'R%
#__inference_signature_wrapper_87635

NoOpNoOp
��
Const_1Const"/device:CPU:0*
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
V58*
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
V58*
* 
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

\trace_0
]trace_1* 

^trace_0
_trace_1* 

`	capture_2* 

aserving_default* 
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
V58*
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
V58*
* 
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel

weight*
^X
VARIABLE_VALUEmodel/cls_emb7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUE*
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u
embeddings
vencoder*
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

Ukernel

Uweight
Vbias*

}	keras_api* 
* 
* 
* 
�
~non_trainable_variables

layers
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
f`
VARIABLE_VALUE&model/model/embeddings/LayerNorm/gamma&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%model/model/embeddings/LayerNorm/beta&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<model/model/encoder/layer.0/attention/self/query_proj/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:model/model/encoder/layer.0/attention/self/query_proj/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE:model/model/encoder/layer.0/attention/self/key_proj/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE8model/model/encoder/layer.0/attention/self/key_proj/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<model/model/encoder/layer.0/attention/self/value_proj/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.0/attention/self/value_proj/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.0/attention/output/dense/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.0/attention/output/dense/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.0/attention/output/LayerNorm/gamma'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.0/attention/output/LayerNorm/beta'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.0/intermediate/dense/kernel'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.0/intermediate/dense/bias'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.0/output/dense/kernel'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.0/output/dense/bias'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.0/output/LayerNorm/gamma'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.0/output/LayerNorm/beta'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.1/attention/self/query_proj/kernel'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.1/attention/self/query_proj/bias'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.1/attention/self/key_proj/kernel'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE8model/model/encoder/layer.1/attention/self/key_proj/bias'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.1/attention/self/value_proj/kernel'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.1/attention/self/value_proj/bias'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.1/attention/output/dense/kernel'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.1/attention/output/dense/bias'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.1/attention/output/LayerNorm/gamma'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.1/attention/output/LayerNorm/beta'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.1/intermediate/dense/kernel'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.1/intermediate/dense/bias'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.1/output/dense/kernel'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.1/output/dense/bias'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.1/output/LayerNorm/gamma'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.1/output/LayerNorm/beta'variables/36/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+model/model/encoder/layer.1/cpe_conv/kernel'variables/37/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)model/model/encoder/layer.1/cpe_conv/bias'variables/38/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.2/attention/self/query_proj/kernel'variables/39/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.2/attention/self/query_proj/bias'variables/40/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.2/attention/self/key_proj/kernel'variables/41/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE8model/model/encoder/layer.2/attention/self/key_proj/bias'variables/42/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.2/attention/self/value_proj/kernel'variables/43/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE:model/model/encoder/layer.2/attention/self/value_proj/bias'variables/44/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUE9model/model/encoder/layer.2/attention/output/dense/kernel'variables/45/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE7model/model/encoder/layer.2/attention/output/dense/bias'variables/46/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE<model/model/encoder/layer.2/attention/output/LayerNorm/gamma'variables/47/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE;model/model/encoder/layer.2/attention/output/LayerNorm/beta'variables/48/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE5model/model/encoder/layer.2/intermediate/dense/kernel'variables/49/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE3model/model/encoder/layer.2/intermediate/dense/bias'variables/50/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE/model/model/encoder/layer.2/output/dense/kernel'variables/51/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-model/model/encoder/layer.2/output/dense/bias'variables/52/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE2model/model/encoder/layer.2/output/LayerNorm/gamma'variables/53/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE1model/model/encoder/layer.2/output/LayerNorm/beta'variables/54/.ATTRIBUTES/VARIABLE_VALUE*
lf
VARIABLE_VALUE+model/model/encoder/layer.2/cpe_conv/kernel'variables/55/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE)model/model/encoder/layer.2/cpe_conv/bias'variables/56/.ATTRIBUTES/VARIABLE_VALUE*
RL
VARIABLE_VALUEmodel/fc.1/kernel'variables/57/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEmodel/fc.1/bias'variables/58/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*
* 
* 
* 

`	capture_2* 

`	capture_2* 

`	capture_2* 

`	capture_2* 
* 

`	capture_2* 
* 

0
1
2*
* 
* 
* 

`	capture_2* 

`	capture_2* 

0*

0*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*
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
T54*
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
T54*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses*
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
U0
V1*

U0
V1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses*
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
u0
v1*
* 
* 
* 

0
1
 2*

0
1
 2*
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
	�axis
	gamma
 beta*
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015
116
217
318
419
520
621
722
823
924
:25
;26
<27
=28
>29
?30
@31
A32
B33
C34
D35
E36
F37
G38
H39
I40
J41
K42
L43
M44
N45
O46
P47
Q48
R49
S50
T51*
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015
116
217
318
419
520
621
722
823
924
:25
;26
<27
=28
>29
?30
@31
A32
B33
C34
D35
E36
F37
G38
H39
I40
J41
K42
L43
M44
N45
O46
P47
Q48
R49
S50
T51*
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

�0
�1*
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

0
 1*

0
 1*
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
z
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015*
z
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015*
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
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm*
�
10
21
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
?14
@15
A16
B17*
�
10
21
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
?14
@15
A16
B17*
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

Akernel
Bbias
!�_jit_compiled_convolution_op*
�
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17*
�
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17*
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

Skernel
Tbias
!�_jit_compiled_convolution_op*
* 

�0
�1
�2*
* 
* 
* 
J
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9*
J
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9*
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
�
query_proj
�key_proj
�
value_proj
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
+0
,1*

+0
,1*
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

+kernel

+weight
,bias*
 
-0
.1
/2
03*
 
-0
.1
/2
03*
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

-kernel

-weight
.bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	/gamma
0beta*
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
10
21
32
43
54
65
76
87
98
:9*
J
10
21
32
43
54
65
76
87
98
:9*
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
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�
query_proj
�key_proj
�
value_proj
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
;0
<1*

;0
<1*
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

;kernel

;weight
<bias*
 
=0
>1
?2
@3*
 
=0
>1
?2
@3*
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

=kernel

=weight
>bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	?gamma
@beta*

A0
B1*

A0
B1*
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
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9*
J
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9*
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
�
query_proj
�key_proj
�
value_proj
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
M0
N1*

M0
N1*
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

Mkernel

Mweight
Nbias*
 
O0
P1
Q2
R3*
 
O0
P1
Q2
R3*
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

Okernel

Oweight
Pbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Qgamma
Rbeta*

S0
T1*

S0
T1*
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
!0
"1
#2
$3
%4
&5*
.
!0
"1
#2
$3
%4
&5*
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

!kernel

!weight
"bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

#kernel

#weight
$bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

%kernel

%weight
&bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
'0
(1
)2
*3*
 
'0
(1
)2
*3*
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

'kernel

'weight
(bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	)gamma
*beta*
* 

�0*
* 
* 
* 

+0
,1*

+0
,1*
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
�0
�1*
* 
* 
* 

-0
.1*

-0
.1*
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

/0
01*

/0
01*
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
* 

�0
�1*
* 
* 
* 
.
10
21
32
43
54
65*
.
10
21
32
43
54
65*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
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

1kernel

1weight
2bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

3kernel

3weight
4bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

5kernel

5weight
6bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
70
81
92
:3*
 
70
81
92
:3*
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

7kernel

7weight
8bias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	9gamma
:beta*
* 

�0*
* 
* 
* 

;0
<1*

;0
<1*
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
=0
>1*

=0
>1*
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
?0
@1*

?0
@1*
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
C0
D1
E2
F3
G4
H5*
.
C0
D1
E2
F3
G4
H5*
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

Ckernel

Cweight
Dbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ekernel

Eweight
Fbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Gkernel

Gweight
Hbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses* 
 
I0
J1
K2
L3*
 
I0
J1
K2
L3*
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

Ikernel

Iweight
Jbias*
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Kgamma
Lbeta*
* 

�0*
* 
* 
* 

M0
N1*

M0
N1*
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
O0
P1*

O0
P1*
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
Q0
R1*

Q0
R1*
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
!0
"1*

!0
"1*
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
#0
$1*

#0
$1*
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
%0
&1*

%0
&1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
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
'0
(1*

'0
(1*
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
)0
*1*

)0
*1*
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
10
21*

10
21*
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
30
41*

30
41*
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
50
61*

50
61*
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
70
81*

70
81*
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
90
:1*

90
:1*
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
C0
D1*

C0
D1*
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
E0
F1*

E0
F1*
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
G0
H1*

G0
H1*
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
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*
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
I0
J1*

I0
J1*
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
K0
L1*

K0
L1*
* 
�
�non_trainable_variables
�layers
�metrics
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
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!model/cls_emb/Read/ReadVariableOp$model/emb/kernel/Read/ReadVariableOpImodel/model/embeddings/position_embeddings/embeddings/Read/ReadVariableOp:model/model/embeddings/LayerNorm/gamma/Read/ReadVariableOp9model/model/embeddings/LayerNorm/beta/Read/ReadVariableOpPmodel/model/encoder/layer.0/attention/self/query_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.0/attention/self/query_proj/bias/Read/ReadVariableOpNmodel/model/encoder/layer.0/attention/self/key_proj/kernel/Read/ReadVariableOpLmodel/model/encoder/layer.0/attention/self/key_proj/bias/Read/ReadVariableOpPmodel/model/encoder/layer.0/attention/self/value_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.0/attention/self/value_proj/bias/Read/ReadVariableOpMmodel/model/encoder/layer.0/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.0/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.0/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.0/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.0/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.0/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.0/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.0/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.0/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.0/output/LayerNorm/beta/Read/ReadVariableOpPmodel/model/encoder/layer.1/attention/self/query_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.1/attention/self/query_proj/bias/Read/ReadVariableOpNmodel/model/encoder/layer.1/attention/self/key_proj/kernel/Read/ReadVariableOpLmodel/model/encoder/layer.1/attention/self/key_proj/bias/Read/ReadVariableOpPmodel/model/encoder/layer.1/attention/self/value_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.1/attention/self/value_proj/bias/Read/ReadVariableOpMmodel/model/encoder/layer.1/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.1/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.1/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.1/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.1/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.1/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.1/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.1/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.1/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.1/output/LayerNorm/beta/Read/ReadVariableOp?model/model/encoder/layer.1/cpe_conv/kernel/Read/ReadVariableOp=model/model/encoder/layer.1/cpe_conv/bias/Read/ReadVariableOpPmodel/model/encoder/layer.2/attention/self/query_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.2/attention/self/query_proj/bias/Read/ReadVariableOpNmodel/model/encoder/layer.2/attention/self/key_proj/kernel/Read/ReadVariableOpLmodel/model/encoder/layer.2/attention/self/key_proj/bias/Read/ReadVariableOpPmodel/model/encoder/layer.2/attention/self/value_proj/kernel/Read/ReadVariableOpNmodel/model/encoder/layer.2/attention/self/value_proj/bias/Read/ReadVariableOpMmodel/model/encoder/layer.2/attention/output/dense/kernel/Read/ReadVariableOpKmodel/model/encoder/layer.2/attention/output/dense/bias/Read/ReadVariableOpPmodel/model/encoder/layer.2/attention/output/LayerNorm/gamma/Read/ReadVariableOpOmodel/model/encoder/layer.2/attention/output/LayerNorm/beta/Read/ReadVariableOpImodel/model/encoder/layer.2/intermediate/dense/kernel/Read/ReadVariableOpGmodel/model/encoder/layer.2/intermediate/dense/bias/Read/ReadVariableOpCmodel/model/encoder/layer.2/output/dense/kernel/Read/ReadVariableOpAmodel/model/encoder/layer.2/output/dense/bias/Read/ReadVariableOpFmodel/model/encoder/layer.2/output/LayerNorm/gamma/Read/ReadVariableOpEmodel/model/encoder/layer.2/output/LayerNorm/beta/Read/ReadVariableOp?model/model/encoder/layer.2/cpe_conv/kernel/Read/ReadVariableOp=model/model/encoder/layer.2/cpe_conv/bias/Read/ReadVariableOp%model/fc.1/kernel/Read/ReadVariableOp#model/fc.1/bias/Read/ReadVariableOpConst_1*H
TinA
?2=*
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
__inference__traced_save_88615
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamemodel/cls_embmodel/emb/kernel5model/model/embeddings/position_embeddings/embeddings&model/model/embeddings/LayerNorm/gamma%model/model/embeddings/LayerNorm/beta<model/model/encoder/layer.0/attention/self/query_proj/kernel:model/model/encoder/layer.0/attention/self/query_proj/bias:model/model/encoder/layer.0/attention/self/key_proj/kernel8model/model/encoder/layer.0/attention/self/key_proj/bias<model/model/encoder/layer.0/attention/self/value_proj/kernel:model/model/encoder/layer.0/attention/self/value_proj/bias9model/model/encoder/layer.0/attention/output/dense/kernel7model/model/encoder/layer.0/attention/output/dense/bias<model/model/encoder/layer.0/attention/output/LayerNorm/gamma;model/model/encoder/layer.0/attention/output/LayerNorm/beta5model/model/encoder/layer.0/intermediate/dense/kernel3model/model/encoder/layer.0/intermediate/dense/bias/model/model/encoder/layer.0/output/dense/kernel-model/model/encoder/layer.0/output/dense/bias2model/model/encoder/layer.0/output/LayerNorm/gamma1model/model/encoder/layer.0/output/LayerNorm/beta<model/model/encoder/layer.1/attention/self/query_proj/kernel:model/model/encoder/layer.1/attention/self/query_proj/bias:model/model/encoder/layer.1/attention/self/key_proj/kernel8model/model/encoder/layer.1/attention/self/key_proj/bias<model/model/encoder/layer.1/attention/self/value_proj/kernel:model/model/encoder/layer.1/attention/self/value_proj/bias9model/model/encoder/layer.1/attention/output/dense/kernel7model/model/encoder/layer.1/attention/output/dense/bias<model/model/encoder/layer.1/attention/output/LayerNorm/gamma;model/model/encoder/layer.1/attention/output/LayerNorm/beta5model/model/encoder/layer.1/intermediate/dense/kernel3model/model/encoder/layer.1/intermediate/dense/bias/model/model/encoder/layer.1/output/dense/kernel-model/model/encoder/layer.1/output/dense/bias2model/model/encoder/layer.1/output/LayerNorm/gamma1model/model/encoder/layer.1/output/LayerNorm/beta+model/model/encoder/layer.1/cpe_conv/kernel)model/model/encoder/layer.1/cpe_conv/bias<model/model/encoder/layer.2/attention/self/query_proj/kernel:model/model/encoder/layer.2/attention/self/query_proj/bias:model/model/encoder/layer.2/attention/self/key_proj/kernel8model/model/encoder/layer.2/attention/self/key_proj/bias<model/model/encoder/layer.2/attention/self/value_proj/kernel:model/model/encoder/layer.2/attention/self/value_proj/bias9model/model/encoder/layer.2/attention/output/dense/kernel7model/model/encoder/layer.2/attention/output/dense/bias<model/model/encoder/layer.2/attention/output/LayerNorm/gamma;model/model/encoder/layer.2/attention/output/LayerNorm/beta5model/model/encoder/layer.2/intermediate/dense/kernel3model/model/encoder/layer.2/intermediate/dense/bias/model/model/encoder/layer.2/output/dense/kernel-model/model/encoder/layer.2/output/dense/bias2model/model/encoder/layer.2/output/LayerNorm/gamma1model/model/encoder/layer.2/output/LayerNorm/beta+model/model/encoder/layer.2/cpe_conv/kernel)model/model/encoder/layer.2/cpe_conv/biasmodel/fc.1/kernelmodel/fc.1/bias*G
Tin@
>2<*
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
!__inference__traced_restore_88802��
�

V
.__inference__jit_compiled_convolution_op_85606

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
.__inference__jit_compiled_convolution_op_88241

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
�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87508

inputs
model_87385:
��"
model_87387:�
model_87389
model_87391:	a�
model_87393:	�
model_87395:	�
model_87397:
��
model_87399:	�
model_87401:
��
model_87403:	�
model_87405:
��
model_87407:	�
model_87409:
��
model_87411:	�
model_87413:	�
model_87415:	�
model_87417:
��
model_87419:	�
model_87421:
��
model_87423:	�
model_87425:	�
model_87427:	�"
model_87429:�
model_87431:	�
model_87433:
��
model_87435:	�
model_87437:
��
model_87439:	�
model_87441:
��
model_87443:	�
model_87445:
��
model_87447:	�
model_87449:	�
model_87451:	�
model_87453:
��
model_87455:	�
model_87457:
��
model_87459:	�
model_87461:	�
model_87463:	�"
model_87465:�
model_87467:	�
model_87469:
��
model_87471:	�
model_87473:
��
model_87475:	�
model_87477:
��
model_87479:	�
model_87481:
��
model_87483:	�
model_87485:	�
model_87487:	�
model_87489:
��
model_87491:	�
model_87493:
��
model_87495:	�
model_87497:	�
model_87499:	�
model_87501:
��
model_87503:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_87385model_87387model_87389model_87391model_87393model_87395model_87397model_87399model_87401model_87403model_87405model_87407model_87409model_87411model_87413model_87415model_87417model_87419model_87421model_87423model_87425model_87427model_87429model_87431model_87433model_87435model_87437model_87439model_87441model_87443model_87445model_87447model_87449model_87451model_87453model_87455model_87457model_87459model_87461model_87463model_87465model_87467model_87469model_87471model_87473model_87475model_87477model_87479model_87481model_87483model_87485model_87487model_87489model_87491model_87493model_87495model_87497model_87499model_87501model_87503*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86371�
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
B__inference_outputs_layer_call_and_return_conditional_losses_86497g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_88446
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
��
�U
 __inference__wrapped_model_85903

inputsF
2debertaf0_model_emb_matmul_readvariableop_resource:
��E
.debertaf0_model_concat_readvariableop_resource:�*
&debertaf0_model_model_embeddings_85435^
Kdebertaf0_model_model_embeddings_position_embeddings_embedding_lookup_85443:	a�_
Pdebertaf0_model_model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�[
Ldebertaf0_model_model_embeddings_layernorm_batchnorm_readvariableop_resource:	�p
\debertaf0_model_model_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource:
��h
Ydebertaf0_model_model_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource:	�o
[debertaf0_model_model_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource:
��g
Xdebertaf0_model_model_encoder_layer_0_attention_output_dense_add_readvariableop_resource:	�u
fdebertaf0_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�q
bdebertaf0_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource:	�k
Wdebertaf0_model_model_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource:
��c
Tdebertaf0_model_model_encoder_layer_0_intermediate_dense_add_readvariableop_resource:	�e
Qdebertaf0_model_model_encoder_layer_0_output_dense_matmul_readvariableop_resource:
��]
Ndebertaf0_model_model_encoder_layer_0_output_dense_add_readvariableop_resource:	�k
\debertaf0_model_model_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource:	�g
Xdebertaf0_model_model_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource:	�]
Fdebertaf0_model_model_encoder_layer_1_cpe_conv_readvariableop_resource:�]
Ndebertaf0_model_model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�p
\debertaf0_model_model_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource:
��h
Ydebertaf0_model_model_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource:	�o
[debertaf0_model_model_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource:
��g
Xdebertaf0_model_model_encoder_layer_1_attention_output_dense_add_readvariableop_resource:	�u
fdebertaf0_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�q
bdebertaf0_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource:	�k
Wdebertaf0_model_model_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource:
��c
Tdebertaf0_model_model_encoder_layer_1_intermediate_dense_add_readvariableop_resource:	�e
Qdebertaf0_model_model_encoder_layer_1_output_dense_matmul_readvariableop_resource:
��]
Ndebertaf0_model_model_encoder_layer_1_output_dense_add_readvariableop_resource:	�k
\debertaf0_model_model_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource:	�g
Xdebertaf0_model_model_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource:	�]
Fdebertaf0_model_model_encoder_layer_2_cpe_conv_readvariableop_resource:�]
Ndebertaf0_model_model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�p
\debertaf0_model_model_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource:
��h
Ydebertaf0_model_model_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource:	�r
^debertaf0_model_model_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource:
��j
[debertaf0_model_model_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource:	�o
[debertaf0_model_model_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource:
��g
Xdebertaf0_model_model_encoder_layer_2_attention_output_dense_add_readvariableop_resource:	�u
fdebertaf0_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource:	�q
bdebertaf0_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource:	�k
Wdebertaf0_model_model_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource:
��c
Tdebertaf0_model_model_encoder_layer_2_intermediate_dense_add_readvariableop_resource:	�e
Qdebertaf0_model_model_encoder_layer_2_output_dense_matmul_readvariableop_resource:
��]
Ndebertaf0_model_model_encoder_layer_2_output_dense_add_readvariableop_resource:	�k
\debertaf0_model_model_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource:	�g
Xdebertaf0_model_model_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource:	�G
3debertaf0_model_fc_1_matmul_readvariableop_resource:
��?
0debertaf0_model_fc_1_add_readvariableop_resource:	�
identity��%debertaf0/model/concat/ReadVariableOp�)debertaf0/model/emb/MatMul/ReadVariableOp�*debertaf0/model/fc.1/MatMul/ReadVariableOp�'debertaf0/model/fc.1/add/ReadVariableOp�Cdebertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp�Gdebertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�Edebertaf0/model/model/embeddings/position_embeddings/embedding_lookup�Ydebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�]debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�Odebertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp�Pdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp�Ndebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�Kdebertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�Odebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�Hdebertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�Edebertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOp�Ydebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�]debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�Odebertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp�Pdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp�Edebertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�=debertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOp�Ndebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�Kdebertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�Odebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�Hdebertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�Edebertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOp�Ydebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�]debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�Odebertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp�Pdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp�Udebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp�Rdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp�Edebertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�=debertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOp�Ndebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�Kdebertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�Odebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Sdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�Hdebertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�Edebertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOp�
)debertaf0/model/emb/MatMul/ReadVariableOpReadVariableOp2debertaf0_model_emb_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
debertaf0/model/emb/MatMulBatchMatMulV2inputs1debertaf0/model/emb/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
%debertaf0/model/concat/ReadVariableOpReadVariableOp.debertaf0_model_concat_readvariableop_resource*#
_output_shapes
:�*
dtype0]
debertaf0/model/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
debertaf0/model/concatConcatV2-debertaf0/model/concat/ReadVariableOp:value:0#debertaf0/model/emb/MatMul:output:0$debertaf0/model/concat/axis:output:0*
N*
T0*,
_output_shapes
:����������u
&debertaf0/model/model/embeddings/ShapeShapedebertaf0/model/concat:output:0*
T0*
_output_shapes
:~
4debertaf0/model/model/embeddings/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:�
6debertaf0/model/model/embeddings/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6debertaf0/model/model/embeddings/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.debertaf0/model/model/embeddings/strided_sliceStridedSlice/debertaf0/model/model/embeddings/Shape:output:0=debertaf0/model/model/embeddings/strided_slice/stack:output:0?debertaf0/model/model/embeddings/strided_slice/stack_1:output:0?debertaf0/model/model/embeddings/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&debertaf0/model/model/embeddings/ConstConst*
_output_shapes
: *
dtype0*
value	B : j
(debertaf0/model/model/embeddings/Const_1Const*
_output_shapes
: *
dtype0*
value	B :�
6debertaf0/model/model/embeddings/strided_slice_1/stackPack/debertaf0/model/model/embeddings/Const:output:0*
N*
T0*
_output_shapes
:�
8debertaf0/model/model/embeddings/strided_slice_1/stack_1Pack7debertaf0/model/model/embeddings/strided_slice:output:0*
N*
T0*
_output_shapes
:�
8debertaf0/model/model/embeddings/strided_slice_1/stack_2Pack1debertaf0/model/model/embeddings/Const_1:output:0*
N*
T0*
_output_shapes
:�
0debertaf0/model/model/embeddings/strided_slice_1StridedSlice&debertaf0_model_model_embeddings_85435?debertaf0/model/model/embeddings/strided_slice_1/stack:output:0Adebertaf0/model/model/embeddings/strided_slice_1/stack_1:output:0Adebertaf0/model/model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
Edebertaf0/model/model/embeddings/position_embeddings/embedding_lookupResourceGatherKdebertaf0_model_model_embeddings_position_embeddings_embedding_lookup_854439debertaf0/model/model/embeddings/strided_slice_1:output:0*
Tindices0*^
_classT
RPloc:@debertaf0/model/model/embeddings/position_embeddings/embedding_lookup/85443*(
_output_shapes
:����������*
dtype0�
Ndebertaf0/model/model/embeddings/position_embeddings/embedding_lookup/IdentityIdentityNdebertaf0/model/model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*^
_classT
RPloc:@debertaf0/model/model/embeddings/position_embeddings/embedding_lookup/85443*(
_output_shapes
:�����������
Pdebertaf0/model/model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityWdebertaf0/model/model/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
$debertaf0/model/model/embeddings/addAddV2debertaf0/model/concat:output:0Ydebertaf0/model/model/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
Idebertaf0/model/model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
7debertaf0/model/model/embeddings/LayerNorm/moments/meanMean(debertaf0/model/model/embeddings/add:z:0Rdebertaf0/model/model/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
?debertaf0/model/model/embeddings/LayerNorm/moments/StopGradientStopGradient@debertaf0/model/model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Ddebertaf0/model/model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifference(debertaf0/model/model/embeddings/add:z:0Hdebertaf0/model/model/embeddings/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Mdebertaf0/model/model/embeddings/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
;debertaf0/model/model/embeddings/LayerNorm/moments/varianceMeanHdebertaf0/model/model/embeddings/LayerNorm/moments/SquaredDifference:z:0Vdebertaf0/model/model/embeddings/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(
:debertaf0/model/model/embeddings/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
8debertaf0/model/model/embeddings/LayerNorm/batchnorm/addAddV2Ddebertaf0/model/model/embeddings/LayerNorm/moments/variance:output:0Cdebertaf0/model/model/embeddings/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
:debertaf0/model/model/embeddings/LayerNorm/batchnorm/RsqrtRsqrt<debertaf0/model/model/embeddings/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Gdebertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpPdebertaf0_model_model_embeddings_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8debertaf0/model/model/embeddings/LayerNorm/batchnorm/mulMul>debertaf0/model/model/embeddings/LayerNorm/batchnorm/Rsqrt:y:0Odebertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul_1Mul(debertaf0/model/model/embeddings/add:z:0<debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul_2Mul@debertaf0/model/model/embeddings/LayerNorm/moments/mean:output:0<debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Cdebertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOpReadVariableOpLdebertaf0_model_model_embeddings_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
8debertaf0/model/model/embeddings/LayerNorm/batchnorm/subSubKdebertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp:value:0>debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/embeddings/LayerNorm/batchnorm/add_1AddV2>debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul_1:z:0<debertaf0/model/model/embeddings/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Sdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Ddebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMulBatchMatMulV2>debertaf0/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0[debertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpReadVariableOpYdebertaf0_model_model_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Adebertaf0/model/model/encoder/layer.0/attention/self/key_proj/addAddV2Mdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul:output:0Xdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bdebertaf0/model/model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
<debertaf0/model/model/encoder/layer.0/attention/self/ReshapeReshapeEdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add:z:0Kdebertaf0/model/model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
Cdebertaf0/model/model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
>debertaf0/model/model/encoder/layer.0/attention/self/transpose	TransposeEdebertaf0/model/model/encoder/layer.0/attention/self/Reshape:output:0Ldebertaf0/model/model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_1ReshapeBdebertaf0/model/model/encoder/layer.0/attention/self/transpose:y:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Udebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMulBatchMatMulV2>debertaf0/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0]debertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/addAddV2Odebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_2ReshapeGdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add:z:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.0/attention/self/transpose_1	TransposeGdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_2:output:0Ndebertaf0/model/model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_3ReshapeDdebertaf0/model/model/encoder/layer.0/attention/self/transpose_1:y:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Udebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMulBatchMatMulV2>debertaf0/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0]debertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/addAddV2Odebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_4ReshapeGdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add:z:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.0/attention/self/transpose_2	TransposeGdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_4:output:0Ndebertaf0/model/model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_5ReshapeDdebertaf0/model/model/encoder/layer.0/attention/self/transpose_2:y:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
@debertaf0/model/model/encoder/layer.0/attention/self/transpose_3	TransposeGdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_1:output:0Ndebertaf0/model/model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
;debertaf0/model/model/encoder/layer.0/attention/self/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_5:output:0Ddebertaf0/model/model/encoder/layer.0/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :�������������������
>debertaf0/model/model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
<debertaf0/model/model/encoder/layer.0/attention/self/truedivRealDivDdebertaf0/model/model/encoder/layer.0/attention/self/MatMul:output:0Gdebertaf0/model/model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
:debertaf0/model/model/encoder/layer.0/attention/self/ShapeShape@debertaf0/model/model/encoder/layer.0/attention/self/truediv:z:0*
T0*
_output_shapes
:�
Hdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Jdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bdebertaf0/model/model/encoder/layer.0/attention/self/strided_sliceStridedSliceCdebertaf0/model/model/encoder/layer.0/attention/self/Shape:output:0Qdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stack:output:0Sdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stack_1:output:0Sdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Fdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shapePackOdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/0:output:0Odebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/1:output:0Odebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape/2:output:0Kdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_6Reshape@debertaf0/model/model/encoder/layer.0/attention/self/truediv:z:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
Gdebertaf0/model/model/encoder/layer.0/attention/self/softmax_15/SoftmaxSoftmaxGdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"�������������������
Fdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shapePackOdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shape/0:output:0Odebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shape/1:output:0Kdebertaf0/model/model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_7ReshapeQdebertaf0/model/model/encoder/layer.0/attention/self/softmax_15/Softmax:softmax:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
=debertaf0/model/model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV2Gdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_7:output:0Gdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_8ReshapeFdebertaf0/model/model/encoder/layer.0/attention/self/MatMul_1:output:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.0/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.0/attention/self/transpose_4	TransposeGdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_8:output:0Ndebertaf0/model/model/encoder/layer.0/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.0/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
>debertaf0/model/model/encoder/layer.0/attention/self/Reshape_9ReshapeDdebertaf0/model/model/encoder/layer.0/attention/self/transpose_4:y:0Mdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Cdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.0/attention/self/Reshape_9:output:0Zdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_0_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@debertaf0/model/model/encoder/layer.0/attention/output/dense/addAddV2Ldebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul:output:0Wdebertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/encoder/layer.0/attention/output/addAddV2Ddebertaf0/model/model/encoder/layer.0/attention/output/dense/add:z:0>debertaf0/model/model/embeddings/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
_debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Mdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/meanMean>debertaf0/model/model/encoder/layer.0/attention/output/add:z:0hdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Udebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/StopGradientStopGradientVdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Zdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference>debertaf0/model/model/encoder/layer.0/attention/output/add:z:0^debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
cdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Qdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/varianceMean^debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/SquaredDifference:z:0ldebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Pdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ndebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/addAddV2Zdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/variance:output:0Ydebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/RsqrtRsqrtRdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
]debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpfdebertaf0_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mulMulTdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/Rsqrt:y:0edebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1Mul>debertaf0/model/model/encoder/layer.0/attention/output/add:z:0Rdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2MulVdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/moments/mean:output:0Rdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpbdebertaf0_model_model_encoder_layer_0_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/subSubadebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Tdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1AddV2Tdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul_1:z:0Rdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Ndebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpReadVariableOpWdebertaf0_model_model_encoder_layer_0_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
?debertaf0/model/model/encoder/layer.0/intermediate/dense/MatMulBatchMatMulV2Tdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0Vdebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Kdebertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpReadVariableOpTdebertaf0_model_model_encoder_layer_0_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<debertaf0/model/model/encoder/layer.0/intermediate/dense/addAddV2Hdebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul:output:0Sdebertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������|
7debertaf0/model/model/encoder/layer.0/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
6debertaf0/model/model/encoder/layer.0/intermediate/mulMul@debertaf0/model/model/encoder/layer.0/intermediate/beta:output:0@debertaf0/model/model/encoder/layer.0/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/encoder/layer.0/intermediate/SigmoidSigmoid:debertaf0/model/model/encoder/layer.0/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
8debertaf0/model/model/encoder/layer.0/intermediate/mul_1Mul@debertaf0/model/model/encoder/layer.0/intermediate/dense/add:z:0>debertaf0/model/model/encoder/layer.0/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
;debertaf0/model/model/encoder/layer.0/intermediate/IdentityIdentity<debertaf0/model/model/encoder/layer.0/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
<debertaf0/model/model/encoder/layer.0/intermediate/IdentityN	IdentityN<debertaf0/model/model/encoder/layer.0/intermediate/mul_1:z:0@debertaf0/model/model/encoder/layer.0/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-85562*D
_output_shapes2
0:����������:�����������
Hdebertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpReadVariableOpQdebertaf0_model_model_encoder_layer_0_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
9debertaf0/model/model/encoder/layer.0/output/dense/MatMulBatchMatMulV2Edebertaf0/model/model/encoder/layer.0/intermediate/IdentityN:output:0Pdebertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Edebertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOpReadVariableOpNdebertaf0_model_model_encoder_layer_0_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6debertaf0/model/model/encoder/layer.0/output/dense/addAddV2Bdebertaf0/model/model/encoder/layer.0/output/dense/MatMul:output:0Mdebertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
0debertaf0/model/model/encoder/layer.0/output/addAddV2:debertaf0/model/model/encoder/layer.0/output/dense/add:z:0Tdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Udebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Cdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/meanMean4debertaf0/model/model/encoder/layer.0/output/add:z:0^debertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Kdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/StopGradientStopGradientLdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/SquaredDifferenceSquaredDifference4debertaf0/model/model/encoder/layer.0/output/add:z:0Tdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Gdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/varianceMeanTdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/SquaredDifference:z:0bdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Fdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ddebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/addAddV2Pdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/variance:output:0Odebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Fdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/RsqrtRsqrtHdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Sdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_0_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mulMulJdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/Rsqrt:y:0[debertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1Mul4debertaf0/model/model/encoder/layer.0/output/add:z:0Hdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2MulLdebertaf0/model/model/encoder/layer.0/output/LayerNorm/moments/mean:output:0Hdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_0_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/subSubWdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp:value:0Jdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1AddV2Jdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul_1:z:0Hdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
=debertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOpReadVariableOpFdebertaf0_model_model_encoder_layer_1_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
>debertaf0/model/model/encoder/layer.1/cpe_conv/PartitionedCallPartitionedCallJdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0Edebertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOp:value:0*
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
.__inference__jit_compiled_convolution_op_85606�
Edebertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpReadVariableOpNdebertaf0_model_model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6debertaf0/model/model/encoder/layer.1/cpe_conv/BiasAddBiasAddGdebertaf0/model/model/encoder/layer.1/cpe_conv/PartitionedCall:output:0Mdebertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
)debertaf0/model/model/encoder/layer.1/addAddV2Jdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/add_1:z:0?debertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
Sdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Ddebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMulBatchMatMulV2-debertaf0/model/model/encoder/layer.1/add:z:0[debertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpReadVariableOpYdebertaf0_model_model_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Adebertaf0/model/model/encoder/layer.1/attention/self/key_proj/addAddV2Mdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul:output:0Xdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bdebertaf0/model/model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
<debertaf0/model/model/encoder/layer.1/attention/self/ReshapeReshapeEdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add:z:0Kdebertaf0/model/model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
Cdebertaf0/model/model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
>debertaf0/model/model/encoder/layer.1/attention/self/transpose	TransposeEdebertaf0/model/model/encoder/layer.1/attention/self/Reshape:output:0Ldebertaf0/model/model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_1ReshapeBdebertaf0/model/model/encoder/layer.1/attention/self/transpose:y:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Udebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMulBatchMatMulV2-debertaf0/model/model/encoder/layer.1/add:z:0]debertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/addAddV2Odebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_2ReshapeGdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add:z:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.1/attention/self/transpose_1	TransposeGdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_2:output:0Ndebertaf0/model/model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_3ReshapeDdebertaf0/model/model/encoder/layer.1/attention/self/transpose_1:y:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Udebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMulBatchMatMulV2-debertaf0/model/model/encoder/layer.1/add:z:0]debertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/addAddV2Odebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_4ReshapeGdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add:z:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.1/attention/self/transpose_2	TransposeGdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_4:output:0Ndebertaf0/model/model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_5ReshapeDdebertaf0/model/model/encoder/layer.1/attention/self/transpose_2:y:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
@debertaf0/model/model/encoder/layer.1/attention/self/transpose_3	TransposeGdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_1:output:0Ndebertaf0/model/model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
;debertaf0/model/model/encoder/layer.1/attention/self/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_5:output:0Ddebertaf0/model/model/encoder/layer.1/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :�������������������
>debertaf0/model/model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
<debertaf0/model/model/encoder/layer.1/attention/self/truedivRealDivDdebertaf0/model/model/encoder/layer.1/attention/self/MatMul:output:0Gdebertaf0/model/model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
:debertaf0/model/model/encoder/layer.1/attention/self/ShapeShape@debertaf0/model/model/encoder/layer.1/attention/self/truediv:z:0*
T0*
_output_shapes
:�
Hdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Jdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Jdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Bdebertaf0/model/model/encoder/layer.1/attention/self/strided_sliceStridedSliceCdebertaf0/model/model/encoder/layer.1/attention/self/Shape:output:0Qdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stack:output:0Sdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stack_1:output:0Sdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Fdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shapePackOdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/0:output:0Odebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/1:output:0Odebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape/2:output:0Kdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_6Reshape@debertaf0/model/model/encoder/layer.1/attention/self/truediv:z:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
Gdebertaf0/model/model/encoder/layer.1/attention/self/softmax_16/SoftmaxSoftmaxGdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"�������������������
Fdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shapePackOdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shape/0:output:0Odebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shape/1:output:0Kdebertaf0/model/model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_7ReshapeQdebertaf0/model/model/encoder/layer.1/attention/self/softmax_16/Softmax:softmax:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
=debertaf0/model/model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV2Gdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_7:output:0Gdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_8ReshapeFdebertaf0/model/model/encoder/layer.1/attention/self/MatMul_1:output:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.1/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.1/attention/self/transpose_4	TransposeGdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_8:output:0Ndebertaf0/model/model/encoder/layer.1/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.1/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
>debertaf0/model/model/encoder/layer.1/attention/self/Reshape_9ReshapeDdebertaf0/model/model/encoder/layer.1/attention/self/transpose_4:y:0Mdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Cdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.1/attention/self/Reshape_9:output:0Zdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_1_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@debertaf0/model/model/encoder/layer.1/attention/output/dense/addAddV2Ldebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul:output:0Wdebertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/encoder/layer.1/attention/output/addAddV2Ddebertaf0/model/model/encoder/layer.1/attention/output/dense/add:z:0-debertaf0/model/model/encoder/layer.1/add:z:0*
T0*,
_output_shapes
:�����������
_debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Mdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/meanMean>debertaf0/model/model/encoder/layer.1/attention/output/add:z:0hdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Udebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/StopGradientStopGradientVdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Zdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference>debertaf0/model/model/encoder/layer.1/attention/output/add:z:0^debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
cdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Qdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/varianceMean^debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/SquaredDifference:z:0ldebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Pdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ndebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/addAddV2Zdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/variance:output:0Ydebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/RsqrtRsqrtRdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
]debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpfdebertaf0_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mulMulTdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/Rsqrt:y:0edebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1Mul>debertaf0/model/model/encoder/layer.1/attention/output/add:z:0Rdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2MulVdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/moments/mean:output:0Rdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpbdebertaf0_model_model_encoder_layer_1_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/subSubadebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Tdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1AddV2Tdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul_1:z:0Rdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Ndebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpReadVariableOpWdebertaf0_model_model_encoder_layer_1_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
?debertaf0/model/model/encoder/layer.1/intermediate/dense/MatMulBatchMatMulV2Tdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0Vdebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Kdebertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpReadVariableOpTdebertaf0_model_model_encoder_layer_1_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<debertaf0/model/model/encoder/layer.1/intermediate/dense/addAddV2Hdebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul:output:0Sdebertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������|
7debertaf0/model/model/encoder/layer.1/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
6debertaf0/model/model/encoder/layer.1/intermediate/mulMul@debertaf0/model/model/encoder/layer.1/intermediate/beta:output:0@debertaf0/model/model/encoder/layer.1/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/encoder/layer.1/intermediate/SigmoidSigmoid:debertaf0/model/model/encoder/layer.1/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
8debertaf0/model/model/encoder/layer.1/intermediate/mul_1Mul@debertaf0/model/model/encoder/layer.1/intermediate/dense/add:z:0>debertaf0/model/model/encoder/layer.1/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
;debertaf0/model/model/encoder/layer.1/intermediate/IdentityIdentity<debertaf0/model/model/encoder/layer.1/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
<debertaf0/model/model/encoder/layer.1/intermediate/IdentityN	IdentityN<debertaf0/model/model/encoder/layer.1/intermediate/mul_1:z:0@debertaf0/model/model/encoder/layer.1/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-85707*D
_output_shapes2
0:����������:�����������
Hdebertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpReadVariableOpQdebertaf0_model_model_encoder_layer_1_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
9debertaf0/model/model/encoder/layer.1/output/dense/MatMulBatchMatMulV2Edebertaf0/model/model/encoder/layer.1/intermediate/IdentityN:output:0Pdebertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Edebertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOpReadVariableOpNdebertaf0_model_model_encoder_layer_1_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6debertaf0/model/model/encoder/layer.1/output/dense/addAddV2Bdebertaf0/model/model/encoder/layer.1/output/dense/MatMul:output:0Mdebertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
0debertaf0/model/model/encoder/layer.1/output/addAddV2:debertaf0/model/model/encoder/layer.1/output/dense/add:z:0Tdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Udebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Cdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/meanMean4debertaf0/model/model/encoder/layer.1/output/add:z:0^debertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Kdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/StopGradientStopGradientLdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/SquaredDifferenceSquaredDifference4debertaf0/model/model/encoder/layer.1/output/add:z:0Tdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Gdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/varianceMeanTdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/SquaredDifference:z:0bdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Fdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ddebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/addAddV2Pdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/variance:output:0Odebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Fdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/RsqrtRsqrtHdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Sdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_1_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mulMulJdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/Rsqrt:y:0[debertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1Mul4debertaf0/model/model/encoder/layer.1/output/add:z:0Hdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2MulLdebertaf0/model/model/encoder/layer.1/output/LayerNorm/moments/mean:output:0Hdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_1_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/subSubWdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp:value:0Jdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1AddV2Jdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul_1:z:0Hdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
=debertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOpReadVariableOpFdebertaf0_model_model_encoder_layer_2_cpe_conv_readvariableop_resource*#
_output_shapes
:�*
dtype0�
>debertaf0/model/model/encoder/layer.2/cpe_conv/PartitionedCallPartitionedCallJdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0Edebertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOp:value:0*
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
.__inference__jit_compiled_convolution_op_85751�
Edebertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpReadVariableOpNdebertaf0_model_model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6debertaf0/model/model/encoder/layer.2/cpe_conv/BiasAddBiasAddGdebertaf0/model/model/encoder/layer.2/cpe_conv/PartitionedCall:output:0Mdebertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
)debertaf0/model/model/encoder/layer.2/addAddV2Jdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/add_1:z:0?debertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd:output:0*
T0*,
_output_shapes
:�����������
Sdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Ddebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMulBatchMatMulV2-debertaf0/model/model/encoder/layer.2/add:z:0[debertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpReadVariableOpYdebertaf0_model_model_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Adebertaf0/model/model/encoder/layer.2/attention/self/key_proj/addAddV2Mdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul:output:0Xdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bdebertaf0/model/model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
<debertaf0/model/model/encoder/layer.2/attention/self/ReshapeReshapeEdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add:z:0Kdebertaf0/model/model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
Cdebertaf0/model/model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
>debertaf0/model/model/encoder/layer.2/attention/self/transpose	TransposeEdebertaf0/model/model/encoder/layer.2/attention/self/Reshape:output:0Ldebertaf0/model/model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_1ReshapeBdebertaf0/model/model/encoder/layer.2/attention/self/transpose:y:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Udebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMulBatchMatMulV2-debertaf0/model/model/encoder/layer.2/add:z:0]debertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/addAddV2Odebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_2ReshapeGdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add:z:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.2/attention/self/transpose_1	TransposeGdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_2:output:0Ndebertaf0/model/model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_3ReshapeDdebertaf0/model/model/encoder/layer.2/attention/self/transpose_1:y:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Hdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Jdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Jdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Bdebertaf0/model/model/encoder/layer.2/attention/self/strided_sliceStridedSlice-debertaf0/model/model/encoder/layer.2/add:z:0Qdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stack:output:0Sdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stack_1:output:0Sdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
Udebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOp^debertaf0_model_model_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Fdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMulBatchMatMulV2Kdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice:output:0]debertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Cdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/addAddV2Odebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul:output:0Zdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_4ReshapeGdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add:z:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.2/attention/self/transpose_2	TransposeGdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_4:output:0Ndebertaf0/model/model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_5ReshapeDdebertaf0/model/model/encoder/layer.2/attention/self/transpose_2:y:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
@debertaf0/model/model/encoder/layer.2/attention/self/transpose_3	TransposeGdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_1:output:0Ndebertaf0/model/model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
;debertaf0/model/model/encoder/layer.2/attention/self/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_5:output:0Ddebertaf0/model/model/encoder/layer.2/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :�������������������
>debertaf0/model/model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
<debertaf0/model/model/encoder/layer.2/attention/self/truedivRealDivDdebertaf0/model/model/encoder/layer.2/attention/self/MatMul:output:0Gdebertaf0/model/model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
:debertaf0/model/model/encoder/layer.2/attention/self/ShapeShape@debertaf0/model/model/encoder/layer.2/attention/self/truediv:z:0*
T0*
_output_shapes
:�
Jdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
Ldebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
Ldebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Ddebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1StridedSliceCdebertaf0/model/model/encoder/layer.2/attention/self/Shape:output:0Sdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stack:output:0Udebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stack_1:output:0Udebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Fdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shapePackOdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/0:output:0Odebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/1:output:0Odebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape/2:output:0Mdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_6Reshape@debertaf0/model/model/encoder/layer.2/attention/self/truediv:z:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
Gdebertaf0/model/model/encoder/layer.2/attention/self/softmax_17/SoftmaxSoftmaxGdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"�������������������
Fdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
Fdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shapePackOdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shape/0:output:0Odebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shape/1:output:0Mdebertaf0/model/model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_7ReshapeQdebertaf0/model/model/encoder/layer.2/attention/self/softmax_17/Softmax:softmax:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
=debertaf0/model/model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV2Gdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_7:output:0Gdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_8ReshapeFdebertaf0/model/model/encoder/layer.2/attention/self/MatMul_1:output:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
Edebertaf0/model/model/encoder/layer.2/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
@debertaf0/model/model/encoder/layer.2/attention/self/transpose_4	TransposeGdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_8:output:0Ndebertaf0/model/model/encoder/layer.2/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
Ddebertaf0/model/model/encoder/layer.2/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
>debertaf0/model/model/encoder/layer.2/attention/self/Reshape_9ReshapeDdebertaf0/model/model/encoder/layer.2/attention/self/transpose_4:y:0Mdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Rdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOp[debertaf0_model_model_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Cdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV2Gdebertaf0/model/model/encoder/layer.2/attention/self/Reshape_9:output:0Zdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_2_attention_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
@debertaf0/model/model/encoder/layer.2/attention/output/dense/addAddV2Ldebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul:output:0Wdebertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Jdebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        �
Ldebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       �
Ldebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
Ddebertaf0/model/model/encoder/layer.2/attention/output/strided_sliceStridedSlice-debertaf0/model/model/encoder/layer.2/add:z:0Sdebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stack:output:0Udebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stack_1:output:0Udebertaf0/model/model/encoder/layer.2/attention/output/strided_slice/stack_2:output:0*
Index0*
T0*,
_output_shapes
:����������*

begin_mask*
end_mask�
:debertaf0/model/model/encoder/layer.2/attention/output/addAddV2Ddebertaf0/model/model/encoder/layer.2/attention/output/dense/add:z:0Mdebertaf0/model/model/encoder/layer.2/attention/output/strided_slice:output:0*
T0*,
_output_shapes
:�����������
_debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Mdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/meanMean>debertaf0/model/model/encoder/layer.2/attention/output/add:z:0hdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Udebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/StopGradientStopGradientVdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Zdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifferenceSquaredDifference>debertaf0/model/model/encoder/layer.2/attention/output/add:z:0^debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
cdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Qdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/varianceMean^debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/SquaredDifference:z:0ldebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Pdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ndebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/addAddV2Zdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/variance:output:0Ydebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/RsqrtRsqrtRdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
]debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOpfdebertaf0_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mulMulTdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/Rsqrt:y:0edebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1Mul>debertaf0/model/model/encoder/layer.2/attention/output/add:z:0Rdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2MulVdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/moments/mean:output:0Rdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpbdebertaf0_model_model_encoder_layer_2_attention_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ndebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/subSubadebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp:value:0Tdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Pdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1AddV2Tdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul_1:z:0Rdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:�����������
Ndebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpReadVariableOpWdebertaf0_model_model_encoder_layer_2_intermediate_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
?debertaf0/model/model/encoder/layer.2/intermediate/dense/MatMulBatchMatMulV2Tdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0Vdebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Kdebertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpReadVariableOpTdebertaf0_model_model_encoder_layer_2_intermediate_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
<debertaf0/model/model/encoder/layer.2/intermediate/dense/addAddV2Hdebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul:output:0Sdebertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:����������|
7debertaf0/model/model/encoder/layer.2/intermediate/betaConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
6debertaf0/model/model/encoder/layer.2/intermediate/mulMul@debertaf0/model/model/encoder/layer.2/intermediate/beta:output:0@debertaf0/model/model/encoder/layer.2/intermediate/dense/add:z:0*
T0*,
_output_shapes
:�����������
:debertaf0/model/model/encoder/layer.2/intermediate/SigmoidSigmoid:debertaf0/model/model/encoder/layer.2/intermediate/mul:z:0*
T0*,
_output_shapes
:�����������
8debertaf0/model/model/encoder/layer.2/intermediate/mul_1Mul@debertaf0/model/model/encoder/layer.2/intermediate/dense/add:z:0>debertaf0/model/model/encoder/layer.2/intermediate/Sigmoid:y:0*
T0*,
_output_shapes
:�����������
;debertaf0/model/model/encoder/layer.2/intermediate/IdentityIdentity<debertaf0/model/model/encoder/layer.2/intermediate/mul_1:z:0*
T0*,
_output_shapes
:�����������
<debertaf0/model/model/encoder/layer.2/intermediate/IdentityN	IdentityN<debertaf0/model/model/encoder/layer.2/intermediate/mul_1:z:0@debertaf0/model/model/encoder/layer.2/intermediate/dense/add:z:0*
T
2*+
_gradient_op_typeCustomGradient-85860*D
_output_shapes2
0:����������:�����������
Hdebertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpReadVariableOpQdebertaf0_model_model_encoder_layer_2_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
9debertaf0/model/model/encoder/layer.2/output/dense/MatMulBatchMatMulV2Edebertaf0/model/model/encoder/layer.2/intermediate/IdentityN:output:0Pdebertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Edebertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOpReadVariableOpNdebertaf0_model_model_encoder_layer_2_output_dense_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
6debertaf0/model/model/encoder/layer.2/output/dense/addAddV2Bdebertaf0/model/model/encoder/layer.2/output/dense/MatMul:output:0Mdebertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
0debertaf0/model/model/encoder/layer.2/output/addAddV2:debertaf0/model/model/encoder/layer.2/output/dense/add:z:0Tdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/add_1:z:0*
T0*,
_output_shapes
:�����������
Udebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Cdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/meanMean4debertaf0/model/model/encoder/layer.2/output/add:z:0^debertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Kdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/StopGradientStopGradientLdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
Pdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/SquaredDifferenceSquaredDifference4debertaf0/model/model/encoder/layer.2/output/add:z:0Tdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/StopGradient:output:0*
T0*,
_output_shapes
:�����������
Ydebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
Gdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/varianceMeanTdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/SquaredDifference:z:0bdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/variance/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
Fdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *���3�
Ddebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/addAddV2Pdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/variance:output:0Odebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add/y:output:0*
T0*+
_output_shapes
:����������
Fdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/RsqrtRsqrtHdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add:z:0*
T0*+
_output_shapes
:����������
Sdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpReadVariableOp\debertaf0_model_model_encoder_layer_2_output_layernorm_batchnorm_mul_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mulMulJdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/Rsqrt:y:0[debertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1Mul4debertaf0/model/model/encoder/layer.2/output/add:z:0Hdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2MulLdebertaf0/model/model/encoder/layer.2/output/LayerNorm/moments/mean:output:0Hdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul:z:0*
T0*,
_output_shapes
:�����������
Odebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpReadVariableOpXdebertaf0_model_model_encoder_layer_2_output_layernorm_batchnorm_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Ddebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/subSubWdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp:value:0Jdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_2:z:0*
T0*,
_output_shapes
:�����������
Fdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add_1AddV2Jdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul_1:z:0Hdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/sub:z:0*
T0*,
_output_shapes
:����������t
#debertaf0/model/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        v
%debertaf0/model/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       v
%debertaf0/model/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      �
debertaf0/model/strided_sliceStridedSliceJdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/add_1:z:0,debertaf0/model/strided_slice/stack:output:0.debertaf0/model/strided_slice/stack_1:output:0.debertaf0/model/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:	�*

begin_mask*
end_mask*
shrink_axis_mask�
*debertaf0/model/fc.1/MatMul/ReadVariableOpReadVariableOp3debertaf0_model_fc_1_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
debertaf0/model/fc.1/MatMulMatMul&debertaf0/model/strided_slice:output:02debertaf0/model/fc.1/MatMul/ReadVariableOp:value:0*
T0*
_output_shapes
:	��
'debertaf0/model/fc.1/add/ReadVariableOpReadVariableOp0debertaf0_model_fc_1_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
debertaf0/model/fc.1/addAddV2%debertaf0/model/fc.1/MatMul:product:0/debertaf0/model/fc.1/add/ReadVariableOp:value:0*
T0*
_output_shapes
:	�c
IdentityIdentitydebertaf0/model/fc.1/add:z:0^NoOp*
T0*
_output_shapes
:	��%
NoOpNoOp&^debertaf0/model/concat/ReadVariableOp*^debertaf0/model/emb/MatMul/ReadVariableOp+^debertaf0/model/fc.1/MatMul/ReadVariableOp(^debertaf0/model/fc.1/add/ReadVariableOpD^debertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOpH^debertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpF^debertaf0/model/model/embeddings/position_embeddings/embedding_lookupZ^debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp^^debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpS^debertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpP^debertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpT^debertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpQ^debertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpO^debertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpL^debertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpP^debertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpT^debertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpI^debertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpF^debertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOpZ^debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp^^debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpS^debertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpP^debertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpT^debertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpQ^debertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpF^debertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp>^debertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOpO^debertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpL^debertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpP^debertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpT^debertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpI^debertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpF^debertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOpZ^debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp^^debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpS^debertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpP^debertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpT^debertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpQ^debertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpV^debertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpS^debertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpF^debertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp>^debertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOpO^debertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpL^debertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpP^debertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpT^debertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpI^debertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpF^debertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2N
%debertaf0/model/concat/ReadVariableOp%debertaf0/model/concat/ReadVariableOp2V
)debertaf0/model/emb/MatMul/ReadVariableOp)debertaf0/model/emb/MatMul/ReadVariableOp2X
*debertaf0/model/fc.1/MatMul/ReadVariableOp*debertaf0/model/fc.1/MatMul/ReadVariableOp2R
'debertaf0/model/fc.1/add/ReadVariableOp'debertaf0/model/fc.1/add/ReadVariableOp2�
Cdebertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOpCdebertaf0/model/model/embeddings/LayerNorm/batchnorm/ReadVariableOp2�
Gdebertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOpGdebertaf0/model/model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2�
Edebertaf0/model/model/embeddings/position_embeddings/embedding_lookupEdebertaf0/model/model/embeddings/position_embeddings/embedding_lookup2�
Ydebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpYdebertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
]debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp]debertaf0/model/model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpRdebertaf0/model/model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOpOdebertaf0/model/model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpSdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp2�
Pdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpPdebertaf0/model/model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp2�
Ndebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOpNdebertaf0/model/model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp2�
Kdebertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOpKdebertaf0/model/model/encoder/layer.0/intermediate/dense/add/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpOdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOpSdebertaf0/model/model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Hdebertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOpHdebertaf0/model/model/encoder/layer.0/output/dense/MatMul/ReadVariableOp2�
Edebertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOpEdebertaf0/model/model/encoder/layer.0/output/dense/add/ReadVariableOp2�
Ydebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpYdebertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
]debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp]debertaf0/model/model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpRdebertaf0/model/model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOpOdebertaf0/model/model/encoder/layer.1/attention/output/dense/add/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpSdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp2�
Pdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpPdebertaf0/model/model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp2�
Edebertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOpEdebertaf0/model/model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp2~
=debertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOp=debertaf0/model/model/encoder/layer.1/cpe_conv/ReadVariableOp2�
Ndebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOpNdebertaf0/model/model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp2�
Kdebertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOpKdebertaf0/model/model/encoder/layer.1/intermediate/dense/add/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpOdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOpSdebertaf0/model/model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Hdebertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOpHdebertaf0/model/model/encoder/layer.1/output/dense/MatMul/ReadVariableOp2�
Edebertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOpEdebertaf0/model/model/encoder/layer.1/output/dense/add/ReadVariableOp2�
Ydebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpYdebertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
]debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp]debertaf0/model/model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpRdebertaf0/model/model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOpOdebertaf0/model/model/encoder/layer.2/attention/output/dense/add/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpSdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp2�
Pdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpPdebertaf0/model/model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp2�
Udebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpUdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp2�
Rdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpRdebertaf0/model/model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp2�
Edebertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOpEdebertaf0/model/model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp2~
=debertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOp=debertaf0/model/model/encoder/layer.2/cpe_conv/ReadVariableOp2�
Ndebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOpNdebertaf0/model/model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp2�
Kdebertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOpKdebertaf0/model/model/encoder/layer.2/intermediate/dense/add/ReadVariableOp2�
Odebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpOdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp2�
Sdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOpSdebertaf0/model/model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Hdebertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOpHdebertaf0/model/model/encoder/layer.2/output/dense/MatMul/ReadVariableOp2�
Edebertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOpEdebertaf0/model/model/encoder/layer.2/output/dense/add/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�

V
.__inference__jit_compiled_convolution_op_88252

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
�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87382

inputs
model_87259:
��"
model_87261:�
model_87263
model_87265:	a�
model_87267:	�
model_87269:	�
model_87271:
��
model_87273:	�
model_87275:
��
model_87277:	�
model_87279:
��
model_87281:	�
model_87283:
��
model_87285:	�
model_87287:	�
model_87289:	�
model_87291:
��
model_87293:	�
model_87295:
��
model_87297:	�
model_87299:	�
model_87301:	�"
model_87303:�
model_87305:	�
model_87307:
��
model_87309:	�
model_87311:
��
model_87313:	�
model_87315:
��
model_87317:	�
model_87319:
��
model_87321:	�
model_87323:	�
model_87325:	�
model_87327:
��
model_87329:	�
model_87331:
��
model_87333:	�
model_87335:	�
model_87337:	�"
model_87339:�
model_87341:	�
model_87343:
��
model_87345:	�
model_87347:
��
model_87349:	�
model_87351:
��
model_87353:	�
model_87355:
��
model_87357:	�
model_87359:	�
model_87361:	�
model_87363:
��
model_87365:	�
model_87367:
��
model_87369:	�
model_87371:	�
model_87373:	�
model_87375:
��
model_87377:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_87259model_87261model_87263model_87265model_87267model_87269model_87271model_87273model_87275model_87277model_87279model_87281model_87283model_87285model_87287model_87289model_87291model_87293model_87295model_87297model_87299model_87301model_87303model_87305model_87307model_87309model_87311model_87313model_87315model_87317model_87319model_87321model_87323model_87325model_87327model_87329model_87331model_87333model_87335model_87337model_87339model_87341model_87343model_87345model_87347model_87349model_87351model_87353model_87355model_87357model_87359model_87361model_87363model_87365model_87367model_87369model_87371model_87373model_87375model_87377*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86371�
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
B__inference_outputs_layer_call_and_return_conditional_losses_86497g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
� 
�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87008

inputs
model_86885:
��"
model_86887:�
model_86889
model_86891:	a�
model_86893:	�
model_86895:	�
model_86897:
��
model_86899:	�
model_86901:
��
model_86903:	�
model_86905:
��
model_86907:	�
model_86909:
��
model_86911:	�
model_86913:	�
model_86915:	�
model_86917:
��
model_86919:	�
model_86921:
��
model_86923:	�
model_86925:	�
model_86927:	�"
model_86929:�
model_86931:	�
model_86933:
��
model_86935:	�
model_86937:
��
model_86939:	�
model_86941:
��
model_86943:	�
model_86945:
��
model_86947:	�
model_86949:	�
model_86951:	�
model_86953:
��
model_86955:	�
model_86957:
��
model_86959:	�
model_86961:	�
model_86963:	�"
model_86965:�
model_86967:	�
model_86969:
��
model_86971:	�
model_86973:
��
model_86975:	�
model_86977:
��
model_86979:	�
model_86981:
��
model_86983:	�
model_86985:	�
model_86987:	�
model_86989:
��
model_86991:	�
model_86993:
��
model_86995:	�
model_86997:	�
model_86999:	�
model_87001:
��
model_87003:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_86885model_86887model_86889model_86891model_86893model_86895model_86897model_86899model_86901model_86903model_86905model_86907model_86909model_86911model_86913model_86915model_86917model_86919model_86921model_86923model_86925model_86927model_86929model_86931model_86933model_86935model_86937model_86939model_86941model_86943model_86945model_86947model_86949model_86951model_86953model_86955model_86957model_86959model_86961model_86963model_86965model_86967model_86969model_86971model_86973model_86975model_86977model_86979model_86981model_86983model_86985model_86987model_86989model_86991model_86993model_86995model_86997model_86999model_87001model_87003*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86371�
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
B__inference_outputs_layer_call_and_return_conditional_losses_86497g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_88410
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
�
�'
__inference__traced_save_88615
file_prefix,
(savev2_model_cls_emb_read_readvariableop/
+savev2_model_emb_kernel_read_readvariableopT
Psavev2_model_model_embeddings_position_embeddings_embeddings_read_readvariableopE
Asavev2_model_model_embeddings_layernorm_gamma_read_readvariableopD
@savev2_model_model_embeddings_layernorm_beta_read_readvariableop[
Wsavev2_model_model_encoder_layer_0_attention_self_query_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_0_attention_self_query_proj_bias_read_readvariableopY
Usavev2_model_model_encoder_layer_0_attention_self_key_proj_kernel_read_readvariableopW
Ssavev2_model_model_encoder_layer_0_attention_self_key_proj_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_0_attention_self_value_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_0_attention_self_value_proj_bias_read_readvariableopX
Tsavev2_model_model_encoder_layer_0_attention_output_dense_kernel_read_readvariableopV
Rsavev2_model_model_encoder_layer_0_attention_output_dense_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_0_attention_output_layernorm_gamma_read_readvariableopZ
Vsavev2_model_model_encoder_layer_0_attention_output_layernorm_beta_read_readvariableopT
Psavev2_model_model_encoder_layer_0_intermediate_dense_kernel_read_readvariableopR
Nsavev2_model_model_encoder_layer_0_intermediate_dense_bias_read_readvariableopN
Jsavev2_model_model_encoder_layer_0_output_dense_kernel_read_readvariableopL
Hsavev2_model_model_encoder_layer_0_output_dense_bias_read_readvariableopQ
Msavev2_model_model_encoder_layer_0_output_layernorm_gamma_read_readvariableopP
Lsavev2_model_model_encoder_layer_0_output_layernorm_beta_read_readvariableop[
Wsavev2_model_model_encoder_layer_1_attention_self_query_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_1_attention_self_query_proj_bias_read_readvariableopY
Usavev2_model_model_encoder_layer_1_attention_self_key_proj_kernel_read_readvariableopW
Ssavev2_model_model_encoder_layer_1_attention_self_key_proj_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_1_attention_self_value_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_1_attention_self_value_proj_bias_read_readvariableopX
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
Dsavev2_model_model_encoder_layer_1_cpe_conv_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_2_attention_self_query_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_2_attention_self_query_proj_bias_read_readvariableopY
Usavev2_model_model_encoder_layer_2_attention_self_key_proj_kernel_read_readvariableopW
Ssavev2_model_model_encoder_layer_2_attention_self_key_proj_bias_read_readvariableop[
Wsavev2_model_model_encoder_layer_2_attention_self_value_proj_kernel_read_readvariableopY
Usavev2_model_model_encoder_layer_2_attention_self_value_proj_bias_read_readvariableopX
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
savev2_const_1

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
:<*
dtype0*�
value�B�<B7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �&
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_model_cls_emb_read_readvariableop+savev2_model_emb_kernel_read_readvariableopPsavev2_model_model_embeddings_position_embeddings_embeddings_read_readvariableopAsavev2_model_model_embeddings_layernorm_gamma_read_readvariableop@savev2_model_model_embeddings_layernorm_beta_read_readvariableopWsavev2_model_model_encoder_layer_0_attention_self_query_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_0_attention_self_query_proj_bias_read_readvariableopUsavev2_model_model_encoder_layer_0_attention_self_key_proj_kernel_read_readvariableopSsavev2_model_model_encoder_layer_0_attention_self_key_proj_bias_read_readvariableopWsavev2_model_model_encoder_layer_0_attention_self_value_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_0_attention_self_value_proj_bias_read_readvariableopTsavev2_model_model_encoder_layer_0_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_0_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_0_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_0_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_0_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_0_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_0_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_0_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_0_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_0_output_layernorm_beta_read_readvariableopWsavev2_model_model_encoder_layer_1_attention_self_query_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_1_attention_self_query_proj_bias_read_readvariableopUsavev2_model_model_encoder_layer_1_attention_self_key_proj_kernel_read_readvariableopSsavev2_model_model_encoder_layer_1_attention_self_key_proj_bias_read_readvariableopWsavev2_model_model_encoder_layer_1_attention_self_value_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_1_attention_self_value_proj_bias_read_readvariableopTsavev2_model_model_encoder_layer_1_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_1_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_1_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_1_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_1_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_1_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_1_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_1_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_1_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_1_output_layernorm_beta_read_readvariableopFsavev2_model_model_encoder_layer_1_cpe_conv_kernel_read_readvariableopDsavev2_model_model_encoder_layer_1_cpe_conv_bias_read_readvariableopWsavev2_model_model_encoder_layer_2_attention_self_query_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_2_attention_self_query_proj_bias_read_readvariableopUsavev2_model_model_encoder_layer_2_attention_self_key_proj_kernel_read_readvariableopSsavev2_model_model_encoder_layer_2_attention_self_key_proj_bias_read_readvariableopWsavev2_model_model_encoder_layer_2_attention_self_value_proj_kernel_read_readvariableopUsavev2_model_model_encoder_layer_2_attention_self_value_proj_bias_read_readvariableopTsavev2_model_model_encoder_layer_2_attention_output_dense_kernel_read_readvariableopRsavev2_model_model_encoder_layer_2_attention_output_dense_bias_read_readvariableopWsavev2_model_model_encoder_layer_2_attention_output_layernorm_gamma_read_readvariableopVsavev2_model_model_encoder_layer_2_attention_output_layernorm_beta_read_readvariableopPsavev2_model_model_encoder_layer_2_intermediate_dense_kernel_read_readvariableopNsavev2_model_model_encoder_layer_2_intermediate_dense_bias_read_readvariableopJsavev2_model_model_encoder_layer_2_output_dense_kernel_read_readvariableopHsavev2_model_model_encoder_layer_2_output_dense_bias_read_readvariableopMsavev2_model_model_encoder_layer_2_output_layernorm_gamma_read_readvariableopLsavev2_model_model_encoder_layer_2_output_layernorm_beta_read_readvariableopFsavev2_model_model_encoder_layer_2_cpe_conv_kernel_read_readvariableopDsavev2_model_model_encoder_layer_2_cpe_conv_bias_read_readvariableop,savev2_model_fc_1_kernel_read_readvariableop*savev2_model_fc_1_bias_read_readvariableopsavev2_const_1"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *J
dtypes@
>2<�
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
��:	a�:�:�:
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
:	a�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!	

_output_shapes	
:�:&
"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:!

_output_shapes	
:�:!

_output_shapes	
:�:& "
 
_output_shapes
:
��:!!

_output_shapes	
:�:&""
 
_output_shapes
:
��:!#

_output_shapes	
:�:!$

_output_shapes	
:�:!%

_output_shapes	
:�:)&%
#
_output_shapes
:�:!'

_output_shapes	
:�:&("
 
_output_shapes
:
��:!)

_output_shapes	
:�:&*"
 
_output_shapes
:
��:!+

_output_shapes	
:�:&,"
 
_output_shapes
:
��:!-

_output_shapes	
:�:&."
 
_output_shapes
:
��:!/

_output_shapes	
:�:!0

_output_shapes	
:�:!1

_output_shapes	
:�:&2"
 
_output_shapes
:
��:!3

_output_shapes	
:�:&4"
 
_output_shapes
:
��:!5

_output_shapes	
:�:!6

_output_shapes	
:�:!7

_output_shapes	
:�:)8%
#
_output_shapes
:�:!9

_output_shapes	
:�:&:"
 
_output_shapes
:
��:!;

_output_shapes	
:�:<

_output_shapes
: 
�
�
"__inference_internal_grad_fn_88428
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
�3
!__inference__traced_restore_88802
file_prefix5
assignvariableop_model_cls_emb:�7
#assignvariableop_1_model_emb_kernel:
��[
Hassignvariableop_2_model_model_embeddings_position_embeddings_embeddings:	a�H
9assignvariableop_3_model_model_embeddings_layernorm_gamma:	�G
8assignvariableop_4_model_model_embeddings_layernorm_beta:	�c
Oassignvariableop_5_model_model_encoder_layer_0_attention_self_query_proj_kernel:
��\
Massignvariableop_6_model_model_encoder_layer_0_attention_self_query_proj_bias:	�a
Massignvariableop_7_model_model_encoder_layer_0_attention_self_key_proj_kernel:
��Z
Kassignvariableop_8_model_model_encoder_layer_0_attention_self_key_proj_bias:	�c
Oassignvariableop_9_model_model_encoder_layer_0_attention_self_value_proj_kernel:
��]
Nassignvariableop_10_model_model_encoder_layer_0_attention_self_value_proj_bias:	�a
Massignvariableop_11_model_model_encoder_layer_0_attention_output_dense_kernel:
��Z
Kassignvariableop_12_model_model_encoder_layer_0_attention_output_dense_bias:	�_
Passignvariableop_13_model_model_encoder_layer_0_attention_output_layernorm_gamma:	�^
Oassignvariableop_14_model_model_encoder_layer_0_attention_output_layernorm_beta:	�]
Iassignvariableop_15_model_model_encoder_layer_0_intermediate_dense_kernel:
��V
Gassignvariableop_16_model_model_encoder_layer_0_intermediate_dense_bias:	�W
Cassignvariableop_17_model_model_encoder_layer_0_output_dense_kernel:
��P
Aassignvariableop_18_model_model_encoder_layer_0_output_dense_bias:	�U
Fassignvariableop_19_model_model_encoder_layer_0_output_layernorm_gamma:	�T
Eassignvariableop_20_model_model_encoder_layer_0_output_layernorm_beta:	�d
Passignvariableop_21_model_model_encoder_layer_1_attention_self_query_proj_kernel:
��]
Nassignvariableop_22_model_model_encoder_layer_1_attention_self_query_proj_bias:	�b
Nassignvariableop_23_model_model_encoder_layer_1_attention_self_key_proj_kernel:
��[
Lassignvariableop_24_model_model_encoder_layer_1_attention_self_key_proj_bias:	�d
Passignvariableop_25_model_model_encoder_layer_1_attention_self_value_proj_kernel:
��]
Nassignvariableop_26_model_model_encoder_layer_1_attention_self_value_proj_bias:	�a
Massignvariableop_27_model_model_encoder_layer_1_attention_output_dense_kernel:
��Z
Kassignvariableop_28_model_model_encoder_layer_1_attention_output_dense_bias:	�_
Passignvariableop_29_model_model_encoder_layer_1_attention_output_layernorm_gamma:	�^
Oassignvariableop_30_model_model_encoder_layer_1_attention_output_layernorm_beta:	�]
Iassignvariableop_31_model_model_encoder_layer_1_intermediate_dense_kernel:
��V
Gassignvariableop_32_model_model_encoder_layer_1_intermediate_dense_bias:	�W
Cassignvariableop_33_model_model_encoder_layer_1_output_dense_kernel:
��P
Aassignvariableop_34_model_model_encoder_layer_1_output_dense_bias:	�U
Fassignvariableop_35_model_model_encoder_layer_1_output_layernorm_gamma:	�T
Eassignvariableop_36_model_model_encoder_layer_1_output_layernorm_beta:	�V
?assignvariableop_37_model_model_encoder_layer_1_cpe_conv_kernel:�L
=assignvariableop_38_model_model_encoder_layer_1_cpe_conv_bias:	�d
Passignvariableop_39_model_model_encoder_layer_2_attention_self_query_proj_kernel:
��]
Nassignvariableop_40_model_model_encoder_layer_2_attention_self_query_proj_bias:	�b
Nassignvariableop_41_model_model_encoder_layer_2_attention_self_key_proj_kernel:
��[
Lassignvariableop_42_model_model_encoder_layer_2_attention_self_key_proj_bias:	�d
Passignvariableop_43_model_model_encoder_layer_2_attention_self_value_proj_kernel:
��]
Nassignvariableop_44_model_model_encoder_layer_2_attention_self_value_proj_bias:	�a
Massignvariableop_45_model_model_encoder_layer_2_attention_output_dense_kernel:
��Z
Kassignvariableop_46_model_model_encoder_layer_2_attention_output_dense_bias:	�_
Passignvariableop_47_model_model_encoder_layer_2_attention_output_layernorm_gamma:	�^
Oassignvariableop_48_model_model_encoder_layer_2_attention_output_layernorm_beta:	�]
Iassignvariableop_49_model_model_encoder_layer_2_intermediate_dense_kernel:
��V
Gassignvariableop_50_model_model_encoder_layer_2_intermediate_dense_bias:	�W
Cassignvariableop_51_model_model_encoder_layer_2_output_dense_kernel:
��P
Aassignvariableop_52_model_model_encoder_layer_2_output_dense_bias:	�U
Fassignvariableop_53_model_model_encoder_layer_2_output_layernorm_gamma:	�T
Eassignvariableop_54_model_model_encoder_layer_2_output_layernorm_beta:	�V
?assignvariableop_55_model_model_encoder_layer_2_cpe_conv_kernel:�L
=assignvariableop_56_model_model_encoder_layer_2_cpe_conv_bias:	�9
%assignvariableop_57_model_fc_1_kernel:
��2
#assignvariableop_58_model_fc_1_bias:	�
identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B7layer_with_weights-0/cls_emb/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB'variables/36/.ATTRIBUTES/VARIABLE_VALUEB'variables/37/.ATTRIBUTES/VARIABLE_VALUEB'variables/38/.ATTRIBUTES/VARIABLE_VALUEB'variables/39/.ATTRIBUTES/VARIABLE_VALUEB'variables/40/.ATTRIBUTES/VARIABLE_VALUEB'variables/41/.ATTRIBUTES/VARIABLE_VALUEB'variables/42/.ATTRIBUTES/VARIABLE_VALUEB'variables/43/.ATTRIBUTES/VARIABLE_VALUEB'variables/44/.ATTRIBUTES/VARIABLE_VALUEB'variables/45/.ATTRIBUTES/VARIABLE_VALUEB'variables/46/.ATTRIBUTES/VARIABLE_VALUEB'variables/47/.ATTRIBUTES/VARIABLE_VALUEB'variables/48/.ATTRIBUTES/VARIABLE_VALUEB'variables/49/.ATTRIBUTES/VARIABLE_VALUEB'variables/50/.ATTRIBUTES/VARIABLE_VALUEB'variables/51/.ATTRIBUTES/VARIABLE_VALUEB'variables/52/.ATTRIBUTES/VARIABLE_VALUEB'variables/53/.ATTRIBUTES/VARIABLE_VALUEB'variables/54/.ATTRIBUTES/VARIABLE_VALUEB'variables/55/.ATTRIBUTES/VARIABLE_VALUEB'variables/56/.ATTRIBUTES/VARIABLE_VALUEB'variables/57/.ATTRIBUTES/VARIABLE_VALUEB'variables/58/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<[
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
AssignVariableOp_3AssignVariableOp9assignvariableop_3_model_model_embeddings_layernorm_gammaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp8assignvariableop_4_model_model_embeddings_layernorm_betaIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpOassignvariableop_5_model_model_encoder_layer_0_attention_self_query_proj_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpMassignvariableop_6_model_model_encoder_layer_0_attention_self_query_proj_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpMassignvariableop_7_model_model_encoder_layer_0_attention_self_key_proj_kernelIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpKassignvariableop_8_model_model_encoder_layer_0_attention_self_key_proj_biasIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpOassignvariableop_9_model_model_encoder_layer_0_attention_self_value_proj_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpNassignvariableop_10_model_model_encoder_layer_0_attention_self_value_proj_biasIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpMassignvariableop_11_model_model_encoder_layer_0_attention_output_dense_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpKassignvariableop_12_model_model_encoder_layer_0_attention_output_dense_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpPassignvariableop_13_model_model_encoder_layer_0_attention_output_layernorm_gammaIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpOassignvariableop_14_model_model_encoder_layer_0_attention_output_layernorm_betaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpIassignvariableop_15_model_model_encoder_layer_0_intermediate_dense_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpGassignvariableop_16_model_model_encoder_layer_0_intermediate_dense_biasIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpCassignvariableop_17_model_model_encoder_layer_0_output_dense_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpAassignvariableop_18_model_model_encoder_layer_0_output_dense_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpFassignvariableop_19_model_model_encoder_layer_0_output_layernorm_gammaIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpEassignvariableop_20_model_model_encoder_layer_0_output_layernorm_betaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpPassignvariableop_21_model_model_encoder_layer_1_attention_self_query_proj_kernelIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpNassignvariableop_22_model_model_encoder_layer_1_attention_self_query_proj_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpNassignvariableop_23_model_model_encoder_layer_1_attention_self_key_proj_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpLassignvariableop_24_model_model_encoder_layer_1_attention_self_key_proj_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpPassignvariableop_25_model_model_encoder_layer_1_attention_self_value_proj_kernelIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpNassignvariableop_26_model_model_encoder_layer_1_attention_self_value_proj_biasIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpMassignvariableop_27_model_model_encoder_layer_1_attention_output_dense_kernelIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpKassignvariableop_28_model_model_encoder_layer_1_attention_output_dense_biasIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpPassignvariableop_29_model_model_encoder_layer_1_attention_output_layernorm_gammaIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOpOassignvariableop_30_model_model_encoder_layer_1_attention_output_layernorm_betaIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOpIassignvariableop_31_model_model_encoder_layer_1_intermediate_dense_kernelIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOpGassignvariableop_32_model_model_encoder_layer_1_intermediate_dense_biasIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOpCassignvariableop_33_model_model_encoder_layer_1_output_dense_kernelIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOpAassignvariableop_34_model_model_encoder_layer_1_output_dense_biasIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOpFassignvariableop_35_model_model_encoder_layer_1_output_layernorm_gammaIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOpEassignvariableop_36_model_model_encoder_layer_1_output_layernorm_betaIdentity_36:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp?assignvariableop_37_model_model_encoder_layer_1_cpe_conv_kernelIdentity_37:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp=assignvariableop_38_model_model_encoder_layer_1_cpe_conv_biasIdentity_38:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOpPassignvariableop_39_model_model_encoder_layer_2_attention_self_query_proj_kernelIdentity_39:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOpNassignvariableop_40_model_model_encoder_layer_2_attention_self_query_proj_biasIdentity_40:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOpNassignvariableop_41_model_model_encoder_layer_2_attention_self_key_proj_kernelIdentity_41:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpLassignvariableop_42_model_model_encoder_layer_2_attention_self_key_proj_biasIdentity_42:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOpPassignvariableop_43_model_model_encoder_layer_2_attention_self_value_proj_kernelIdentity_43:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOpNassignvariableop_44_model_model_encoder_layer_2_attention_self_value_proj_biasIdentity_44:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOpMassignvariableop_45_model_model_encoder_layer_2_attention_output_dense_kernelIdentity_45:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOpKassignvariableop_46_model_model_encoder_layer_2_attention_output_dense_biasIdentity_46:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOpPassignvariableop_47_model_model_encoder_layer_2_attention_output_layernorm_gammaIdentity_47:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOpOassignvariableop_48_model_model_encoder_layer_2_attention_output_layernorm_betaIdentity_48:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOpIassignvariableop_49_model_model_encoder_layer_2_intermediate_dense_kernelIdentity_49:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOpGassignvariableop_50_model_model_encoder_layer_2_intermediate_dense_biasIdentity_50:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOpCassignvariableop_51_model_model_encoder_layer_2_output_dense_kernelIdentity_51:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOpAassignvariableop_52_model_model_encoder_layer_2_output_dense_biasIdentity_52:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOpFassignvariableop_53_model_model_encoder_layer_2_output_layernorm_gammaIdentity_53:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOpEassignvariableop_54_model_model_encoder_layer_2_output_layernorm_betaIdentity_54:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp?assignvariableop_55_model_model_encoder_layer_2_cpe_conv_kernelIdentity_55:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp=assignvariableop_56_model_model_encoder_layer_2_cpe_conv_biasIdentity_56:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp%assignvariableop_57_model_fc_1_kernelIdentity_57:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp#assignvariableop_58_model_fc_1_biasIdentity_58:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
>
'__inference_outputs_layer_call_fn_88226
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
B__inference_outputs_layer_call_and_return_conditional_losses_86497X
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
�
Y
B__inference_outputs_layer_call_and_return_conditional_losses_86497
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
�
�
"__inference_internal_grad_fn_88536
result_grads_0
result_grads_1?
;mul_debertaf0_model_model_encoder_layer_2_intermediate_betaD
@mul_debertaf0_model_model_encoder_layer_2_intermediate_dense_add
identity�
mulMul;mul_debertaf0_model_model_encoder_layer_2_intermediate_beta@mul_debertaf0_model_model_encoder_layer_2_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul;mul_debertaf0_model_model_encoder_layer_2_intermediate_beta@mul_debertaf0_model_model_encoder_layer_2_intermediate_dense_add*
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
"__inference_internal_grad_fn_88482
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
�
�
%__inference_model_layer_call_fn_87760
inputs_embeds
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�!

unknown_21:�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�!

unknown_39:�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:
��

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:	�

unknown_56:	�

unknown_57:
��

unknown_58:	�
identity��StatefulPartitionedCall�
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
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86371g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:����������
'
_user_specified_nameinputs_embeds: 

_output_shapes
:a
��
�G
@__inference_model_layer_call_and_return_conditional_losses_86371
inputs_embeds6
"emb_matmul_readvariableop_resource:
��5
concat_readvariableop_resource:�
model_embeddings_85925N
;model_embeddings_position_embeddings_embedding_lookup_85933:	a�O
@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�K
<model_embeddings_layernorm_batchnorm_readvariableop_resource:	�`
Lmodel_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource:	�_
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
>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�`
Lmodel_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource:	�_
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
>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�`
Lmodel_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource:	�_
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
identity��concat/ReadVariableOp�emb/MatMul/ReadVariableOp�fc.1/MatMul/ReadVariableOp�fc.1/add/ReadVariableOp�3model/embeddings/LayerNorm/batchnorm/ReadVariableOp�7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�5model/embeddings/position_embeddings/embedding_lookup�Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp�>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.0/output/dense/add/ReadVariableOp�Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp�5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.1/cpe_conv/ReadVariableOp�>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.1/output/dense/add/ReadVariableOp�Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp�5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.2/cpe_conv/ReadVariableOp�>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.2/output/dense/add/ReadVariableOp~
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
 model/embeddings/strided_slice_1StridedSlicemodel_embeddings_85925/model/embeddings/strided_slice_1/stack:output:01model/embeddings/strided_slice_1/stack_1:output:01model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
5model/embeddings/position_embeddings/embedding_lookupResourceGather;model_embeddings_position_embeddings_embedding_lookup_85933)model/embeddings/strided_slice_1:output:0*
Tindices0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/85933*(
_output_shapes
:����������*
dtype0�
>model/embeddings/position_embeddings/embedding_lookup/IdentityIdentity>model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/85933*(
_output_shapes
:�����������
@model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityGmodel/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/addAddV2concat:output:0Imodel/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
9model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
'model/embeddings/LayerNorm/moments/meanMeanmodel/embeddings/add:z:0Bmodel/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
/model/embeddings/LayerNorm/moments/StopGradientStopGradient0model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
4model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencemodel/embeddings/add:z:08model/embeddings/LayerNorm/moments/StopGradient:output:0*
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
 *���3�
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
*model/embeddings/LayerNorm/batchnorm/mul_1Mulmodel/embeddings/add:z:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
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
Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.0/attention/self/key_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Kmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.0/attention/self/key_proj/addAddV2=model/encoder/layer.0/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.0/attention/self/ReshapeReshape5model/encoder/layer.0/attention/self/key_proj/add:z:0;model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.0/attention/self/transpose	Transpose5model/encoder/layer.0/attention/self/Reshape:output:0<model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_1Reshape2model/encoder/layer.0/attention/self/transpose:y:0=model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.0/attention/self/value_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Mmodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.0/attention/self/value_proj/addAddV2?model/encoder/layer.0/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_2Reshape7model/encoder/layer.0/attention/self/value_proj/add:z:0=model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_1	Transpose7model/encoder/layer.0/attention/self/Reshape_2:output:0>model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_3Reshape4model/encoder/layer.0/attention/self/transpose_1:y:0=model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.0/attention/self/query_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Mmodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.0/attention/self/query_proj/addAddV2?model/encoder/layer.0/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_4Reshape7model/encoder/layer.0/attention/self/query_proj/add:z:0=model/encoder/layer.0/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_2	Transpose7model/encoder/layer.0/attention/self/Reshape_4:output:0>model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_5Reshape4model/encoder/layer.0/attention/self/transpose_2:y:0=model/encoder/layer.0/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.0/attention/self/transpose_3	Transpose7model/encoder/layer.0/attention/self/Reshape_1:output:0>model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.0/attention/self/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_5:output:04model/encoder/layer.0/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.0/attention/self/truedivRealDiv4model/encoder/layer.0/attention/self/MatMul:output:07model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.0/attention/self/ShapeShape0model/encoder/layer.0/attention/self/truediv:z:0*
T0*
_output_shapes
:�
8model/encoder/layer.0/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
:model/encoder/layer.0/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
:model/encoder/layer.0/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model/encoder/layer.0/attention/self/strided_sliceStridedSlice3model/encoder/layer.0/attention/self/Shape:output:0Amodel/encoder/layer.0/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.0/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.0/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.0/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.0/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.0/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.0/attention/self/Reshape_6/shapePack?model/encoder/layer.0/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.0/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.0/attention/self/Reshape_6/shape/2:output:0;model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.0/attention/self/Reshape_6Reshape0model/encoder/layer.0/attention/self/truediv:z:0=model/encoder/layer.0/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.0/attention/self/softmax_15/SoftmaxSoftmax7model/encoder/layer.0/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.0/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.0/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.0/attention/self/Reshape_7/shapePack?model/encoder/layer.0/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.0/attention/self/Reshape_7/shape/1:output:0;model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.0/attention/self/Reshape_7ReshapeAmodel/encoder/layer.0/attention/self/softmax_15/Softmax:softmax:0=model/encoder/layer.0/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.0/attention/self/Reshape_7:output:07model/encoder/layer.0/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.0/attention/self/Reshape_8Reshape6model/encoder/layer.0/attention/self/MatMul_1:output:0=model/encoder/layer.0/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_4	Transpose7model/encoder/layer.0/attention/self/Reshape_8:output:0>model/encoder/layer.0/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.0/attention/self/Reshape_9Reshape4model/encoder/layer.0/attention/self/transpose_4:y:0=model/encoder/layer.0/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_9:output:0Jmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-86052*D
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
 *���3�
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
.__inference__jit_compiled_convolution_op_85606�
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
Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.1/attention/self/key_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Kmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.1/attention/self/key_proj/addAddV2=model/encoder/layer.1/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.1/attention/self/ReshapeReshape5model/encoder/layer.1/attention/self/key_proj/add:z:0;model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.1/attention/self/transpose	Transpose5model/encoder/layer.1/attention/self/Reshape:output:0<model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_1Reshape2model/encoder/layer.1/attention/self/transpose:y:0=model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.1/attention/self/value_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Mmodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.1/attention/self/value_proj/addAddV2?model/encoder/layer.1/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_2Reshape7model/encoder/layer.1/attention/self/value_proj/add:z:0=model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_1	Transpose7model/encoder/layer.1/attention/self/Reshape_2:output:0>model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_3Reshape4model/encoder/layer.1/attention/self/transpose_1:y:0=model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.1/attention/self/query_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Mmodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.1/attention/self/query_proj/addAddV2?model/encoder/layer.1/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_4Reshape7model/encoder/layer.1/attention/self/query_proj/add:z:0=model/encoder/layer.1/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_2	Transpose7model/encoder/layer.1/attention/self/Reshape_4:output:0>model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_5Reshape4model/encoder/layer.1/attention/self/transpose_2:y:0=model/encoder/layer.1/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.1/attention/self/transpose_3	Transpose7model/encoder/layer.1/attention/self/Reshape_1:output:0>model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.1/attention/self/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_5:output:04model/encoder/layer.1/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.1/attention/self/truedivRealDiv4model/encoder/layer.1/attention/self/MatMul:output:07model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.1/attention/self/ShapeShape0model/encoder/layer.1/attention/self/truediv:z:0*
T0*
_output_shapes
:�
8model/encoder/layer.1/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
:model/encoder/layer.1/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
:model/encoder/layer.1/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model/encoder/layer.1/attention/self/strided_sliceStridedSlice3model/encoder/layer.1/attention/self/Shape:output:0Amodel/encoder/layer.1/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.1/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.1/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.1/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.1/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.1/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.1/attention/self/Reshape_6/shapePack?model/encoder/layer.1/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.1/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.1/attention/self/Reshape_6/shape/2:output:0;model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.1/attention/self/Reshape_6Reshape0model/encoder/layer.1/attention/self/truediv:z:0=model/encoder/layer.1/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.1/attention/self/softmax_16/SoftmaxSoftmax7model/encoder/layer.1/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.1/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.1/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.1/attention/self/Reshape_7/shapePack?model/encoder/layer.1/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.1/attention/self/Reshape_7/shape/1:output:0;model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.1/attention/self/Reshape_7ReshapeAmodel/encoder/layer.1/attention/self/softmax_16/Softmax:softmax:0=model/encoder/layer.1/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.1/attention/self/Reshape_7:output:07model/encoder/layer.1/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.1/attention/self/Reshape_8Reshape6model/encoder/layer.1/attention/self/MatMul_1:output:0=model/encoder/layer.1/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_4	Transpose7model/encoder/layer.1/attention/self/Reshape_8:output:0>model/encoder/layer.1/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.1/attention/self/Reshape_9Reshape4model/encoder/layer.1/attention/self/transpose_4:y:0=model/encoder/layer.1/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_9:output:0Jmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-86186*D
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
 *���3�
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
.__inference__jit_compiled_convolution_op_85751�
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
Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.2/attention/self/key_proj/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Kmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.2/attention/self/key_proj/addAddV2=model/encoder/layer.2/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.2/attention/self/ReshapeReshape5model/encoder/layer.2/attention/self/key_proj/add:z:0;model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.2/attention/self/transpose	Transpose5model/encoder/layer.2/attention/self/Reshape:output:0<model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_1Reshape2model/encoder/layer.2/attention/self/transpose:y:0=model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.2/attention/self/value_proj/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Mmodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.2/attention/self/value_proj/addAddV2?model/encoder/layer.2/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_2Reshape7model/encoder/layer.2/attention/self/value_proj/add:z:0=model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_1	Transpose7model/encoder/layer.2/attention/self/Reshape_2:output:0>model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_3Reshape4model/encoder/layer.2/attention/self/transpose_1:y:0=model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
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
Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.2/attention/self/query_proj/MatMulBatchMatMulV2;model/encoder/layer.2/attention/self/strided_slice:output:0Mmodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.2/attention/self/query_proj/addAddV2?model/encoder/layer.2/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_4Reshape7model/encoder/layer.2/attention/self/query_proj/add:z:0=model/encoder/layer.2/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_2	Transpose7model/encoder/layer.2/attention/self/Reshape_4:output:0>model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_5Reshape4model/encoder/layer.2/attention/self/transpose_2:y:0=model/encoder/layer.2/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.2/attention/self/transpose_3	Transpose7model/encoder/layer.2/attention/self/Reshape_1:output:0>model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.2/attention/self/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_5:output:04model/encoder/layer.2/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.2/attention/self/truedivRealDiv4model/encoder/layer.2/attention/self/MatMul:output:07model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.2/attention/self/ShapeShape0model/encoder/layer.2/attention/self/truediv:z:0*
T0*
_output_shapes
:�
:model/encoder/layer.2/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
<model/encoder/layer.2/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
<model/encoder/layer.2/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4model/encoder/layer.2/attention/self/strided_slice_1StridedSlice3model/encoder/layer.2/attention/self/Shape:output:0Cmodel/encoder/layer.2/attention/self/strided_slice_1/stack:output:0Emodel/encoder/layer.2/attention/self/strided_slice_1/stack_1:output:0Emodel/encoder/layer.2/attention/self/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.2/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.2/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.2/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.2/attention/self/Reshape_6/shapePack?model/encoder/layer.2/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.2/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.2/attention/self/Reshape_6/shape/2:output:0=model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.2/attention/self/Reshape_6Reshape0model/encoder/layer.2/attention/self/truediv:z:0=model/encoder/layer.2/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.2/attention/self/softmax_17/SoftmaxSoftmax7model/encoder/layer.2/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.2/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.2/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.2/attention/self/Reshape_7/shapePack?model/encoder/layer.2/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.2/attention/self/Reshape_7/shape/1:output:0=model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.2/attention/self/Reshape_7ReshapeAmodel/encoder/layer.2/attention/self/softmax_17/Softmax:softmax:0=model/encoder/layer.2/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.2/attention/self/Reshape_7:output:07model/encoder/layer.2/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.2/attention/self/Reshape_8Reshape6model/encoder/layer.2/attention/self/MatMul_1:output:0=model/encoder/layer.2/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_4	Transpose7model/encoder/layer.2/attention/self/Reshape_8:output:0>model/encoder/layer.2/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.2/attention/self/Reshape_9Reshape4model/encoder/layer.2/attention/self/transpose_4:y:0=model/encoder/layer.2/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_9:output:0Jmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-86328*D
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
 *���3�
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
NoOpNoOp^concat/ReadVariableOp^emb/MatMul/ReadVariableOp^fc.1/MatMul/ReadVariableOp^fc.1/add/ReadVariableOp4^model/embeddings/LayerNorm/batchnorm/ReadVariableOp8^model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp6^model/embeddings/position_embeddings/embedding_lookupJ^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.0/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp?^model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.0/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.0/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.0/output/dense/add/ReadVariableOpJ^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.1/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp6^model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.1/cpe_conv/ReadVariableOp?^model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.1/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.1/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.1/output/dense/add/ReadVariableOpJ^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.2/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp6^model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.2/cpe_conv/ReadVariableOp?^model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.2/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.2/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2.
concat/ReadVariableOpconcat/ReadVariableOp26
emb/MatMul/ReadVariableOpemb/MatMul/ReadVariableOp28
fc.1/MatMul/ReadVariableOpfc.1/MatMul/ReadVariableOp22
fc.1/add/ReadVariableOpfc.1/add/ReadVariableOp2j
3model/embeddings/LayerNorm/batchnorm/ReadVariableOp3model/embeddings/LayerNorm/batchnorm/ReadVariableOp2r
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2n
5model/embeddings/position_embeddings/embedding_lookup5model/embeddings/position_embeddings/embedding_lookup2�
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp2�
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
Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp2n
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
Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp2n
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
:a
� 
�
D__inference_debertaf0_layer_call_and_return_conditional_losses_86500

inputs
model_86372:
��"
model_86374:�
model_86376
model_86378:	a�
model_86380:	�
model_86382:	�
model_86384:
��
model_86386:	�
model_86388:
��
model_86390:	�
model_86392:
��
model_86394:	�
model_86396:
��
model_86398:	�
model_86400:	�
model_86402:	�
model_86404:
��
model_86406:	�
model_86408:
��
model_86410:	�
model_86412:	�
model_86414:	�"
model_86416:�
model_86418:	�
model_86420:
��
model_86422:	�
model_86424:
��
model_86426:	�
model_86428:
��
model_86430:	�
model_86432:
��
model_86434:	�
model_86436:	�
model_86438:	�
model_86440:
��
model_86442:	�
model_86444:
��
model_86446:	�
model_86448:	�
model_86450:	�"
model_86452:�
model_86454:	�
model_86456:
��
model_86458:	�
model_86460:
��
model_86462:	�
model_86464:
��
model_86466:	�
model_86468:
��
model_86470:	�
model_86472:	�
model_86474:	�
model_86476:
��
model_86478:	�
model_86480:
��
model_86482:	�
model_86484:	�
model_86486:	�
model_86488:
��
model_86490:	�
identity��model/StatefulPartitionedCall�	
model/StatefulPartitionedCallStatefulPartitionedCallinputsmodel_86372model_86374model_86376model_86378model_86380model_86382model_86384model_86386model_86388model_86390model_86392model_86394model_86396model_86398model_86400model_86402model_86404model_86406model_86408model_86410model_86412model_86414model_86416model_86418model_86420model_86422model_86424model_86426model_86428model_86430model_86432model_86434model_86436model_86438model_86440model_86442model_86444model_86446model_86448model_86450model_86452model_86454model_86456model_86458model_86460model_86462model_86464model_86466model_86468model_86470model_86472model_86474model_86476model_86478model_86480model_86482model_86484model_86486model_86488model_86490*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_86371�
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
B__inference_outputs_layer_call_and_return_conditional_losses_86497g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2>
model/StatefulPartitionedCallmodel/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�
Y
B__inference_outputs_layer_call_and_return_conditional_losses_88230
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
�
�
"__inference_internal_grad_fn_88500
result_grads_0
result_grads_1?
;mul_debertaf0_model_model_encoder_layer_0_intermediate_betaD
@mul_debertaf0_model_model_encoder_layer_0_intermediate_dense_add
identity�
mulMul;mul_debertaf0_model_model_encoder_layer_0_intermediate_beta@mul_debertaf0_model_model_encoder_layer_0_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul;mul_debertaf0_model_model_encoder_layer_0_intermediate_beta@mul_debertaf0_model_model_encoder_layer_0_intermediate_dense_add*
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
"__inference_internal_grad_fn_88392
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
�
�
"__inference_internal_grad_fn_88518
result_grads_0
result_grads_1?
;mul_debertaf0_model_model_encoder_layer_1_intermediate_betaD
@mul_debertaf0_model_model_encoder_layer_1_intermediate_dense_add
identity�
mulMul;mul_debertaf0_model_model_encoder_layer_1_intermediate_beta@mul_debertaf0_model_model_encoder_layer_1_intermediate_dense_add^result_grads_0*
T0*,
_output_shapes
:����������R
SigmoidSigmoidmul:z:0*
T0*,
_output_shapes
:�����������
mul_1Mul;mul_debertaf0_model_model_encoder_layer_1_intermediate_beta@mul_debertaf0_model_model_encoder_layer_1_intermediate_dense_add*
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
�
)__inference_debertaf0_layer_call_fn_87256

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�!

unknown_21:�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�!

unknown_39:�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:
��

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:	�

unknown_56:	�

unknown_57:
��

unknown_58:	�
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
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_debertaf0_layer_call_and_return_conditional_losses_87008g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�
�
#__inference_signature_wrapper_87635

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�!

unknown_21:�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�!

unknown_39:�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:
��

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:	�

unknown_56:	�

unknown_57:
��

unknown_58:	�
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
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *)
f$R"
 __inference__wrapped_model_85903g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
�
�
"__inference_internal_grad_fn_88464
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

V
.__inference__jit_compiled_convolution_op_85751

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
�
)__inference_debertaf0_layer_call_fn_86623

inputs
unknown:
�� 
	unknown_0:�
	unknown_1
	unknown_2:	a�
	unknown_3:	�
	unknown_4:	�
	unknown_5:
��
	unknown_6:	�
	unknown_7:
��
	unknown_8:	�
	unknown_9:
��

unknown_10:	�

unknown_11:
��

unknown_12:	�

unknown_13:	�

unknown_14:	�

unknown_15:
��

unknown_16:	�

unknown_17:
��

unknown_18:	�

unknown_19:	�

unknown_20:	�!

unknown_21:�

unknown_22:	�

unknown_23:
��

unknown_24:	�

unknown_25:
��

unknown_26:	�

unknown_27:
��

unknown_28:	�

unknown_29:
��

unknown_30:	�

unknown_31:	�

unknown_32:	�

unknown_33:
��

unknown_34:	�

unknown_35:
��

unknown_36:	�

unknown_37:	�

unknown_38:	�!

unknown_39:�

unknown_40:	�

unknown_41:
��

unknown_42:	�

unknown_43:
��

unknown_44:	�

unknown_45:
��

unknown_46:	�

unknown_47:
��

unknown_48:	�

unknown_49:	�

unknown_50:	�

unknown_51:
��

unknown_52:	�

unknown_53:
��

unknown_54:	�

unknown_55:	�

unknown_56:	�

unknown_57:
��

unknown_58:	�
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
unknown_58*H
TinA
?2=*
Tout
2*
_collective_manager_ids
 *
_output_shapes
:	�*]
_read_only_resource_inputs?
=;	
 !"#$%&'()*+,-./0123456789:;<*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_debertaf0_layer_call_and_return_conditional_losses_86500g
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
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs: 

_output_shapes
:a
��
�G
@__inference_model_layer_call_and_return_conditional_losses_88221
inputs_embeds6
"emb_matmul_readvariableop_resource:
��5
concat_readvariableop_resource:�
model_embeddings_87775N
;model_embeddings_position_embeddings_embedding_lookup_87783:	a�O
@model_embeddings_layernorm_batchnorm_mul_readvariableop_resource:	�K
<model_embeddings_layernorm_batchnorm_readvariableop_resource:	�`
Lmodel_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource:	�_
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
>model_encoder_layer_1_cpe_conv_biasadd_readvariableop_resource:	�`
Lmodel_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource:	�_
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
>model_encoder_layer_2_cpe_conv_biasadd_readvariableop_resource:	�`
Lmodel_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource:
��X
Imodel_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource:	�b
Nmodel_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource:
��Z
Kmodel_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource:	�_
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
identity��concat/ReadVariableOp�emb/MatMul/ReadVariableOp�fc.1/MatMul/ReadVariableOp�fc.1/add/ReadVariableOp�3model/embeddings/LayerNorm/batchnorm/ReadVariableOp�7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp�5model/embeddings/position_embeddings/embedding_lookup�Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp�>model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.0/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.0/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.0/output/dense/add/ReadVariableOp�Imodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.1/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp�5model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.1/cpe_conv/ReadVariableOp�>model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.1/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.1/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.1/output/dense/add/ReadVariableOp�Imodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOp�Mmodel/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp�Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp�?model/encoder/layer.2/attention/output/dense/add/ReadVariableOp�Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp�@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp�Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp�Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp�Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp�5model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp�-model/encoder/layer.2/cpe_conv/ReadVariableOp�>model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp�;model/encoder/layer.2/intermediate/dense/add/ReadVariableOp�?model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOp�Cmodel/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp�8model/encoder/layer.2/output/dense/MatMul/ReadVariableOp�5model/encoder/layer.2/output/dense/add/ReadVariableOp~
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
 model/embeddings/strided_slice_1StridedSlicemodel_embeddings_87775/model/embeddings/strided_slice_1/stack:output:01model/embeddings/strided_slice_1/stack_1:output:01model/embeddings/strided_slice_1/stack_2:output:0*
Index0*
T0*#
_output_shapes
:���������*

begin_mask�
5model/embeddings/position_embeddings/embedding_lookupResourceGather;model_embeddings_position_embeddings_embedding_lookup_87783)model/embeddings/strided_slice_1:output:0*
Tindices0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/87783*(
_output_shapes
:����������*
dtype0�
>model/embeddings/position_embeddings/embedding_lookup/IdentityIdentity>model/embeddings/position_embeddings/embedding_lookup:output:0*
T0*N
_classD
B@loc:@model/embeddings/position_embeddings/embedding_lookup/87783*(
_output_shapes
:�����������
@model/embeddings/position_embeddings/embedding_lookup/Identity_1IdentityGmodel/embeddings/position_embeddings/embedding_lookup/Identity:output:0*
T0*(
_output_shapes
:�����������
model/embeddings/addAddV2concat:output:0Imodel/embeddings/position_embeddings/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:�����������
9model/embeddings/LayerNorm/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:�
'model/embeddings/LayerNorm/moments/meanMeanmodel/embeddings/add:z:0Bmodel/embeddings/LayerNorm/moments/mean/reduction_indices:output:0*
T0*+
_output_shapes
:���������*
	keep_dims(�
/model/embeddings/LayerNorm/moments/StopGradientStopGradient0model/embeddings/LayerNorm/moments/mean:output:0*
T0*+
_output_shapes
:����������
4model/embeddings/LayerNorm/moments/SquaredDifferenceSquaredDifferencemodel/embeddings/add:z:08model/embeddings/LayerNorm/moments/StopGradient:output:0*
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
 *���3�
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
*model/embeddings/LayerNorm/batchnorm/mul_1Mulmodel/embeddings/add:z:0,model/embeddings/LayerNorm/batchnorm/mul:z:0*
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
Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_0_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.0/attention/self/key_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Kmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_0_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.0/attention/self/key_proj/addAddV2=model/encoder/layer.0/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.0/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.0/attention/self/ReshapeReshape5model/encoder/layer.0/attention/self/key_proj/add:z:0;model/encoder/layer.0/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.0/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.0/attention/self/transpose	Transpose5model/encoder/layer.0/attention/self/Reshape:output:0<model/encoder/layer.0/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_1Reshape2model/encoder/layer.0/attention/self/transpose:y:0=model/encoder/layer.0/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_0_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.0/attention/self/value_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Mmodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.0/attention/self/value_proj/addAddV2?model/encoder/layer.0/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_2Reshape7model/encoder/layer.0/attention/self/value_proj/add:z:0=model/encoder/layer.0/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_1	Transpose7model/encoder/layer.0/attention/self/Reshape_2:output:0>model/encoder/layer.0/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_3Reshape4model/encoder/layer.0/attention/self/transpose_1:y:0=model/encoder/layer.0/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_0_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.0/attention/self/query_proj/MatMulBatchMatMulV2.model/embeddings/LayerNorm/batchnorm/add_1:z:0Mmodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.0/attention/self/query_proj/addAddV2?model/encoder/layer.0/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.0/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.0/attention/self/Reshape_4Reshape7model/encoder/layer.0/attention/self/query_proj/add:z:0=model/encoder/layer.0/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_2	Transpose7model/encoder/layer.0/attention/self/Reshape_4:output:0>model/encoder/layer.0/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.0/attention/self/Reshape_5Reshape4model/encoder/layer.0/attention/self/transpose_2:y:0=model/encoder/layer.0/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.0/attention/self/transpose_3	Transpose7model/encoder/layer.0/attention/self/Reshape_1:output:0>model/encoder/layer.0/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.0/attention/self/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_5:output:04model/encoder/layer.0/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.0/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.0/attention/self/truedivRealDiv4model/encoder/layer.0/attention/self/MatMul:output:07model/encoder/layer.0/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.0/attention/self/ShapeShape0model/encoder/layer.0/attention/self/truediv:z:0*
T0*
_output_shapes
:�
8model/encoder/layer.0/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
:model/encoder/layer.0/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
:model/encoder/layer.0/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model/encoder/layer.0/attention/self/strided_sliceStridedSlice3model/encoder/layer.0/attention/self/Shape:output:0Amodel/encoder/layer.0/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.0/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.0/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.0/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.0/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.0/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.0/attention/self/Reshape_6/shapePack?model/encoder/layer.0/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.0/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.0/attention/self/Reshape_6/shape/2:output:0;model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.0/attention/self/Reshape_6Reshape0model/encoder/layer.0/attention/self/truediv:z:0=model/encoder/layer.0/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.0/attention/self/softmax_15/SoftmaxSoftmax7model/encoder/layer.0/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.0/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.0/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.0/attention/self/Reshape_7/shapePack?model/encoder/layer.0/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.0/attention/self/Reshape_7/shape/1:output:0;model/encoder/layer.0/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.0/attention/self/Reshape_7ReshapeAmodel/encoder/layer.0/attention/self/softmax_15/Softmax:softmax:0=model/encoder/layer.0/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.0/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.0/attention/self/Reshape_7:output:07model/encoder/layer.0/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.0/attention/self/Reshape_8Reshape6model/encoder/layer.0/attention/self/MatMul_1:output:0=model/encoder/layer.0/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.0/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.0/attention/self/transpose_4	Transpose7model/encoder/layer.0/attention/self/Reshape_8:output:0>model/encoder/layer.0/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.0/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.0/attention/self/Reshape_9Reshape4model/encoder/layer.0/attention/self/transpose_4:y:0=model/encoder/layer.0/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_0_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.0/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.0/attention/self/Reshape_9:output:0Jmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-87902*D
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
 *���3�
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
.__inference__jit_compiled_convolution_op_85606�
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
Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_1_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.1/attention/self/key_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Kmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_1_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.1/attention/self/key_proj/addAddV2=model/encoder/layer.1/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.1/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.1/attention/self/ReshapeReshape5model/encoder/layer.1/attention/self/key_proj/add:z:0;model/encoder/layer.1/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.1/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.1/attention/self/transpose	Transpose5model/encoder/layer.1/attention/self/Reshape:output:0<model/encoder/layer.1/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_1Reshape2model/encoder/layer.1/attention/self/transpose:y:0=model/encoder/layer.1/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_1_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.1/attention/self/value_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Mmodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.1/attention/self/value_proj/addAddV2?model/encoder/layer.1/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_2Reshape7model/encoder/layer.1/attention/self/value_proj/add:z:0=model/encoder/layer.1/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_1	Transpose7model/encoder/layer.1/attention/self/Reshape_2:output:0>model/encoder/layer.1/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_3Reshape4model/encoder/layer.1/attention/self/transpose_1:y:0=model/encoder/layer.1/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_1_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.1/attention/self/query_proj/MatMulBatchMatMulV2model/encoder/layer.1/add:z:0Mmodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.1/attention/self/query_proj/addAddV2?model/encoder/layer.1/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.1/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.1/attention/self/Reshape_4Reshape7model/encoder/layer.1/attention/self/query_proj/add:z:0=model/encoder/layer.1/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_2	Transpose7model/encoder/layer.1/attention/self/Reshape_4:output:0>model/encoder/layer.1/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.1/attention/self/Reshape_5Reshape4model/encoder/layer.1/attention/self/transpose_2:y:0=model/encoder/layer.1/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.1/attention/self/transpose_3	Transpose7model/encoder/layer.1/attention/self/Reshape_1:output:0>model/encoder/layer.1/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.1/attention/self/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_5:output:04model/encoder/layer.1/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.1/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.1/attention/self/truedivRealDiv4model/encoder/layer.1/attention/self/MatMul:output:07model/encoder/layer.1/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.1/attention/self/ShapeShape0model/encoder/layer.1/attention/self/truediv:z:0*
T0*
_output_shapes
:�
8model/encoder/layer.1/attention/self/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
:model/encoder/layer.1/attention/self/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
:model/encoder/layer.1/attention/self/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
2model/encoder/layer.1/attention/self/strided_sliceStridedSlice3model/encoder/layer.1/attention/self/Shape:output:0Amodel/encoder/layer.1/attention/self/strided_slice/stack:output:0Cmodel/encoder/layer.1/attention/self/strided_slice/stack_1:output:0Cmodel/encoder/layer.1/attention/self/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.1/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.1/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.1/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.1/attention/self/Reshape_6/shapePack?model/encoder/layer.1/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.1/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.1/attention/self/Reshape_6/shape/2:output:0;model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.1/attention/self/Reshape_6Reshape0model/encoder/layer.1/attention/self/truediv:z:0=model/encoder/layer.1/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.1/attention/self/softmax_16/SoftmaxSoftmax7model/encoder/layer.1/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.1/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.1/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.1/attention/self/Reshape_7/shapePack?model/encoder/layer.1/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.1/attention/self/Reshape_7/shape/1:output:0;model/encoder/layer.1/attention/self/strided_slice:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.1/attention/self/Reshape_7ReshapeAmodel/encoder/layer.1/attention/self/softmax_16/Softmax:softmax:0=model/encoder/layer.1/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.1/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.1/attention/self/Reshape_7:output:07model/encoder/layer.1/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.1/attention/self/Reshape_8Reshape6model/encoder/layer.1/attention/self/MatMul_1:output:0=model/encoder/layer.1/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.1/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.1/attention/self/transpose_4	Transpose7model/encoder/layer.1/attention/self/Reshape_8:output:0>model/encoder/layer.1/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.1/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.1/attention/self/Reshape_9Reshape4model/encoder/layer.1/attention/self/transpose_4:y:0=model/encoder/layer.1/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_1_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.1/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.1/attention/self/Reshape_9:output:0Jmodel/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-88036*D
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
 *���3�
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
.__inference__jit_compiled_convolution_op_85751�
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
Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpReadVariableOpLmodel_encoder_layer_2_attention_self_key_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
4model/encoder/layer.2/attention/self/key_proj/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Kmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpReadVariableOpImodel_encoder_layer_2_attention_self_key_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
1model/encoder/layer.2/attention/self/key_proj/addAddV2=model/encoder/layer.2/attention/self/key_proj/MatMul:output:0Hmodel/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
2model/encoder/layer.2/attention/self/Reshape/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
,model/encoder/layer.2/attention/self/ReshapeReshape5model/encoder/layer.2/attention/self/key_proj/add:z:0;model/encoder/layer.2/attention/self/Reshape/shape:output:0*
T0*/
_output_shapes
:���������@�
3model/encoder/layer.2/attention/self/transpose/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
.model/encoder/layer.2/attention/self/transpose	Transpose5model/encoder/layer.2/attention/self/Reshape:output:0<model/encoder/layer.2/attention/self/transpose/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_1Reshape2model/encoder/layer.2/attention/self/transpose:y:0=model/encoder/layer.2/attention/self/Reshape_1/shape:output:0*
T0*+
_output_shapes
:���������@�
Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_2_attention_self_value_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.2/attention/self/value_proj/MatMulBatchMatMulV2model/encoder/layer.2/add:z:0Mmodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_self_value_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.2/attention/self/value_proj/addAddV2?model/encoder/layer.2/attention/self/value_proj/MatMul:output:0Jmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_2Reshape7model/encoder/layer.2/attention/self/value_proj/add:z:0=model/encoder/layer.2/attention/self/Reshape_2/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_1/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_1	Transpose7model/encoder/layer.2/attention/self/Reshape_2:output:0>model/encoder/layer.2/attention/self/transpose_1/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_3Reshape4model/encoder/layer.2/attention/self/transpose_1:y:0=model/encoder/layer.2/attention/self/Reshape_3/shape:output:0*
T0*+
_output_shapes
:���������@�
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
Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpReadVariableOpNmodel_encoder_layer_2_attention_self_query_proj_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
6model/encoder/layer.2/attention/self/query_proj/MatMulBatchMatMulV2;model/encoder/layer.2/attention/self/strided_slice:output:0Mmodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_self_query_proj_add_readvariableop_resource*
_output_shapes	
:�*
dtype0�
3model/encoder/layer.2/attention/self/query_proj/addAddV2?model/encoder/layer.2/attention/self/query_proj/MatMul:output:0Jmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:�����������
4model/encoder/layer.2/attention/self/Reshape_4/shapeConst*
_output_shapes
:*
dtype0*%
valueB"   ����   @   �
.model/encoder/layer.2/attention/self/Reshape_4Reshape7model/encoder/layer.2/attention/self/query_proj/add:z:0=model/encoder/layer.2/attention/self/Reshape_4/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_2/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_2	Transpose7model/encoder/layer.2/attention/self/Reshape_4:output:0>model/encoder/layer.2/attention/self/transpose_2/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_5/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����@   �
.model/encoder/layer.2/attention/self/Reshape_5Reshape4model/encoder/layer.2/attention/self/transpose_2:y:0=model/encoder/layer.2/attention/self/Reshape_5/shape:output:0*
T0*+
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_3/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
0model/encoder/layer.2/attention/self/transpose_3	Transpose7model/encoder/layer.2/attention/self/Reshape_1:output:0>model/encoder/layer.2/attention/self/transpose_3/perm:output:0*
T0*+
_output_shapes
:@����������
+model/encoder/layer.2/attention/self/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_5:output:04model/encoder/layer.2/attention/self/transpose_3:y:0*
T0*4
_output_shapes"
 :������������������s
.model/encoder/layer.2/attention/self/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   A�
,model/encoder/layer.2/attention/self/truedivRealDiv4model/encoder/layer.2/attention/self/MatMul:output:07model/encoder/layer.2/attention/self/truediv/y:output:0*
T0*4
_output_shapes"
 :�������������������
*model/encoder/layer.2/attention/self/ShapeShape0model/encoder/layer.2/attention/self/truediv:z:0*
T0*
_output_shapes
:�
:model/encoder/layer.2/attention/self/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
<model/encoder/layer.2/attention/self/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
<model/encoder/layer.2/attention/self/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
4model/encoder/layer.2/attention/self/strided_slice_1StridedSlice3model/encoder/layer.2/attention/self/Shape:output:0Cmodel/encoder/layer.2/attention/self/strided_slice_1/stack:output:0Emodel/encoder/layer.2/attention/self/strided_slice_1/stack_1:output:0Emodel/encoder/layer.2/attention/self/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6model/encoder/layer.2/attention/self/Reshape_6/shape/0Const*
_output_shapes
: *
dtype0*
value	B :x
6model/encoder/layer.2/attention/self/Reshape_6/shape/1Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.2/attention/self/Reshape_6/shape/2Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.2/attention/self/Reshape_6/shapePack?model/encoder/layer.2/attention/self/Reshape_6/shape/0:output:0?model/encoder/layer.2/attention/self/Reshape_6/shape/1:output:0?model/encoder/layer.2/attention/self/Reshape_6/shape/2:output:0=model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.2/attention/self/Reshape_6Reshape0model/encoder/layer.2/attention/self/truediv:z:0=model/encoder/layer.2/attention/self/Reshape_6/shape:output:0*
T0*8
_output_shapes&
$:"�������������������
7model/encoder/layer.2/attention/self/softmax_17/SoftmaxSoftmax7model/encoder/layer.2/attention/self/Reshape_6:output:0*
T0*8
_output_shapes&
$:"������������������x
6model/encoder/layer.2/attention/self/Reshape_7/shape/0Const*
_output_shapes
: *
dtype0*
value	B :�
6model/encoder/layer.2/attention/self/Reshape_7/shape/1Const*
_output_shapes
: *
dtype0*
valueB :
����������
4model/encoder/layer.2/attention/self/Reshape_7/shapePack?model/encoder/layer.2/attention/self/Reshape_7/shape/0:output:0?model/encoder/layer.2/attention/self/Reshape_7/shape/1:output:0=model/encoder/layer.2/attention/self/strided_slice_1:output:0*
N*
T0*
_output_shapes
:�
.model/encoder/layer.2/attention/self/Reshape_7ReshapeAmodel/encoder/layer.2/attention/self/softmax_17/Softmax:softmax:0=model/encoder/layer.2/attention/self/Reshape_7/shape:output:0*
T0*4
_output_shapes"
 :�������������������
-model/encoder/layer.2/attention/self/MatMul_1BatchMatMulV27model/encoder/layer.2/attention/self/Reshape_7:output:07model/encoder/layer.2/attention/self/Reshape_3:output:0*
T0*+
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_8/shapeConst*
_output_shapes
:*
dtype0*%
valueB"      ����@   �
.model/encoder/layer.2/attention/self/Reshape_8Reshape6model/encoder/layer.2/attention/self/MatMul_1:output:0=model/encoder/layer.2/attention/self/Reshape_8/shape:output:0*
T0*/
_output_shapes
:���������@�
5model/encoder/layer.2/attention/self/transpose_4/permConst*
_output_shapes
:*
dtype0*%
valueB"             �
0model/encoder/layer.2/attention/self/transpose_4	Transpose7model/encoder/layer.2/attention/self/Reshape_8:output:0>model/encoder/layer.2/attention/self/transpose_4/perm:output:0*
T0*/
_output_shapes
:���������@�
4model/encoder/layer.2/attention/self/Reshape_9/shapeConst*
_output_shapes
:*
dtype0*!
valueB"   ����   �
.model/encoder/layer.2/attention/self/Reshape_9Reshape4model/encoder/layer.2/attention/self/transpose_4:y:0=model/encoder/layer.2/attention/self/Reshape_9/shape:output:0*
T0*,
_output_shapes
:�����������
Bmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOpReadVariableOpKmodel_encoder_layer_2_attention_output_dense_matmul_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
3model/encoder/layer.2/attention/output/dense/MatMulBatchMatMulV27model/encoder/layer.2/attention/self/Reshape_9:output:0Jmodel/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp:value:0*
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
 *���3�
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
_gradient_op_typeCustomGradient-88178*D
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
 *���3�
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
NoOpNoOp^concat/ReadVariableOp^emb/MatMul/ReadVariableOp^fc.1/MatMul/ReadVariableOp^fc.1/add/ReadVariableOp4^model/embeddings/LayerNorm/batchnorm/ReadVariableOp8^model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp6^model/embeddings/position_embeddings/embedding_lookupJ^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.0/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp?^model/encoder/layer.0/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.0/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.0/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.0/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.0/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.0/output/dense/add/ReadVariableOpJ^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.1/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.1/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.1/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp6^model/encoder/layer.1/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.1/cpe_conv/ReadVariableOp?^model/encoder/layer.1/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.1/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.1/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.1/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.1/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.1/output/dense/add/ReadVariableOpJ^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/ReadVariableOpN^model/encoder/layer.2/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpC^model/encoder/layer.2/attention/output/dense/MatMul/ReadVariableOp@^model/encoder/layer.2/attention/output/dense/add/ReadVariableOpD^model/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpA^model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOpF^model/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpC^model/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpF^model/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpC^model/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp6^model/encoder/layer.2/cpe_conv/BiasAdd/ReadVariableOp.^model/encoder/layer.2/cpe_conv/ReadVariableOp?^model/encoder/layer.2/intermediate/dense/MatMul/ReadVariableOp<^model/encoder/layer.2/intermediate/dense/add/ReadVariableOp@^model/encoder/layer.2/output/LayerNorm/batchnorm/ReadVariableOpD^model/encoder/layer.2/output/LayerNorm/batchnorm/mul/ReadVariableOp9^model/encoder/layer.2/output/dense/MatMul/ReadVariableOp6^model/encoder/layer.2/output/dense/add/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*�
_input_shapes�
�:����������: : :a: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2.
concat/ReadVariableOpconcat/ReadVariableOp26
emb/MatMul/ReadVariableOpemb/MatMul/ReadVariableOp28
fc.1/MatMul/ReadVariableOpfc.1/MatMul/ReadVariableOp22
fc.1/add/ReadVariableOpfc.1/add/ReadVariableOp2j
3model/embeddings/LayerNorm/batchnorm/ReadVariableOp3model/embeddings/LayerNorm/batchnorm/ReadVariableOp2r
7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp7model/embeddings/LayerNorm/batchnorm/mul/ReadVariableOp2n
5model/embeddings/position_embeddings/embedding_lookup5model/embeddings/position_embeddings/embedding_lookup2�
Imodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOpImodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/ReadVariableOp2�
Mmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOpMmodel/encoder/layer.0/attention/output/LayerNorm/batchnorm/mul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOpBmodel/encoder/layer.0/attention/output/dense/MatMul/ReadVariableOp2�
?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp?model/encoder/layer.0/attention/output/dense/add/ReadVariableOp2�
Cmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.0/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.0/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.0/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.0/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.0/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.0/attention/self/value_proj/add/ReadVariableOp2�
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
Cmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.1/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.1/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.1/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.1/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.1/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.1/attention/self/value_proj/add/ReadVariableOp2n
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
Cmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOpCmodel/encoder/layer.2/attention/self/key_proj/MatMul/ReadVariableOp2�
@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp@model/encoder/layer.2/attention/self/key_proj/add/ReadVariableOp2�
Emodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOpEmodel/encoder/layer.2/attention/self/query_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOpBmodel/encoder/layer.2/attention/self/query_proj/add/ReadVariableOp2�
Emodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOpEmodel/encoder/layer.2/attention/self/value_proj/MatMul/ReadVariableOp2�
Bmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOpBmodel/encoder/layer.2/attention/self/value_proj/add/ReadVariableOp2n
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
:a:
"__inference_internal_grad_fn_88392CustomGradient-87902:
"__inference_internal_grad_fn_88410CustomGradient-88036:
"__inference_internal_grad_fn_88428CustomGradient-88178:
"__inference_internal_grad_fn_88446CustomGradient-86052:
"__inference_internal_grad_fn_88464CustomGradient-86186:
"__inference_internal_grad_fn_88482CustomGradient-86328:
"__inference_internal_grad_fn_88500CustomGradient-85562:
"__inference_internal_grad_fn_88518CustomGradient-85707:
"__inference_internal_grad_fn_88536CustomGradient-85860"�
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
StatefulPartitionedCall:0	�tensorflow/serving/predict:ͧ
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
V58"
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
V58"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Wnon_trainable_variables

Xlayers
Ymetrics
Zlayer_regularization_losses
[layer_metrics
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
\trace_0
]trace_12�
)__inference_debertaf0_layer_call_fn_86623
)__inference_debertaf0_layer_call_fn_87256�
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
 z\trace_0z]trace_1
�
^trace_0
_trace_12�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87382
D__inference_debertaf0_layer_call_and_return_conditional_losses_87508�
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
 z^trace_0z_trace_1
�
`	capture_2B�
 __inference__wrapped_model_85903inputs"�
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
 z`	capture_2
,
aserving_default"
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
V58"
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
V58"
trackable_list_wrapper
 "
trackable_list_wrapper
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
gtrace_02�
%__inference_model_layer_call_fn_87760�
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
 zgtrace_0
�
htrace_02�
@__inference_model_layer_call_and_return_conditional_losses_88221�
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
 zhtrace_0
�
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

kernel

weight"
_tf_keras_layer
$:"�2model/cls_emb
�
o	variables
ptrainable_variables
qregularization_losses
r	keras_api
s__call__
*t&call_and_return_all_conditional_losses
u
embeddings
vencoder"
_tf_keras_layer
�
w	variables
xtrainable_variables
yregularization_losses
z	keras_api
{__call__
*|&call_and_return_all_conditional_losses

Ukernel

Uweight
Vbias"
_tf_keras_layer
(
}	keras_api"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
~non_trainable_variables

layers
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
'__inference_outputs_layer_call_fn_88226�
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
B__inference_outputs_layer_call_and_return_conditional_losses_88230�
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
5:3�2&model/model/embeddings/LayerNorm/gamma
4:2�2%model/model/embeddings/LayerNorm/beta
P:N
��2<model/model/encoder/layer.0/attention/self/query_proj/kernel
I:G�2:model/model/encoder/layer.0/attention/self/query_proj/bias
N:L
��2:model/model/encoder/layer.0/attention/self/key_proj/kernel
G:E�28model/model/encoder/layer.0/attention/self/key_proj/bias
P:N
��2<model/model/encoder/layer.0/attention/self/value_proj/kernel
I:G�2:model/model/encoder/layer.0/attention/self/value_proj/bias
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
P:N
��2<model/model/encoder/layer.1/attention/self/query_proj/kernel
I:G�2:model/model/encoder/layer.1/attention/self/query_proj/bias
N:L
��2:model/model/encoder/layer.1/attention/self/key_proj/kernel
G:E�28model/model/encoder/layer.1/attention/self/key_proj/bias
P:N
��2<model/model/encoder/layer.1/attention/self/value_proj/kernel
I:G�2:model/model/encoder/layer.1/attention/self/value_proj/bias
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
P:N
��2<model/model/encoder/layer.2/attention/self/query_proj/kernel
I:G�2:model/model/encoder/layer.2/attention/self/query_proj/bias
N:L
��2:model/model/encoder/layer.2/attention/self/key_proj/kernel
G:E�28model/model/encoder/layer.2/attention/self/key_proj/bias
P:N
��2<model/model/encoder/layer.2/attention/self/value_proj/kernel
I:G�2:model/model/encoder/layer.2/attention/self/value_proj/bias
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
`	capture_2B�
)__inference_debertaf0_layer_call_fn_86623inputs"�
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
 z`	capture_2
�
`	capture_2B�
)__inference_debertaf0_layer_call_fn_87256inputs"�
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
 z`	capture_2
�
`	capture_2B�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87382inputs"�
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
 z`	capture_2
�
`	capture_2B�
D__inference_debertaf0_layer_call_and_return_conditional_losses_87508inputs"�
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
 z`	capture_2
J
Constjtf.TrackableConstant
�
`	capture_2B�
#__inference_signature_wrapper_87635inputs"�
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
 z`	capture_2
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
`	capture_2B�
%__inference_model_layer_call_fn_87760inputs_embeds"�
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
 z`	capture_2
�
`	capture_2B�
@__inference_model_layer_call_and_return_conditional_losses_88221inputs_embeds"�
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
 z`	capture_2
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
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
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
T54"
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
T54"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
o	variables
ptrainable_variables
qregularization_losses
s__call__
*t&call_and_return_all_conditional_losses
&t"call_and_return_conditional_losses"
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
U0
V1"
trackable_list_wrapper
.
U0
V1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
w	variables
xtrainable_variables
yregularization_losses
{__call__
*|&call_and_return_all_conditional_losses
&|"call_and_return_conditional_losses"
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
'__inference_outputs_layer_call_fn_88226x"�
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
B__inference_outputs_layer_call_and_return_conditional_losses_88230x"�
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
u0
v1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
0
1
 2"
trackable_list_wrapper
5
0
1
 2"
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
	�axis
	gamma
 beta"
_tf_keras_layer
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015
116
217
318
419
520
621
722
823
924
:25
;26
<27
=28
>29
?30
@31
A32
B33
C34
D35
E36
F37
G38
H39
I40
J41
K42
L43
M44
N45
O46
P47
Q48
R49
S50
T51"
trackable_list_wrapper
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015
116
217
318
419
520
621
722
823
924
:25
;26
<27
=28
>29
?30
@31
A32
B33
C34
D35
E36
F37
G38
H39
I40
J41
K42
L43
M44
N45
O46
P47
Q48
R49
S50
T51"
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
.
0
 1"
trackable_list_wrapper
.
0
 1"
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
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015"
trackable_list_wrapper
�
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9
+10
,11
-12
.13
/14
015"
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
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

�dense
�	LayerNorm"
_tf_keras_layer
�
10
21
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
?14
@15
A16
B17"
trackable_list_wrapper
�
10
21
32
43
54
65
76
87
98
:9
;10
<11
=12
>13
?14
@15
A16
B17"
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

Akernel
Bbias
!�_jit_compiled_convolution_op"
_tf_keras_layer
�
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17"
trackable_list_wrapper
�
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9
M10
N11
O12
P13
Q14
R15
S16
T17"
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

Skernel
Tbias
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
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9"
trackable_list_wrapper
f
!0
"1
#2
$3
%4
&5
'6
(7
)8
*9"
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
�
query_proj
�key_proj
�
value_proj
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
+0
,1"
trackable_list_wrapper
.
+0
,1"
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

+kernel

+weight
,bias"
_tf_keras_layer
<
-0
.1
/2
03"
trackable_list_wrapper
<
-0
.1
/2
03"
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
+�&call_and_return_all_conditional_losses

-kernel

-weight
.bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	/gamma
0beta"
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
10
21
32
43
54
65
76
87
98
:9"
trackable_list_wrapper
f
10
21
32
43
54
65
76
87
98
:9"
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
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�
query_proj
�key_proj
�
value_proj
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
;0
<1"
trackable_list_wrapper
.
;0
<1"
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

;kernel

;weight
<bias"
_tf_keras_layer
<
=0
>1
?2
@3"
trackable_list_wrapper
<
=0
>1
?2
@3"
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

=kernel

=weight
>bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	?gamma
@beta"
_tf_keras_layer
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
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
.__inference__jit_compiled_convolution_op_88241�
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
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9"
trackable_list_wrapper
f
C0
D1
E2
F3
G4
H5
I6
J7
K8
L9"
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
�
query_proj
�key_proj
�
value_proj
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
M0
N1"
trackable_list_wrapper
.
M0
N1"
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

Mkernel

Mweight
Nbias"
_tf_keras_layer
<
O0
P1
Q2
R3"
trackable_list_wrapper
<
O0
P1
Q2
R3"
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

Okernel

Oweight
Pbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Qgamma
Rbeta"
_tf_keras_layer
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
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
.__inference__jit_compiled_convolution_op_88252�
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
!0
"1
#2
$3
%4
&5"
trackable_list_wrapper
J
!0
"1
#2
$3
%4
&5"
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

!kernel

!weight
"bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

#kernel

#weight
$bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

%kernel

%weight
&bias"
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
'0
(1
)2
*3"
trackable_list_wrapper
<
'0
(1
)2
*3"
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

'kernel

'weight
(bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	)gamma
*beta"
_tf_keras_layer
 "
trackable_list_wrapper
(
�0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
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
�0
�1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
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
.
/0
01"
trackable_list_wrapper
.
/0
01"
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
10
21
32
43
54
65"
trackable_list_wrapper
J
10
21
32
43
54
65"
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

1kernel

1weight
2bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

3kernel

3weight
4bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

5kernel

5weight
6bias"
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
70
81
92
:3"
trackable_list_wrapper
<
70
81
92
:3"
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

7kernel

7weight
8bias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	9gamma
:beta"
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
;0
<1"
trackable_list_wrapper
.
;0
<1"
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
=0
>1"
trackable_list_wrapper
.
=0
>1"
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
?0
@1"
trackable_list_wrapper
.
?0
@1"
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
.__inference__jit_compiled_convolution_op_88241inputskernel"�
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
C0
D1
E2
F3
G4
H5"
trackable_list_wrapper
J
C0
D1
E2
F3
G4
H5"
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

Ckernel

Cweight
Dbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Ekernel

Eweight
Fbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses

Gkernel

Gweight
Hbias"
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
I0
J1
K2
L3"
trackable_list_wrapper
<
I0
J1
K2
L3"
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

Ikernel

Iweight
Jbias"
_tf_keras_layer
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
	�axis
	Kgamma
Lbeta"
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
M0
N1"
trackable_list_wrapper
.
M0
N1"
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
O0
P1"
trackable_list_wrapper
.
O0
P1"
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
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
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
.__inference__jit_compiled_convolution_op_88252inputskernel"�
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
!0
"1"
trackable_list_wrapper
.
!0
"1"
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
#0
$1"
trackable_list_wrapper
.
#0
$1"
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
%0
&1"
trackable_list_wrapper
.
%0
&1"
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
'0
(1"
trackable_list_wrapper
.
'0
(1"
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
)0
*1"
trackable_list_wrapper
.
)0
*1"
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
10
21"
trackable_list_wrapper
.
10
21"
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
30
41"
trackable_list_wrapper
.
30
41"
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
50
61"
trackable_list_wrapper
.
50
61"
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
70
81"
trackable_list_wrapper
.
70
81"
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
90
:1"
trackable_list_wrapper
.
90
:1"
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
C0
D1"
trackable_list_wrapper
.
C0
D1"
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
E0
F1"
trackable_list_wrapper
.
E0
F1"
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
G0
H1"
trackable_list_wrapper
.
G0
H1"
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
I0
J1"
trackable_list_wrapper
.
I0
J1"
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
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
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
)model/encoder/layer.0/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_88221
tbr
.model/encoder/layer.0/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_88221
obm
)model/encoder/layer.1/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_88221
tbr
.model/encoder/layer.1/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_88221
obm
)model/encoder/layer.2/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_88221
tbr
.model/encoder/layer.2/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_88221
obm
)model/encoder/layer.0/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_86371
tbr
.model/encoder/layer.0/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_86371
obm
)model/encoder/layer.1/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_86371
tbr
.model/encoder/layer.1/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_86371
obm
)model/encoder/layer.2/intermediate/beta:0@__inference_model_layer_call_and_return_conditional_losses_86371
tbr
.model/encoder/layer.2/intermediate/dense/add:0@__inference_model_layer_call_and_return_conditional_losses_86371
_b]
9debertaf0/model/model/encoder/layer.0/intermediate/beta:0 __inference__wrapped_model_85903
dbb
>debertaf0/model/model/encoder/layer.0/intermediate/dense/add:0 __inference__wrapped_model_85903
_b]
9debertaf0/model/model/encoder/layer.1/intermediate/beta:0 __inference__wrapped_model_85903
dbb
>debertaf0/model/model/encoder/layer.1/intermediate/dense/add:0 __inference__wrapped_model_85903
_b]
9debertaf0/model/model/encoder/layer.2/intermediate/beta:0 __inference__wrapped_model_85903
dbb
>debertaf0/model/model/encoder/layer.2/intermediate/dense/add:0 __inference__wrapped_model_85903�
.__inference__jit_compiled_convolution_op_88241|R�O
H�E
%�"
inputs����������
�
kernel�
� "&�#
unknown�����������
.__inference__jit_compiled_convolution_op_88252|R�O
H�E
%�"
inputs����������
�
kernel�
� "&�#
unknown�����������
 __inference__wrapped_model_85903�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV4�1
*�'
%�"
inputs����������
� ")�&
$
outputs�
outputs	��
D__inference_debertaf0_layer_call_and_return_conditional_losses_87382�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV<�9
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
D__inference_debertaf0_layer_call_and_return_conditional_losses_87508�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV<�9
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
)__inference_debertaf0_layer_call_fn_86623�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV<�9
2�/
%�"
inputs����������
p 

 
� "�
unknown	��
)__inference_debertaf0_layer_call_fn_87256�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV<�9
2�/
%�"
inputs����������
p

 
� "�
unknown	��
"__inference_internal_grad_fn_88392���o�l
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
"__inference_internal_grad_fn_88410���o�l
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
"__inference_internal_grad_fn_88428���o�l
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
"__inference_internal_grad_fn_88446���o�l
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
"__inference_internal_grad_fn_88464���o�l
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
"__inference_internal_grad_fn_88482���o�l
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
"__inference_internal_grad_fn_88500���o�l
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
"__inference_internal_grad_fn_88518���o�l
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
"__inference_internal_grad_fn_88536���o�l
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
@__inference_model_layer_call_and_return_conditional_losses_88221�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV;�8
1�.
,�)
inputs_embeds����������
� "$�!
�
tensor_0	�
� �
%__inference_model_layer_call_fn_87760�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV;�8
1�.
,�)
inputs_embeds����������
� "�
unknown	��
B__inference_outputs_layer_call_and_return_conditional_losses_88230J"�
�
�
x	�
� "$�!
�
tensor_0	�
� j
'__inference_outputs_layer_call_fn_88226?"�
�
�
x	�
� "�
unknown	��
#__inference_signature_wrapper_87635�<` #$%&!"'()*+,-./0AB345612789:;<=>?@STEFGHCDIJKLMNOPQRUV>�;
� 
4�1
/
inputs%�"
inputs����������")�&
$
outputs�
outputs	�