Ј’
÷>∞>
,
Abs
x"T
y"T"
Ttype:

2	
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
о
	ApplyAdam
var"TА	
m"TА	
v"TА
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"TА" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeintИ
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
s
	AssignAdd
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
s
	AssignSub
ref"TА

value"T

output_ref"TА" 
Ttype:
2	"
use_lockingbool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
м
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

Т
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

С
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

є
DenseToDenseSetOperation	
set1"T	
set2"T
result_indices	
result_values"T
result_shape	"
set_operationstring"
validate_indicesbool("
Ttype:
	2	
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
,
Exp
x"T
y"T"
Ttype:

2
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
Ј
FlatMapDataset
input_dataset
other_arguments2
Targuments

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
,
Floor
x"T
y"T"
Ttype:
2
И
FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%Ј—8"
data_formatstringNHWC"
is_trainingbool(
∞
FusedBatchNormGrad

y_backprop"T
x"T

scale"T
reserve_space_1"T
reserve_space_2"T

x_backprop"T
scale_backprop"T
offset_backprop"T
reserve_space_3"T
reserve_space_4"T"
Ttype:
2"
epsilonfloat%Ј—8"
data_formatstringNHWC"
is_trainingbool(
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
=
Greater
x"T
y"T
z
"
Ttype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
З
Iterator

handle"
shared_namestring"
	containerstring"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
Л
IteratorFromStringHandle
string_handle
resource_handle" 
output_types
list(type)
 (""
output_shapeslist(shape)
 (И
А
IteratorGetNext
iterator

components2output_types"
output_types
list(type)(0" 
output_shapeslist(shape)(0И
C
IteratorToStringHandle
resource_handle
string_handleИ
2
L2Loss
t"T
output"T"
Ttype:
2
.
Log1p
x"T
y"T"
Ttype:

2
$

LogicalAnd
x

y

z
Р
,
MakeIterator
dataset
iteratorИ
;
Maximum
x"T
y"T
z"T"
Ttype:

2	Р
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
”
ParallelMapDataset
input_dataset
other_arguments2
Targuments
num_parallel_calls

handle"	
ffunc"

Targuments
list(type)("
output_types
list(type)(0" 
output_shapeslist(shape)(0
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
5

Reciprocal
x"T
y"T"
Ttype:

2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
0
Round
x"T
y"T"
Ttype:

2	
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
s
	ScatterNd
indices"Tindices
updates"T
shape"Tindices
output"T"	
Ttype"
Tindicestype:
2	
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
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
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
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
ц
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
З
StridedSliceGrad
shape"Index
begin"Index
end"Index
strides"Index
dy"T
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
М
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
~
TensorDataset

components2Toutput_types

handle"
Toutput_types
list(type)(0" 
output_shapeslist(shape)(0И
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.12v1.10.1-0-g4dcfddcЏ—
U
tensors/component_0Const*
value	B : *
dtype0*
_output_shapes
: 
T
num_parallel_callsConst*
dtype0*
_output_shapes
: *
value	B :
W
tensors_1/component_0Const*
value	B : *
dtype0*
_output_shapes
: 
G
handlePlaceholder*
shape: *
dtype0*
_output_shapes
: 
Ѕ
IteratorFromStringHandleIteratorFromStringHandlehandle*
output_types
2*S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€*
_output_shapes
: 
b
IteratorToStringHandleIteratorToStringHandleIteratorFromStringHandle*
_output_shapes
: 
љ
IteratorIterator*
	container *
_output_shapes
: *
output_types
2*
shared_name *S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€
Ч
TensorDatasetTensorDatasettensors/component_0*
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator*
_output_shapes
: 
Э
FlatMapDatasetFlatMapDatasetTensorDataset*S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€*
_class
loc:@Iterator*8
f3R1
/tf_data_structured_function_wrapper_JViaDPL2Ia8*
output_types
2*

Targuments
 *
_output_shapes
: 
Ї
ParallelMapDatasetParallelMapDatasetFlatMapDatasetnum_parallel_calls*S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€*
_class
loc:@Iterator*8
f3R1
/tf_data_structured_function_wrapper_ECmXtDexI0k*
output_types
2*

Targuments
 *
_output_shapes
: 
W
MakeIteratorMakeIteratorParallelMapDatasetIterator*
_class
loc:@Iterator
T
IteratorToStringHandle_1IteratorToStringHandleIterator*
_output_shapes
: 
З

Iterator_1Iterator*
	container *
_output_shapes
: *
output_types
2*
shared_name *
output_shapes

::
Э
TensorDataset_1TensorDatasettensors_1/component_0*
output_shapes
: *
Toutput_types
2*
_class
loc:@Iterator_1*
_output_shapes
: 
л
FlatMapDataset_1FlatMapDatasetTensorDataset_1*
output_shapes

::*
_class
loc:@Iterator_1*8
f3R1
/tf_data_structured_function_wrapper_aITXi7gVg84*
output_types
2*

Targuments
 *
_output_shapes
: 
[
MakeIterator_1MakeIteratorFlatMapDataset_1
Iterator_1*
_class
loc:@Iterator_1
V
IteratorToStringHandle_2IteratorToStringHandle
Iterator_1*
_output_shapes
: 
€
IteratorGetNextIteratorGetNextIteratorFromStringHandle*
output_types
2*S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€*T
_output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€
P
training/inputConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
d
trainingPlaceholderWithDefaulttraining/input*
dtype0
*
_output_shapes
: *
shape: 
c
apply_dropoutPlaceholderWithDefaulttraining*
shape: *
dtype0
*
_output_shapes
: 
n
imageIdentityIteratorGetNext*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0
V
labelIdentityIteratorGetNext:1*'
_output_shapes
:€€€€€€€€€*
T0
©
.conv2d/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"             * 
_class
loc:@conv2d/kernel
У
,conv2d/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *nІЃљ* 
_class
loc:@conv2d/kernel
У
,conv2d/kernel/Initializer/random_uniform/maxConst*
valueB
 *nІЃ=* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
р
6conv2d/kernel/Initializer/random_uniform/RandomUniformRandomUniform.conv2d/kernel/Initializer/random_uniform/shape*
T0* 
_class
loc:@conv2d/kernel*
seed2 *
dtype0*&
_output_shapes
: *

seed 
“
,conv2d/kernel/Initializer/random_uniform/subSub,conv2d/kernel/Initializer/random_uniform/max,conv2d/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
м
,conv2d/kernel/Initializer/random_uniform/mulMul6conv2d/kernel/Initializer/random_uniform/RandomUniform,conv2d/kernel/Initializer/random_uniform/sub*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
ё
(conv2d/kernel/Initializer/random_uniformAdd,conv2d/kernel/Initializer/random_uniform/mul,conv2d/kernel/Initializer/random_uniform/min*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
≥
conv2d/kernel
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
”
conv2d/kernel/AssignAssignconv2d/kernel(conv2d/kernel/Initializer/random_uniform*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
А
conv2d/kernel/readIdentityconv2d/kernel*&
_output_shapes
: *
T0* 
_class
loc:@conv2d/kernel
Ш
1conv2d/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d/kernel*
dtype0*
_output_shapes
: 
У
2conv2d/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d/kernel/read*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
№
+conv2d/kernel/Regularizer/l1_l2_regularizerMul1conv2d/kernel/Regularizer/l1_l2_regularizer/scale2conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d/kernel*
_output_shapes
: 
К
conv2d/bias/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *
_class
loc:@conv2d/bias
Ч
conv2d/bias
VariableV2*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ґ
conv2d/bias/AssignAssignconv2d/biasconv2d/bias/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
n
conv2d/bias/readIdentityconv2d/bias*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ф
/conv2d/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Н
0conv2d/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d/bias/read*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
‘
)conv2d/bias/Regularizer/l1_l2_regularizerMul/conv2d/bias/Regularizer/l1_l2_regularizer/scale0conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0*
_class
loc:@conv2d/bias
e
conv2d/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
н
conv2d/Conv2DConv2Dimageconv2d/kernel/read*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
Э
conv2d/BiasAddBiasAddconv2d/Conv2Dconv2d/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
[
conv2d/LeakyRelu/alphaConst*
dtype0*
_output_shapes
: *
valueB
 *Ќћћ=
П
conv2d/LeakyRelu/mulMulconv2d/LeakyRelu/alphaconv2d/BiasAdd*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0
Н
conv2d/LeakyReluMaximumconv2d/LeakyRelu/mulconv2d/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
•
*batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes
: *
valueB *  А?*,
_class"
 loc:@batch_normalization/gamma
≥
batch_normalization/gamma
VariableV2*
shape: *
dtype0*
_output_shapes
: *
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container 
н
 batch_normalization/gamma/AssignAssignbatch_normalization/gamma*batch_normalization/gamma/Initializer/ones*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
Ш
batch_normalization/gamma/readIdentitybatch_normalization/gamma*
_output_shapes
: *
T0*,
_class"
 loc:@batch_normalization/gamma
§
*batch_normalization/beta/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
±
batch_normalization/beta
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
к
batch_normalization/beta/AssignAssignbatch_normalization/beta*batch_normalization/beta/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
Х
batch_normalization/beta/readIdentitybatch_normalization/beta*
_output_shapes
: *
T0*+
_class!
loc:@batch_normalization/beta
≤
1batch_normalization/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *2
_class(
&$loc:@batch_normalization/moving_mean
њ
batch_normalization/moving_mean
VariableV2*
shared_name *2
_class(
&$loc:@batch_normalization/moving_mean*
	container *
shape: *
dtype0*
_output_shapes
: 
Ж
&batch_normalization/moving_mean/AssignAssignbatch_normalization/moving_mean1batch_normalization/moving_mean/Initializer/zeros*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: *
use_locking(
™
$batch_normalization/moving_mean/readIdentitybatch_normalization/moving_mean*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
є
4batch_normalization/moving_variance/Initializer/onesConst*
valueB *  А?*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
«
#batch_normalization/moving_variance
VariableV2*
shared_name *6
_class,
*(loc:@batch_normalization/moving_variance*
	container *
shape: *
dtype0*
_output_shapes
: 
Х
*batch_normalization/moving_variance/AssignAssign#batch_normalization/moving_variance4batch_normalization/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance
ґ
(batch_normalization/moving_variance/readIdentity#batch_normalization/moving_variance*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
`
batch_normalization/cond/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
q
!batch_normalization/cond/switch_tIdentity!batch_normalization/cond/Switch:1*
T0
*
_output_shapes
: 
o
!batch_normalization/cond/switch_fIdentitybatch_normalization/cond/Switch*
T0
*
_output_shapes
: 
W
 batch_normalization/cond/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Е
batch_normalization/cond/ConstConst"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
З
 batch_normalization/cond/Const_1Const"^batch_normalization/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
µ
'batch_normalization/cond/FusedBatchNormFusedBatchNorm0batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:12batch_normalization/cond/FusedBatchNorm/Switch_2:1batch_normalization/cond/Const batch_normalization/cond/Const_1*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 
К
.batch_normalization/cond/FusedBatchNorm/SwitchSwitchconv2d/LeakyRelu batch_normalization/cond/pred_id*
T0*#
_class
loc:@conv2d/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
’
0batch_normalization/cond/FusedBatchNorm/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id* 
_output_shapes
: : *
T0*,
_class"
 loc:@batch_normalization/gamma
”
0batch_normalization/cond/FusedBatchNorm/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
: : 
Ё
)batch_normalization/cond/FusedBatchNorm_1FusedBatchNorm0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_22batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 
М
0batch_normalization/cond/FusedBatchNorm_1/SwitchSwitchconv2d/LeakyRelu batch_normalization/cond/pred_id*
T0*#
_class
loc:@conv2d/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
„
2batch_normalization/cond/FusedBatchNorm_1/Switch_1Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id*
T0*,
_class"
 loc:@batch_normalization/gamma* 
_output_shapes
: : 
’
2batch_normalization/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization/beta/read batch_normalization/cond/pred_id*
T0*+
_class!
loc:@batch_normalization/beta* 
_output_shapes
: : 
г
2batch_normalization/cond/FusedBatchNorm_1/Switch_3Switch$batch_normalization/moving_mean/read batch_normalization/cond/pred_id*
T0*2
_class(
&$loc:@batch_normalization/moving_mean* 
_output_shapes
: : 
л
2batch_normalization/cond/FusedBatchNorm_1/Switch_4Switch(batch_normalization/moving_variance/read batch_normalization/cond/pred_id* 
_output_shapes
: : *
T0*6
_class,
*(loc:@batch_normalization/moving_variance
“
batch_normalization/cond/MergeMerge)batch_normalization/cond/FusedBatchNorm_1'batch_normalization/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : 
±
 batch_normalization/cond/Merge_1Merge+batch_normalization/cond/FusedBatchNorm_1:1)batch_normalization/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

: : 
±
 batch_normalization/cond/Merge_2Merge+batch_normalization/cond/FusedBatchNorm_1:2)batch_normalization/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

: : 
b
!batch_normalization/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
u
#batch_normalization/cond_1/switch_tIdentity#batch_normalization/cond_1/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization/cond_1/switch_fIdentity!batch_normalization/cond_1/Switch*
T0
*
_output_shapes
: 
Y
"batch_normalization/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Л
 batch_normalization/cond_1/ConstConst$^batch_normalization/cond_1/switch_t*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
Н
"batch_normalization/cond_1/Const_1Const$^batch_normalization/cond_1/switch_f*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ы
 batch_normalization/cond_1/MergeMerge"batch_normalization/cond_1/Const_1 batch_normalization/cond_1/Const*
T0*
N*
_output_shapes
: : 
Ґ
)batch_normalization/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*2
_class(
&$loc:@batch_normalization/moving_mean
–
'batch_normalization/AssignMovingAvg/subSub)batch_normalization/AssignMovingAvg/sub/x batch_normalization/cond_1/Merge*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
—
)batch_normalization/AssignMovingAvg/sub_1Sub$batch_normalization/moving_mean/read batch_normalization/cond/Merge_1*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
џ
'batch_normalization/AssignMovingAvg/mulMul)batch_normalization/AssignMovingAvg/sub_1'batch_normalization/AssignMovingAvg/sub*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
ж
#batch_normalization/AssignMovingAvg	AssignSubbatch_normalization/moving_mean'batch_normalization/AssignMovingAvg/mul*
use_locking( *
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
_output_shapes
: 
®
+batch_normalization/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*6
_class,
*(loc:@batch_normalization/moving_variance*
dtype0*
_output_shapes
: 
Ў
)batch_normalization/AssignMovingAvg_1/subSub+batch_normalization/AssignMovingAvg_1/sub/x batch_normalization/cond_1/Merge*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
џ
+batch_normalization/AssignMovingAvg_1/sub_1Sub(batch_normalization/moving_variance/read batch_normalization/cond/Merge_2*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
е
)batch_normalization/AssignMovingAvg_1/mulMul+batch_normalization/AssignMovingAvg_1/sub_1)batch_normalization/AssignMovingAvg_1/sub*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
т
%batch_normalization/AssignMovingAvg_1	AssignSub#batch_normalization/moving_variance)batch_normalization/AssignMovingAvg_1/mul*
use_locking( *
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
_output_shapes
: 
≠
0conv2d_1/kernel/Initializer/random_uniform/shapeConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *яX`љ*"
_class
loc:@conv2d_1/kernel
Ч
.conv2d_1/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *яX`=*"
_class
loc:@conv2d_1/kernel
ц
8conv2d_1/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_1/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
: 0*

seed *
T0*"
_class
loc:@conv2d_1/kernel*
seed2 
Џ
.conv2d_1/kernel/Initializer/random_uniform/subSub.conv2d_1/kernel/Initializer/random_uniform/max.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
ф
.conv2d_1/kernel/Initializer/random_uniform/mulMul8conv2d_1/kernel/Initializer/random_uniform/RandomUniform.conv2d_1/kernel/Initializer/random_uniform/sub*&
_output_shapes
: 0*
T0*"
_class
loc:@conv2d_1/kernel
ж
*conv2d_1/kernel/Initializer/random_uniformAdd.conv2d_1/kernel/Initializer/random_uniform/mul.conv2d_1/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
Ј
conv2d_1/kernel
VariableV2*
dtype0*&
_output_shapes
: 0*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 0
џ
conv2d_1/kernel/AssignAssignconv2d_1/kernel*conv2d_1/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
Ж
conv2d_1/kernel/readIdentityconv2d_1/kernel*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
Ь
3conv2d_1/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_1/kernel/read*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
д
-conv2d_1/kernel/Regularizer/l1_l2_regularizerMul3conv2d_1/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_1/kernel*
_output_shapes
: 
О
conv2d_1/bias/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
Ы
conv2d_1/bias
VariableV2*
shape:0*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias*
	container 
Њ
conv2d_1/bias/AssignAssignconv2d_1/biasconv2d_1/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
t
conv2d_1/bias/readIdentityconv2d_1/bias*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:0
Ш
1conv2d_1/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
: 
У
2conv2d_1/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_1/bias/read*
_output_shapes
: *
T0* 
_class
loc:@conv2d_1/bias
№
+conv2d_1/bias/Regularizer/l1_l2_regularizerMul1conv2d_1/bias/Regularizer/l1_l2_regularizer/scale2conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
: 
g
conv2d_1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
К
conv2d_1/Conv2DConv2Dbatch_normalization/cond/Mergeconv2d_1/kernel/read*
paddingVALID*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
£
conv2d_1/BiasAddBiasAddconv2d_1/Conv2Dconv2d_1/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
]
conv2d_1/LeakyRelu/alphaConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
Х
conv2d_1/LeakyRelu/mulMulconv2d_1/LeakyRelu/alphaconv2d_1/BiasAdd*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0
У
conv2d_1/LeakyReluMaximumconv2d_1/LeakyRelu/mulconv2d_1/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
©
,batch_normalization_1/gamma/Initializer/onesConst*
valueB0*  А?*.
_class$
" loc:@batch_normalization_1/gamma*
dtype0*
_output_shapes
:0
Ј
batch_normalization_1/gamma
VariableV2*
	container *
shape:0*
dtype0*
_output_shapes
:0*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma
х
"batch_normalization_1/gamma/AssignAssignbatch_normalization_1/gamma,batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
Ю
 batch_normalization_1/gamma/readIdentitybatch_normalization_1/gamma*
_output_shapes
:0*
T0*.
_class$
" loc:@batch_normalization_1/gamma
®
,batch_normalization_1/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta
µ
batch_normalization_1/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:0*
dtype0*
_output_shapes
:0
т
!batch_normalization_1/beta/AssignAssignbatch_normalization_1/beta,batch_normalization_1/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
Ы
batch_normalization_1/beta/readIdentitybatch_normalization_1/beta*
_output_shapes
:0*
T0*-
_class#
!loc:@batch_normalization_1/beta
ґ
3batch_normalization_1/moving_mean/Initializer/zerosConst*
valueB0*    *4
_class*
(&loc:@batch_normalization_1/moving_mean*
dtype0*
_output_shapes
:0
√
!batch_normalization_1/moving_mean
VariableV2*
shape:0*
dtype0*
_output_shapes
:0*
shared_name *4
_class*
(&loc:@batch_normalization_1/moving_mean*
	container 
О
(batch_normalization_1/moving_mean/AssignAssign!batch_normalization_1/moving_mean3batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
∞
&batch_normalization_1/moving_mean/readIdentity!batch_normalization_1/moving_mean*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
љ
6batch_normalization_1/moving_variance/Initializer/onesConst*
valueB0*  А?*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
:0
Ћ
%batch_normalization_1/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_1/moving_variance*
	container *
shape:0*
dtype0*
_output_shapes
:0
Э
,batch_normalization_1/moving_variance/AssignAssign%batch_normalization_1/moving_variance6batch_normalization_1/moving_variance/Initializer/ones*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0*
use_locking(
Љ
*batch_normalization_1/moving_variance/readIdentity%batch_normalization_1/moving_variance*
_output_shapes
:0*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
b
!batch_normalization_1/cond/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
u
#batch_normalization_1/cond/switch_tIdentity#batch_normalization_1/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_1/cond/switch_fIdentity!batch_normalization_1/cond/Switch*
T0
*
_output_shapes
: 
Y
"batch_normalization_1/cond/pred_idIdentitytraining*
_output_shapes
: *
T0

Й
 batch_normalization_1/cond/ConstConst$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Л
"batch_normalization_1/cond/Const_1Const$^batch_normalization_1/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Ѕ
)batch_normalization_1/cond/FusedBatchNormFusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm/Switch:14batch_normalization_1/cond/FusedBatchNorm/Switch_1:14batch_normalization_1/cond/FusedBatchNorm/Switch_2:1 batch_normalization_1/cond/Const"batch_normalization_1/cond/Const_1*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:0:0:0:0*
epsilon%oГ:*
T0
Т
0batch_normalization_1/cond/FusedBatchNorm/SwitchSwitchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id*
T0*%
_class
loc:@conv2d_1/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Ё
2batch_normalization_1/cond/FusedBatchNorm/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id*
T0*.
_class$
" loc:@batch_normalization_1/gamma* 
_output_shapes
:0:0
џ
2batch_normalization_1/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id* 
_output_shapes
:0:0*
T0*-
_class#
!loc:@batch_normalization_1/beta
й
+batch_normalization_1/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_1/cond/FusedBatchNorm_1/Switch4batch_normalization_1/cond/FusedBatchNorm_1/Switch_14batch_normalization_1/cond/FusedBatchNorm_1/Switch_24batch_normalization_1/cond/FusedBatchNorm_1/Switch_34batch_normalization_1/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:0:0:0:0*
epsilon%oГ:*
T0
Ф
2batch_normalization_1/cond/FusedBatchNorm_1/SwitchSwitchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id*
T0*%
_class
loc:@conv2d_1/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
я
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id* 
_output_shapes
:0:0*
T0*.
_class$
" loc:@batch_normalization_1/gamma
Ё
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id*
T0*-
_class#
!loc:@batch_normalization_1/beta* 
_output_shapes
:0:0
л
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean* 
_output_shapes
:0:0
у
4batch_normalization_1/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/pred_id*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance* 
_output_shapes
:0:0
Ў
 batch_normalization_1/cond/MergeMerge+batch_normalization_1/cond/FusedBatchNorm_1)batch_normalization_1/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0: 
Ј
"batch_normalization_1/cond/Merge_1Merge-batch_normalization_1/cond/FusedBatchNorm_1:1+batch_normalization_1/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:0: 
Ј
"batch_normalization_1/cond/Merge_2Merge-batch_normalization_1/cond/FusedBatchNorm_1:2+batch_normalization_1/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:0: 
d
#batch_normalization_1/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
y
%batch_normalization_1/cond_1/switch_tIdentity%batch_normalization_1/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_1/cond_1/switch_fIdentity#batch_normalization_1/cond_1/Switch*
T0
*
_output_shapes
: 
[
$batch_normalization_1/cond_1/pred_idIdentitytraining*
T0
*
_output_shapes
: 
П
"batch_normalization_1/cond_1/ConstConst&^batch_normalization_1/cond_1/switch_t*
dtype0*
_output_shapes
: *
valueB
 *§p}?
С
$batch_normalization_1/cond_1/Const_1Const&^batch_normalization_1/cond_1/switch_f*
dtype0*
_output_shapes
: *
valueB
 *  А?
°
"batch_normalization_1/cond_1/MergeMerge$batch_normalization_1/cond_1/Const_1"batch_normalization_1/cond_1/Const*
T0*
N*
_output_shapes
: : 
¶
+batch_normalization_1/AssignMovingAvg/sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *  А?*4
_class*
(&loc:@batch_normalization_1/moving_mean
Ў
)batch_normalization_1/AssignMovingAvg/subSub+batch_normalization_1/AssignMovingAvg/sub/x"batch_normalization_1/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
: 
ў
+batch_normalization_1/AssignMovingAvg/sub_1Sub&batch_normalization_1/moving_mean/read"batch_normalization_1/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
г
)batch_normalization_1/AssignMovingAvg/mulMul+batch_normalization_1/AssignMovingAvg/sub_1)batch_normalization_1/AssignMovingAvg/sub*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
о
%batch_normalization_1/AssignMovingAvg	AssignSub!batch_normalization_1/moving_mean)batch_normalization_1/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
_output_shapes
:0
ђ
-batch_normalization_1/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*8
_class.
,*loc:@batch_normalization_1/moving_variance*
dtype0*
_output_shapes
: 
а
+batch_normalization_1/AssignMovingAvg_1/subSub-batch_normalization_1/AssignMovingAvg_1/sub/x"batch_normalization_1/cond_1/Merge*
_output_shapes
: *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
г
-batch_normalization_1/AssignMovingAvg_1/sub_1Sub*batch_normalization_1/moving_variance/read"batch_normalization_1/cond/Merge_2*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
н
+batch_normalization_1/AssignMovingAvg_1/mulMul-batch_normalization_1/AssignMovingAvg_1/sub_1+batch_normalization_1/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
_output_shapes
:0
ъ
'batch_normalization_1/AssignMovingAvg_1	AssignSub%batch_normalization_1/moving_variance+batch_normalization_1/AssignMovingAvg_1/mul*
_output_shapes
:0*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance
≠
0conv2d_2/kernel/Initializer/random_uniform/shapeConst*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_2/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *£Ы=љ*"
_class
loc:@conv2d_2/kernel
Ч
.conv2d_2/kernel/Initializer/random_uniform/maxConst*
valueB
 *£Ы==*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
ц
8conv2d_2/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_2/kernel/Initializer/random_uniform/shape*
dtype0*&
_output_shapes
:0@*

seed *
T0*"
_class
loc:@conv2d_2/kernel*
seed2 
Џ
.conv2d_2/kernel/Initializer/random_uniform/subSub.conv2d_2/kernel/Initializer/random_uniform/max.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
ф
.conv2d_2/kernel/Initializer/random_uniform/mulMul8conv2d_2/kernel/Initializer/random_uniform/RandomUniform.conv2d_2/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
ж
*conv2d_2/kernel/Initializer/random_uniformAdd.conv2d_2/kernel/Initializer/random_uniform/mul.conv2d_2/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
Ј
conv2d_2/kernel
VariableV2*
dtype0*&
_output_shapes
:0@*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:0@
џ
conv2d_2/kernel/AssignAssignconv2d_2/kernel*conv2d_2/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
Ж
conv2d_2/kernel/readIdentityconv2d_2/kernel*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
Ь
3conv2d_2/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_2/kernel/read*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
д
-conv2d_2/kernel/Regularizer/l1_l2_regularizerMul3conv2d_2/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_2/kernel*
_output_shapes
: 
О
conv2d_2/bias/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
Ы
conv2d_2/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
Њ
conv2d_2/bias/AssignAssignconv2d_2/biasconv2d_2/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
t
conv2d_2/bias/readIdentityconv2d_2/bias*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Ш
1conv2d_2/bias/Regularizer/l1_l2_regularizer/scaleConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_2/bias
У
2conv2d_2/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_2/bias/read*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
№
+conv2d_2/bias/Regularizer/l1_l2_regularizerMul1conv2d_2/bias/Regularizer/l1_l2_regularizer/scale2conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
: 
g
conv2d_2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
М
conv2d_2/Conv2DConv2D batch_normalization_1/cond/Mergeconv2d_2/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
£
conv2d_2/BiasAddBiasAddconv2d_2/Conv2Dconv2d_2/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
]
conv2d_2/LeakyRelu/alphaConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
Х
conv2d_2/LeakyRelu/mulMulconv2d_2/LeakyRelu/alphaconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
У
conv2d_2/LeakyReluMaximumconv2d_2/LeakyRelu/mulconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
©
,batch_normalization_2/gamma/Initializer/onesConst*
valueB@*  А?*.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
Ј
batch_normalization_2/gamma
VariableV2*.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
х
"batch_normalization_2/gamma/AssignAssignbatch_normalization_2/gamma,batch_normalization_2/gamma/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
Ю
 batch_normalization_2/gamma/readIdentitybatch_normalization_2/gamma*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
®
,batch_normalization_2/beta/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta
µ
batch_normalization_2/beta
VariableV2*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@
т
!batch_normalization_2/beta/AssignAssignbatch_normalization_2/beta,batch_normalization_2/beta/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@*
use_locking(
Ы
batch_normalization_2/beta/readIdentitybatch_normalization_2/beta*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
ґ
3batch_normalization_2/moving_mean/Initializer/zerosConst*
valueB@*    *4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
:@
√
!batch_normalization_2/moving_mean
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *4
_class*
(&loc:@batch_normalization_2/moving_mean*
	container *
shape:@
О
(batch_normalization_2/moving_mean/AssignAssign!batch_normalization_2/moving_mean3batch_normalization_2/moving_mean/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@
∞
&batch_normalization_2/moving_mean/readIdentity!batch_normalization_2/moving_mean*
_output_shapes
:@*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
љ
6batch_normalization_2/moving_variance/Initializer/onesConst*
dtype0*
_output_shapes
:@*
valueB@*  А?*8
_class.
,*loc:@batch_normalization_2/moving_variance
Ћ
%batch_normalization_2/moving_variance
VariableV2*
shared_name *8
_class.
,*loc:@batch_normalization_2/moving_variance*
	container *
shape:@*
dtype0*
_output_shapes
:@
Э
,batch_normalization_2/moving_variance/AssignAssign%batch_normalization_2/moving_variance6batch_normalization_2/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
Љ
*batch_normalization_2/moving_variance/readIdentity%batch_normalization_2/moving_variance*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
b
!batch_normalization_2/cond/SwitchSwitchtrainingtraining*
_output_shapes
: : *
T0

u
#batch_normalization_2/cond/switch_tIdentity#batch_normalization_2/cond/Switch:1*
T0
*
_output_shapes
: 
s
#batch_normalization_2/cond/switch_fIdentity!batch_normalization_2/cond/Switch*
T0
*
_output_shapes
: 
Y
"batch_normalization_2/cond/pred_idIdentitytraining*
T0
*
_output_shapes
: 
Й
 batch_normalization_2/cond/ConstConst$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Л
"batch_normalization_2/cond/Const_1Const$^batch_normalization_2/cond/switch_t*
valueB *
dtype0*
_output_shapes
: 
Ѕ
)batch_normalization_2/cond/FusedBatchNormFusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:14batch_normalization_2/cond/FusedBatchNorm/Switch_2:1 batch_normalization_2/cond/Const"batch_normalization_2/cond/Const_1*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@
Т
0batch_normalization_2/cond/FusedBatchNorm/SwitchSwitchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id*
T0*%
_class
loc:@conv2d_2/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ё
2batch_normalization_2/cond/FusedBatchNorm/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*.
_class$
" loc:@batch_normalization_2/gamma
џ
2batch_normalization_2/cond/FusedBatchNorm/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
й
+batch_normalization_2/cond/FusedBatchNorm_1FusedBatchNorm2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_24batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@*
epsilon%oГ:*
T0
Ф
2batch_normalization_2/cond/FusedBatchNorm_1/SwitchSwitchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id*
T0*%
_class
loc:@conv2d_2/LeakyRelu*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
я
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_1Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*.
_class$
" loc:@batch_normalization_2/gamma
Ё
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_2Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
л
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_3Switch&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/pred_id*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean* 
_output_shapes
:@:@
у
4batch_normalization_2/cond/FusedBatchNorm_1/Switch_4Switch*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/pred_id* 
_output_shapes
:@:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
Ў
 batch_normalization_2/cond/MergeMerge+batch_normalization_2/cond/FusedBatchNorm_1)batch_normalization_2/cond/FusedBatchNorm*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: 
Ј
"batch_normalization_2/cond/Merge_1Merge-batch_normalization_2/cond/FusedBatchNorm_1:1+batch_normalization_2/cond/FusedBatchNorm:1*
T0*
N*
_output_shapes

:@: 
Ј
"batch_normalization_2/cond/Merge_2Merge-batch_normalization_2/cond/FusedBatchNorm_1:2+batch_normalization_2/cond/FusedBatchNorm:2*
T0*
N*
_output_shapes

:@: 
d
#batch_normalization_2/cond_1/SwitchSwitchtrainingtraining*
T0
*
_output_shapes
: : 
y
%batch_normalization_2/cond_1/switch_tIdentity%batch_normalization_2/cond_1/Switch:1*
T0
*
_output_shapes
: 
w
%batch_normalization_2/cond_1/switch_fIdentity#batch_normalization_2/cond_1/Switch*
T0
*
_output_shapes
: 
[
$batch_normalization_2/cond_1/pred_idIdentitytraining*
_output_shapes
: *
T0

П
"batch_normalization_2/cond_1/ConstConst&^batch_normalization_2/cond_1/switch_t*
valueB
 *§p}?*
dtype0*
_output_shapes
: 
С
$batch_normalization_2/cond_1/Const_1Const&^batch_normalization_2/cond_1/switch_f*
valueB
 *  А?*
dtype0*
_output_shapes
: 
°
"batch_normalization_2/cond_1/MergeMerge$batch_normalization_2/cond_1/Const_1"batch_normalization_2/cond_1/Const*
T0*
N*
_output_shapes
: : 
¶
+batch_normalization_2/AssignMovingAvg/sub/xConst*
valueB
 *  А?*4
_class*
(&loc:@batch_normalization_2/moving_mean*
dtype0*
_output_shapes
: 
Ў
)batch_normalization_2/AssignMovingAvg/subSub+batch_normalization_2/AssignMovingAvg/sub/x"batch_normalization_2/cond_1/Merge*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
: 
ў
+batch_normalization_2/AssignMovingAvg/sub_1Sub&batch_normalization_2/moving_mean/read"batch_normalization_2/cond/Merge_1*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
г
)batch_normalization_2/AssignMovingAvg/mulMul+batch_normalization_2/AssignMovingAvg/sub_1)batch_normalization_2/AssignMovingAvg/sub*
_output_shapes
:@*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean
о
%batch_normalization_2/AssignMovingAvg	AssignSub!batch_normalization_2/moving_mean)batch_normalization_2/AssignMovingAvg/mul*
use_locking( *
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
_output_shapes
:@
ђ
-batch_normalization_2/AssignMovingAvg_1/sub/xConst*
valueB
 *  А?*8
_class.
,*loc:@batch_normalization_2/moving_variance*
dtype0*
_output_shapes
: 
а
+batch_normalization_2/AssignMovingAvg_1/subSub-batch_normalization_2/AssignMovingAvg_1/sub/x"batch_normalization_2/cond_1/Merge*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
: 
г
-batch_normalization_2/AssignMovingAvg_1/sub_1Sub*batch_normalization_2/moving_variance/read"batch_normalization_2/cond/Merge_2*
_output_shapes
:@*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance
н
+batch_normalization_2/AssignMovingAvg_1/mulMul-batch_normalization_2/AssignMovingAvg_1/sub_1+batch_normalization_2/AssignMovingAvg_1/sub*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
ъ
'batch_normalization_2/AssignMovingAvg_1	AssignSub%batch_normalization_2/moving_variance+batch_normalization_2/AssignMovingAvg_1/mul*
use_locking( *
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
_output_shapes
:@
^
dropout/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
Y
dropout/cond/switch_tIdentitydropout/cond/Switch:1*
T0
*
_output_shapes
: 
W
dropout/cond/switch_fIdentitydropout/cond/Switch*
_output_shapes
: *
T0

P
dropout/cond/pred_idIdentityapply_dropout*
T0
*
_output_shapes
: 
{
dropout/cond/dropout/keep_probConst^dropout/cond/switch_t*
valueB
 *ЪЩ?*
dtype0*
_output_shapes
: 
}
dropout/cond/dropout/ShapeShape#dropout/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
С
!dropout/cond/dropout/Shape/SwitchSwitch batch_normalization_2/cond/Mergedropout/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_2/cond/Merge*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Д
'dropout/cond/dropout/random_uniform/minConst^dropout/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
Д
'dropout/cond/dropout/random_uniform/maxConst^dropout/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
–
1dropout/cond/dropout/random_uniform/RandomUniformRandomUniformdropout/cond/dropout/Shape*

seed *
T0*
dtype0*
seed2 *A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
°
'dropout/cond/dropout/random_uniform/subSub'dropout/cond/dropout/random_uniform/max'dropout/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
÷
'dropout/cond/dropout/random_uniform/mulMul1dropout/cond/dropout/random_uniform/RandomUniform'dropout/cond/dropout/random_uniform/sub*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
»
#dropout/cond/dropout/random_uniformAdd'dropout/cond/dropout/random_uniform/mul'dropout/cond/dropout/random_uniform/min*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
∞
dropout/cond/dropout/addAdddropout/cond/dropout/keep_prob#dropout/cond/dropout/random_uniform*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Й
dropout/cond/dropout/FloorFloordropout/cond/dropout/add*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
і
dropout/cond/dropout/divRealDiv#dropout/cond/dropout/Shape/Switch:1dropout/cond/dropout/keep_prob*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
°
dropout/cond/dropout/mulMuldropout/cond/dropout/divdropout/cond/dropout/Floor*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Л
dropout/cond/IdentityIdentitydropout/cond/Identity/Switch*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
М
dropout/cond/Identity/SwitchSwitch batch_normalization_2/cond/Mergedropout/cond/pred_id*
T0*3
_class)
'%loc:@batch_normalization_2/cond/Merge*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
£
dropout/cond/MergeMergedropout/cond/Identitydropout/cond/dropout/mul*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: 
≠
0conv2d_3/kernel/Initializer/random_uniform/shapeConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Initializer/random_uniform/minConst*
valueB
 *hйЉ*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_3/kernel/Initializer/random_uniform/maxConst*
valueB
 *hй<*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
ч
8conv2d_3/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_3/kernel/Initializer/random_uniform/shape*
dtype0*'
_output_shapes
:@О*

seed *
T0*"
_class
loc:@conv2d_3/kernel*
seed2 
Џ
.conv2d_3/kernel/Initializer/random_uniform/subSub.conv2d_3/kernel/Initializer/random_uniform/max.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
х
.conv2d_3/kernel/Initializer/random_uniform/mulMul8conv2d_3/kernel/Initializer/random_uniform/RandomUniform.conv2d_3/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
з
*conv2d_3/kernel/Initializer/random_uniformAdd.conv2d_3/kernel/Initializer/random_uniform/mul.conv2d_3/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
є
conv2d_3/kernel
VariableV2*"
_class
loc:@conv2d_3/kernel*
	container *
shape:@О*
dtype0*'
_output_shapes
:@О*
shared_name 
№
conv2d_3/kernel/AssignAssignconv2d_3/kernel*conv2d_3/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
З
conv2d_3/kernel/readIdentityconv2d_3/kernel*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
Ь
3conv2d_3/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_3/kernel/read*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
д
-conv2d_3/kernel/Regularizer/l1_l2_regularizerMul3conv2d_3/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_3/kernel*
_output_shapes
: 
Р
conv2d_3/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:О*
valueBО*    * 
_class
loc:@conv2d_3/bias
Э
conv2d_3/bias
VariableV2*
dtype0*
_output_shapes	
:О*
shared_name * 
_class
loc:@conv2d_3/bias*
	container *
shape:О
њ
conv2d_3/bias/AssignAssignconv2d_3/biasconv2d_3/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
u
conv2d_3/bias/readIdentityconv2d_3/bias*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:О
Ш
1conv2d_3/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes
: 
У
2conv2d_3/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_3/bias/read*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
№
+conv2d_3/bias/Regularizer/l1_l2_regularizerMul1conv2d_3/bias/Regularizer/l1_l2_regularizer/scale2conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes
: 
g
conv2d_3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
€
conv2d_3/Conv2DConv2Ddropout/cond/Mergeconv2d_3/kernel/read*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
§
conv2d_3/BiasAddBiasAddconv2d_3/Conv2Dconv2d_3/bias/read*
data_formatNHWC*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0
]
conv2d_3/LeakyRelu/alphaConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
Ц
conv2d_3/LeakyRelu/mulMulconv2d_3/LeakyRelu/alphaconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ф
conv2d_3/LeakyReluMaximumconv2d_3/LeakyRelu/mulconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
`
dropout_1/cond/SwitchSwitchapply_dropoutapply_dropout*
_output_shapes
: : *
T0

]
dropout_1/cond/switch_tIdentitydropout_1/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_1/cond/switch_fIdentitydropout_1/cond/Switch*
_output_shapes
: *
T0

R
dropout_1/cond/pred_idIdentityapply_dropout*
T0
*
_output_shapes
: 

 dropout_1/cond/dropout/keep_probConst^dropout_1/cond/switch_t*
valueB
 *333?*
dtype0*
_output_shapes
: 
Б
dropout_1/cond/dropout/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
ы
#dropout_1/cond/dropout/Shape/SwitchSwitchconv2d_3/LeakyReludropout_1/cond/pred_id*
T0*%
_class
loc:@conv2d_3/LeakyRelu*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
И
)dropout_1/cond/dropout/random_uniform/minConst^dropout_1/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_1/cond/dropout/random_uniform/maxConst^dropout_1/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
’
3dropout_1/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_1/cond/dropout/Shape*
dtype0*
seed2 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*

seed *
T0
І
)dropout_1/cond/dropout/random_uniform/subSub)dropout_1/cond/dropout/random_uniform/max)dropout_1/cond/dropout/random_uniform/min*
T0*
_output_shapes
: 
Ё
)dropout_1/cond/dropout/random_uniform/mulMul3dropout_1/cond/dropout/random_uniform/RandomUniform)dropout_1/cond/dropout/random_uniform/sub*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ѕ
%dropout_1/cond/dropout/random_uniformAdd)dropout_1/cond/dropout/random_uniform/mul)dropout_1/cond/dropout/random_uniform/min*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ј
dropout_1/cond/dropout/addAdd dropout_1/cond/dropout/keep_prob%dropout_1/cond/dropout/random_uniform*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
О
dropout_1/cond/dropout/FloorFloordropout_1/cond/dropout/add*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ї
dropout_1/cond/dropout/divRealDiv%dropout_1/cond/dropout/Shape/Switch:1 dropout_1/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
®
dropout_1/cond/dropout/mulMuldropout_1/cond/dropout/divdropout_1/cond/dropout/Floor*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Р
dropout_1/cond/IdentityIdentitydropout_1/cond/Identity/Switch*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ц
dropout_1/cond/Identity/SwitchSwitchconv2d_3/LeakyReludropout_1/cond/pred_id*
T0*%
_class
loc:@conv2d_3/LeakyRelu*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
™
dropout_1/cond/MergeMergedropout_1/cond/Identitydropout_1/cond/dropout/mul*
T0*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О: 
≠
0conv2d_4/kernel/Initializer/random_uniform/shapeConst*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Initializer/random_uniform/minConst*
valueB
 *¶Њ*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Ч
.conv2d_4/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *¶>*"
_class
loc:@conv2d_4/kernel
ш
8conv2d_4/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_4/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@conv2d_4/kernel*
seed2 *
dtype0*(
_output_shapes
:ОА*

seed 
Џ
.conv2d_4/kernel/Initializer/random_uniform/subSub.conv2d_4/kernel/Initializer/random_uniform/max.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
ц
.conv2d_4/kernel/Initializer/random_uniform/mulMul8conv2d_4/kernel/Initializer/random_uniform/RandomUniform.conv2d_4/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
и
*conv2d_4/kernel/Initializer/random_uniformAdd.conv2d_4/kernel/Initializer/random_uniform/mul.conv2d_4/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
ї
conv2d_4/kernel
VariableV2*
dtype0*(
_output_shapes
:ОА*
shared_name *"
_class
loc:@conv2d_4/kernel*
	container *
shape:ОА
Ё
conv2d_4/kernel/AssignAssignconv2d_4/kernel*conv2d_4/kernel/Initializer/random_uniform*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
И
conv2d_4/kernel/readIdentityconv2d_4/kernel*(
_output_shapes
:ОА*
T0*"
_class
loc:@conv2d_4/kernel
Ь
3conv2d_4/kernel/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>*"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Щ
4conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_4/kernel/read*
_output_shapes
: *
T0*"
_class
loc:@conv2d_4/kernel
д
-conv2d_4/kernel/Regularizer/l1_l2_regularizerMul3conv2d_4/kernel/Regularizer/l1_l2_regularizer/scale4conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*"
_class
loc:@conv2d_4/kernel*
_output_shapes
: 
Р
conv2d_4/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:А*
valueBА*    * 
_class
loc:@conv2d_4/bias
Э
conv2d_4/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape:А*
dtype0*
_output_shapes	
:А
њ
conv2d_4/bias/AssignAssignconv2d_4/biasconv2d_4/bias/Initializer/zeros*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
u
conv2d_4/bias/readIdentityconv2d_4/bias*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:А
Ш
1conv2d_4/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *ЪЩЩ>* 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes
: 
У
2conv2d_4/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_4/bias/read*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
№
+conv2d_4/bias/Regularizer/l1_l2_regularizerMul1conv2d_4/bias/Regularizer/l1_l2_regularizer/scale2conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes
: 
g
conv2d_4/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
Б
conv2d_4/Conv2DConv2Ddropout_1/cond/Mergeconv2d_4/kernel/read*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
	dilations
*
T0
§
conv2d_4/BiasAddBiasAddconv2d_4/Conv2Dconv2d_4/bias/read*
T0*
data_formatNHWC*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
]
conv2d_4/LeakyRelu/alphaConst*
valueB
 *Ќћћ=*
dtype0*
_output_shapes
: 
Ц
conv2d_4/LeakyRelu/mulMulconv2d_4/LeakyRelu/alphaconv2d_4/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ф
conv2d_4/LeakyReluMaximumconv2d_4/LeakyRelu/mulconv2d_4/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
`
dropout_2/cond/SwitchSwitchapply_dropoutapply_dropout*
T0
*
_output_shapes
: : 
]
dropout_2/cond/switch_tIdentitydropout_2/cond/Switch:1*
T0
*
_output_shapes
: 
[
dropout_2/cond/switch_fIdentitydropout_2/cond/Switch*
T0
*
_output_shapes
: 
R
dropout_2/cond/pred_idIdentityapply_dropout*
_output_shapes
: *
T0


 dropout_2/cond/dropout/keep_probConst^dropout_2/cond/switch_t*
valueB
 *333?*
dtype0*
_output_shapes
: 
Б
dropout_2/cond/dropout/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1*
T0*
out_type0*
_output_shapes
:
ы
#dropout_2/cond/dropout/Shape/SwitchSwitchconv2d_4/LeakyReludropout_2/cond/pred_id*
T0*%
_class
loc:@conv2d_4/LeakyRelu*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
И
)dropout_2/cond/dropout/random_uniform/minConst^dropout_2/cond/switch_t*
valueB
 *    *
dtype0*
_output_shapes
: 
И
)dropout_2/cond/dropout/random_uniform/maxConst^dropout_2/cond/switch_t*
valueB
 *  А?*
dtype0*
_output_shapes
: 
’
3dropout_2/cond/dropout/random_uniform/RandomUniformRandomUniformdropout_2/cond/dropout/Shape*

seed *
T0*
dtype0*
seed2 *B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
І
)dropout_2/cond/dropout/random_uniform/subSub)dropout_2/cond/dropout/random_uniform/max)dropout_2/cond/dropout/random_uniform/min*
_output_shapes
: *
T0
Ё
)dropout_2/cond/dropout/random_uniform/mulMul3dropout_2/cond/dropout/random_uniform/RandomUniform)dropout_2/cond/dropout/random_uniform/sub*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ѕ
%dropout_2/cond/dropout/random_uniformAdd)dropout_2/cond/dropout/random_uniform/mul)dropout_2/cond/dropout/random_uniform/min*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
Ј
dropout_2/cond/dropout/addAdd dropout_2/cond/dropout/keep_prob%dropout_2/cond/dropout/random_uniform*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
О
dropout_2/cond/dropout/FloorFloordropout_2/cond/dropout/add*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
ї
dropout_2/cond/dropout/divRealDiv%dropout_2/cond/dropout/Shape/Switch:1 dropout_2/cond/dropout/keep_prob*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
®
dropout_2/cond/dropout/mulMuldropout_2/cond/dropout/divdropout_2/cond/dropout/Floor*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Р
dropout_2/cond/IdentityIdentitydropout_2/cond/Identity/Switch*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ц
dropout_2/cond/Identity/SwitchSwitchconv2d_4/LeakyReludropout_2/cond/pred_id*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*%
_class
loc:@conv2d_4/LeakyRelu
™
dropout_2/cond/MergeMergedropout_2/cond/Identitydropout_2/cond/dropout/mul*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: *
T0
≠
0conv2d_5/kernel/Initializer/random_uniform/shapeConst*%
valueB"      А      *"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_5/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *3&[Њ*"
_class
loc:@conv2d_5/kernel
Ч
.conv2d_5/kernel/Initializer/random_uniform/maxConst*
valueB
 *3&[>*"
_class
loc:@conv2d_5/kernel*
dtype0*
_output_shapes
: 
ч
8conv2d_5/kernel/Initializer/random_uniform/RandomUniformRandomUniform0conv2d_5/kernel/Initializer/random_uniform/shape*
seed2 *
dtype0*'
_output_shapes
:А*

seed *
T0*"
_class
loc:@conv2d_5/kernel
Џ
.conv2d_5/kernel/Initializer/random_uniform/subSub.conv2d_5/kernel/Initializer/random_uniform/max.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*
_output_shapes
: 
х
.conv2d_5/kernel/Initializer/random_uniform/mulMul8conv2d_5/kernel/Initializer/random_uniform/RandomUniform.conv2d_5/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
з
*conv2d_5/kernel/Initializer/random_uniformAdd.conv2d_5/kernel/Initializer/random_uniform/mul.conv2d_5/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
є
conv2d_5/kernel
VariableV2*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А*
dtype0*'
_output_shapes
:А
№
conv2d_5/kernel/AssignAssignconv2d_5/kernel*conv2d_5/kernel/Initializer/random_uniform*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
З
conv2d_5/kernel/readIdentityconv2d_5/kernel*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
О
conv2d_5/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ы
conv2d_5/bias
VariableV2*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Њ
conv2d_5/bias/AssignAssignconv2d_5/biasconv2d_5/bias/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
t
conv2d_5/bias/readIdentityconv2d_5/bias*
_output_shapes
:*
T0* 
_class
loc:@conv2d_5/bias
Ш
1conv2d_5/bias/Regularizer/l1_l2_regularizer/scaleConst*
valueB
 *Ќћћ=* 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
: 
У
2conv2d_5/bias/Regularizer/l1_l2_regularizer/L2LossL2Lossconv2d_5/bias/read*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
№
+conv2d_5/bias/Regularizer/l1_l2_regularizerMul1conv2d_5/bias/Regularizer/l1_l2_regularizer/scale2conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
: 
g
conv2d_5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:
А
conv2d_5/Conv2DConv2Ddropout_2/cond/Mergeconv2d_5/kernel/read*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
£
conv2d_5/BiasAddBiasAddconv2d_5/Conv2Dconv2d_5/bias/read*
T0*
data_formatNHWC*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
m
probSigmoidconv2d_5/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
h
strided_slice/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
j
strided_slice/stack_1Const*!
valueB"          *
dtype0*
_output_shapes
:
j
strided_slice/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
Й
strided_sliceStridedSliceprobstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:€€€€€€€€€*
Index0*
T0
f
strided_slice_1/stackConst*
valueB"        *
dtype0*
_output_shapes
:
h
strided_slice_1/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
h
strided_slice_1/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
О
strided_slice_1StridedSlicelabelstrided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0*
Index0
f
strided_slice_2/stackConst*
dtype0*
_output_shapes
:*
valueB"       
h
strided_slice_2/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
h
strided_slice_2/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
О
strided_slice_2StridedSlicelabelstrided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€*
T0*
Index0*
shrink_axis_mask
]
ToInt32Caststrided_slice_2*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0
L
ShapeShapeToInt32*
T0*
out_type0*
_output_shapes
:
_
strided_slice_3/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_3/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_3/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Б
strided_slice_3StridedSliceShapestrided_slice_3/stackstrided_slice_3/stack_1strided_slice_3/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
j
rangeRangerange/startstrided_slice_3range/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
d
stackPackrangeToInt32*
T0*

axis*
N*'
_output_shapes
:€€€€€€€€€
n
GatherNdGatherNdstrided_slicestack*
Tindices0*
Tparams0*#
_output_shapes
:€€€€€€€€€
j
strided_slice_4/stackConst*!
valueB"            *
dtype0*
_output_shapes
:
l
strided_slice_4/stack_1Const*!
valueB"          *
dtype0*
_output_shapes
:
l
strided_slice_4/stack_2Const*!
valueB"         *
dtype0*
_output_shapes
:
Э
strided_slice_4StridedSliceconv2d_5/BiasAddstrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*'
_output_shapes
:€€€€€€€€€*
Index0*
T0
f
strided_slice_5/stackConst*
dtype0*
_output_shapes
:*
valueB"        
h
strided_slice_5/stack_1Const*
dtype0*
_output_shapes
:*
valueB"       
h
strided_slice_5/stack_2Const*
valueB"      *
dtype0*
_output_shapes
:
О
strided_slice_5StridedSlicelabelstrided_slice_5/stackstrided_slice_5/stack_1strided_slice_5/stack_2*
end_mask*#
_output_shapes
:€€€€€€€€€*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask 
f
strided_slice_6/stackConst*
dtype0*
_output_shapes
:*
valueB"       
h
strided_slice_6/stack_1Const*
valueB"       *
dtype0*
_output_shapes
:
h
strided_slice_6/stack_2Const*
dtype0*
_output_shapes
:*
valueB"      
О
strided_slice_6StridedSlicelabelstrided_slice_6/stackstrided_slice_6/stack_1strided_slice_6/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*#
_output_shapes
:€€€€€€€€€
_
	ToInt32_1Caststrided_slice_6*

SrcT0*

DstT0*#
_output_shapes
:€€€€€€€€€
P
Shape_1Shape	ToInt32_1*
_output_shapes
:*
T0*
out_type0
_
strided_slice_7/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_7/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_7/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Г
strided_slice_7StridedSliceShape_1strided_slice_7/stackstrided_slice_7/stack_1strided_slice_7/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
O
range_1/startConst*
value	B : *
dtype0*
_output_shapes
: 
O
range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
p
range_1Rangerange_1/startstrided_slice_7range_1/delta*#
_output_shapes
:€€€€€€€€€*

Tidx0
j
stack_1Packrange_1	ToInt32_1*
T0*

axis*
N*'
_output_shapes
:€€€€€€€€€
t

GatherNd_1GatherNdstrided_slice_4stack_1*
Tindices0*
Tparams0*#
_output_shapes
:€€€€€€€€€
J
sub/xConst*
dtype0*
_output_shapes
: *
valueB
 *ЪЩ?
P
subSubsub/xstrided_slice_1*
T0*#
_output_shapes
:€€€€€€€€€
=
AbsAbssub*
T0*#
_output_shapes
:€€€€€€€€€
u
.sigmoid_cross_entropy_loss/xentropy/zeros_like	ZerosLike
GatherNd_1*
T0*#
_output_shapes
:€€€€€€€€€
™
0sigmoid_cross_entropy_loss/xentropy/GreaterEqualGreaterEqual
GatherNd_1.sigmoid_cross_entropy_loss/xentropy/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
–
*sigmoid_cross_entropy_loss/xentropy/SelectSelect0sigmoid_cross_entropy_loss/xentropy/GreaterEqual
GatherNd_1.sigmoid_cross_entropy_loss/xentropy/zeros_like*#
_output_shapes
:€€€€€€€€€*
T0
h
'sigmoid_cross_entropy_loss/xentropy/NegNeg
GatherNd_1*#
_output_shapes
:€€€€€€€€€*
T0
Ћ
,sigmoid_cross_entropy_loss/xentropy/Select_1Select0sigmoid_cross_entropy_loss/xentropy/GreaterEqual'sigmoid_cross_entropy_loss/xentropy/Neg
GatherNd_1*
T0*#
_output_shapes
:€€€€€€€€€
y
'sigmoid_cross_entropy_loss/xentropy/mulMul
GatherNd_1strided_slice_1*
T0*#
_output_shapes
:€€€€€€€€€
±
'sigmoid_cross_entropy_loss/xentropy/subSub*sigmoid_cross_entropy_loss/xentropy/Select'sigmoid_cross_entropy_loss/xentropy/mul*#
_output_shapes
:€€€€€€€€€*
T0
К
'sigmoid_cross_entropy_loss/xentropy/ExpExp,sigmoid_cross_entropy_loss/xentropy/Select_1*
T0*#
_output_shapes
:€€€€€€€€€
Й
)sigmoid_cross_entropy_loss/xentropy/Log1pLog1p'sigmoid_cross_entropy_loss/xentropy/Exp*
T0*#
_output_shapes
:€€€€€€€€€
ђ
#sigmoid_cross_entropy_loss/xentropyAdd'sigmoid_cross_entropy_loss/xentropy/sub)sigmoid_cross_entropy_loss/xentropy/Log1p*
T0*#
_output_shapes
:€€€€€€€€€
А
=sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeShapeAbs*
_output_shapes
:*
T0*
out_type0
~
<sigmoid_cross_entropy_loss/assert_broadcastable/weights/rankConst*
value	B :*
dtype0*
_output_shapes
: 
Я
<sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeShape#sigmoid_cross_entropy_loss/xentropy*
_output_shapes
:*
T0*
out_type0
}
;sigmoid_cross_entropy_loss/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
}
;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar/xConst*
dtype0*
_output_shapes
: *
value	B : 
ё
9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalarEqual;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar/x<sigmoid_cross_entropy_loss/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
и
Esigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/SwitchSwitch9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: : *
T0

љ
Gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_tIdentityGsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch:1*
T0
*
_output_shapes
: 
ї
Gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_fIdentityEsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
Ѓ
Fsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_idIdentity9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

≈
Gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1Switch9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalarFsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0
*L
_classB
@>loc:@sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar*
_output_shapes
: : 
н
esigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEquallsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switchnsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
о
lsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitch;sigmoid_cross_entropy_loss/assert_broadcastable/values/rankFsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0*N
_classD
B@loc:@sigmoid_cross_entropy_loss/assert_broadcastable/values/rank*
_output_shapes
: : 
т
nsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1Switch<sigmoid_cross_entropy_loss/assert_broadcastable/weights/rankFsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0*O
_classE
CAloc:@sigmoid_cross_entropy_loss/assert_broadcastable/weights/rank*
_output_shapes
: : 
Џ
_sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchesigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankesigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
с
asigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentityasigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
п
asigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentity_sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
ф
`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityesigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: *
T0

І
xsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
≤
tsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimssigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1xsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*

Tdim0*
T0*
_output_shapes

:
З
{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitch<sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeFsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0*O
_classE
CAloc:@sigmoid_cross_entropy_loss/assert_broadcastable/values/shape* 
_output_shapes
::
в
}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1Switch{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*O
_classE
CAloc:@sigmoid_cross_entropy_loss/assert_broadcastable/values/shape* 
_output_shapes
::
Ѓ
ysigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
:*
valueB"      
Я
ysigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
ђ
ssigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillysigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shapeysigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
T0*

index_type0*
_output_shapes

:
Ы
usigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ь
psigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2tsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsssigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeusigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
N*
_output_shapes

:*

Tidx0*
T0
©
zsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
є
vsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsБsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1zsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*

Tdim0*
T0*
_output_shapes

:
Л
}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitch=sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeFsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id*
T0*P
_classF
DBloc:@sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape* 
_output_shapes
::
з
sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1Switch}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*P
_classF
DBloc:@sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape* 
_output_shapes
::
А
Вsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationvsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1psigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b*
T0*
validate_indices(
Ї
zsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeДsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
С
ksigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstb^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B : *
dtype0*
_output_shapes
: 
ь
isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualksigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xzsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
T0*
_output_shapes
: 
—
asigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Switchesigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*x
_classn
ljloc:@sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
б
^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergeasigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
§
Dsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeMerge^sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeIsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
Э
5sigmoid_cross_entropy_loss/assert_broadcastable/ConstConst*
dtype0*
_output_shapes
: *8
value/B- B'weights can not be broadcast to values.
Ж
7sigmoid_cross_entropy_loss/assert_broadcastable/Const_1Const*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
}
7sigmoid_cross_entropy_loss/assert_broadcastable/Const_2Const*
valueB BAbs:0*
dtype0*
_output_shapes
: 
Е
7sigmoid_cross_entropy_loss/assert_broadcastable/Const_3Const*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
Э
7sigmoid_cross_entropy_loss/assert_broadcastable/Const_4Const*6
value-B+ B%sigmoid_cross_entropy_loss/xentropy:0*
dtype0*
_output_shapes
: 
В
7sigmoid_cross_entropy_loss/assert_broadcastable/Const_5Const*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
ы
Bsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/SwitchSwitchDsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeDsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : *
T0

Ј
Dsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_tIdentityDsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
µ
Dsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_fIdentityBsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Switch*
T0
*
_output_shapes
: 
ґ
Csigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_idIdentityDsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
П
@sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/NoOpNoOpE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t
Ё
Nsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependencyIdentityDsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_tA^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/NoOp*
T0
*W
_classM
KIloc:@sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t*
_output_shapes
: 
ш
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
я
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
÷
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
valueB BAbs:0*
dtype0*
_output_shapes
: 
ё
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ц
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *6
value-B+ B%sigmoid_cross_entropy_loss/xentropy:0
џ
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7ConstE^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
valueB B
is_scalar=*
dtype0*
_output_shapes
: 
е
Bsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/AssertAssertIsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/SwitchIsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
Џ
Isigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/SwitchSwitchDsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/MergeCsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*W
_classM
KIloc:@sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge
÷
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1Switch=sigmoid_cross_entropy_loss/assert_broadcastable/weights/shapeCsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
T0*P
_classF
DBloc:@sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape* 
_output_shapes
::
‘
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2Switch<sigmoid_cross_entropy_loss/assert_broadcastable/values/shapeCsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
T0*O
_classE
CAloc:@sigmoid_cross_entropy_loss/assert_broadcastable/values/shape* 
_output_shapes
::
∆
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3Switch9sigmoid_cross_entropy_loss/assert_broadcastable/is_scalarCsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id*
_output_shapes
: : *
T0
*L
_classB
@>loc:@sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar
б
Psigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1IdentityDsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_fC^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert*
T0
*W
_classM
KIloc:@sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
Ш
Asigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeMergePsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1Nsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency*
N*
_output_shapes
: : *
T0

Ѕ
sigmoid_cross_entropy_loss/MulMul#sigmoid_cross_entropy_loss/xentropyAbsB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
T0*#
_output_shapes
:€€€€€€€€€
Ѓ
 sigmoid_cross_entropy_loss/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB: *
dtype0*
_output_shapes
:
•
sigmoid_cross_entropy_loss/SumSumsigmoid_cross_entropy_loss/Mul sigmoid_cross_entropy_loss/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ј
.sigmoid_cross_entropy_loss/num_present/Equal/yConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
Ш
,sigmoid_cross_entropy_loss/num_present/EqualEqualAbs.sigmoid_cross_entropy_loss/num_present/Equal/y*
T0*#
_output_shapes
:€€€€€€€€€
µ
1sigmoid_cross_entropy_loss/num_present/zeros_like	ZerosLikeAbsB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
T0*#
_output_shapes
:€€€€€€€€€
љ
6sigmoid_cross_entropy_loss/num_present/ones_like/ShapeShapeAbsB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
њ
6sigmoid_cross_entropy_loss/num_present/ones_like/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
и
0sigmoid_cross_entropy_loss/num_present/ones_likeFill6sigmoid_cross_entropy_loss/num_present/ones_like/Shape6sigmoid_cross_entropy_loss/num_present/ones_like/Const*#
_output_shapes
:€€€€€€€€€*
T0*

index_type0
ш
-sigmoid_cross_entropy_loss/num_present/SelectSelect,sigmoid_cross_entropy_loss/num_present/Equal1sigmoid_cross_entropy_loss/num_present/zeros_like0sigmoid_cross_entropy_loss/num_present/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
»
[sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeShape-sigmoid_cross_entropy_loss/num_present/Select*
T0*
out_type0*
_output_shapes
:
а
Zsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
value	B :
Б
Zsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeShape#sigmoid_cross_entropy_loss/xentropyB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
я
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
value	B :*
dtype0*
_output_shapes
: 
я
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
value	B : *
dtype0*
_output_shapes
: 
Є
Wsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarEqualYsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar/xZsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
T0*
_output_shapes
: 
¬
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/SwitchSwitchWsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarWsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
T0
*
_output_shapes
: : 
щ
esigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_tIdentityesigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch:1*
_output_shapes
: *
T0

ч
esigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_fIdentitycsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch*
T0
*
_output_shapes
: 
к
dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_idIdentityWsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: *
T0

љ
esigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1SwitchWsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalardsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0
*j
_class`
^\loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
 
Гsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankEqualКsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchМsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1*
T0*
_output_shapes
: 
з
Кsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/SwitchSwitchYsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rankdsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*l
_classb
`^loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank*
_output_shapes
: : 
л
Мsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1SwitchZsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rankdsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*m
_classc
a_loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank*
_output_shapes
: : 
ґ
}sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/SwitchSwitchГsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rankГsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: : 
≠
sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_tIdentitysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1*
T0
*
_output_shapes
: 
Ђ
sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_fIdentity}sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch*
T0
*
_output_shapes
: 
±
~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_idIdentityГsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
T0
*
_output_shapes
: 
©
Цsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dimConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
valueB :
€€€€€€€€€
П
Тsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims
ExpandDimsЭsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Цsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim*
T0*
_output_shapes

:*

Tdim0
А
Щsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/SwitchSwitchZsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapedsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*m
_classc
a_loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
№
Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1SwitchЩsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*m
_classc
a_loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
∞
Чsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB"      *
dtype0*
_output_shapes
:
°
Чsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B :
Й
Сsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeFillЧsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/ShapeЧsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const*
_output_shapes

:*
T0*

index_type0
Э
Уsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axisConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
value	B :*
dtype0*
_output_shapes
: 
Ш
Оsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concatConcatV2Тsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDimsСsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_likeУsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis*
T0*
N*
_output_shapes

:*

Tidx0
Ђ
Шsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dimConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
valueB :
€€€€€€€€€*
dtype0*
_output_shapes
: 
Х
Фsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1
ExpandDimsЯsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1Шsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim*
T0*
_output_shapes

:*

Tdim0
Д
Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/SwitchSwitch[sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapedsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id*
T0*n
_classd
b`loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
б
Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1SwitchЫsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0*n
_classd
b`loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
№
†sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperationDenseToDenseSetOperationФsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1Оsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat*<
_output_shapes*
(:€€€€€€€€€:€€€€€€€€€:*
set_operationa-b*
T0*
validate_indices(
ч
Шsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dimsSizeҐsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1*
_output_shapes
: *
T0*
out_type0
У
Йsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/MergeА^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t*
dtype0*
_output_shapes
: *
value	B : 
ў
Зsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dimsEqualЙsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/xШsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims*
_output_shapes
: *
T0
ќ
sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1SwitchГsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id*
T0
*Щ
_classО
ЛИloc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank*
_output_shapes
: : 
Љ
|sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/MergeMergesigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1Зsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims*
T0
*
N*
_output_shapes
: : 
ю
bsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/MergeMerge|sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Mergegsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1*
T0
*
N*
_output_shapes
: : 
€
Ssigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
и
Usigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_1ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB Bweights.shape=*
dtype0*
_output_shapes
: 
Й
Usigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_2ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*@
value7B5 B/sigmoid_cross_entropy_loss/num_present/Select:0*
dtype0*
_output_shapes
: 
з
Usigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_3ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
€
Usigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_4ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*6
value-B+ B%sigmoid_cross_entropy_loss/xentropy:0*
dtype0*
_output_shapes
: 
д
Usigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/Const_5ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
’
`sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/SwitchSwitchbsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Mergebsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: : 
у
bsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_tIdentitybsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch:1*
T0
*
_output_shapes
: 
с
bsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fIdentity`sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Switch*
_output_shapes
: *
T0

т
asigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_idIdentitybsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
T0
*
_output_shapes
: 
П
^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOpNoOpB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
’
lsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependencyIdentitybsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t_^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/NoOp*
_output_shapes
: *
T0
*u
_classk
igloc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t
ш
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*8
value/B- B'weights can not be broadcast to values.*
dtype0*
_output_shapes
: 
я
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB Bweights.shape=
А
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *@
value7B5 B/sigmoid_cross_entropy_loss/num_present/Select:0
ё
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
valueB Bvalues.shape=*
dtype0*
_output_shapes
: 
ц
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *6
value-B+ B%sigmoid_cross_entropy_loss/xentropy:0
џ
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Mergec^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
dtype0*
_output_shapes
: *
valueB B
is_scalar=
ѓ	
`sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/AssertAssertgsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switchgsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3*
T
2	
*
	summarize
“
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/SwitchSwitchbsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Mergeasigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*u
_classk
igloc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge*
_output_shapes
: : 
ќ
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1Switch[sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shapeasigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*n
_classd
b`loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape* 
_output_shapes
::
ћ
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2SwitchZsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shapeasigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0*m
_classc
a_loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape* 
_output_shapes
::
Њ
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3SwitchWsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalarasigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id*
T0
*j
_class`
^\loc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar*
_output_shapes
: : 
ў
nsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1Identitybsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_fa^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert*
T0
*u
_classk
igloc:@sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f*
_output_shapes
: 
т
_sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/MergeMergensigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1lsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
—
Hsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeShape#sigmoid_cross_entropy_loss/xentropyB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge`^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
T0*
out_type0*
_output_shapes
:
≥
Hsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge`^sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ю
Bsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_likeFillHsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/ShapeHsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like/Const*
T0*

index_type0*#
_output_shapes
:€€€€€€€€€
а
8sigmoid_cross_entropy_loss/num_present/broadcast_weightsMul-sigmoid_cross_entropy_loss/num_present/SelectBsigmoid_cross_entropy_loss/num_present/broadcast_weights/ones_like*
T0*#
_output_shapes
:€€€€€€€€€
Ї
,sigmoid_cross_entropy_loss/num_present/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB: *
dtype0*
_output_shapes
:
”
&sigmoid_cross_entropy_loss/num_presentSum8sigmoid_cross_entropy_loss/num_present/broadcast_weights,sigmoid_cross_entropy_loss/num_present/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
©
"sigmoid_cross_entropy_loss/Const_1ConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
©
 sigmoid_cross_entropy_loss/Sum_1Sumsigmoid_cross_entropy_loss/Sum"sigmoid_cross_entropy_loss/Const_1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
: 
≠
$sigmoid_cross_entropy_loss/Greater/yConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *    *
dtype0*
_output_shapes
: 
Ь
"sigmoid_cross_entropy_loss/GreaterGreater&sigmoid_cross_entropy_loss/num_present$sigmoid_cross_entropy_loss/Greater/y*
T0*
_output_shapes
: 
Ђ
"sigmoid_cross_entropy_loss/Equal/yConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
Ц
 sigmoid_cross_entropy_loss/EqualEqual&sigmoid_cross_entropy_loss/num_present"sigmoid_cross_entropy_loss/Equal/y*
T0*
_output_shapes
: 
±
*sigmoid_cross_entropy_loss/ones_like/ShapeConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB *
dtype0*
_output_shapes
: 
≥
*sigmoid_cross_entropy_loss/ones_like/ConstConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Ј
$sigmoid_cross_entropy_loss/ones_likeFill*sigmoid_cross_entropy_loss/ones_like/Shape*sigmoid_cross_entropy_loss/ones_like/Const*
T0*

index_type0*
_output_shapes
: 
Љ
!sigmoid_cross_entropy_loss/SelectSelect sigmoid_cross_entropy_loss/Equal$sigmoid_cross_entropy_loss/ones_like&sigmoid_cross_entropy_loss/num_present*
T0*
_output_shapes
: 
П
sigmoid_cross_entropy_loss/divRealDiv sigmoid_cross_entropy_loss/Sum_1!sigmoid_cross_entropy_loss/Select*
T0*
_output_shapes
: 
Ѓ
%sigmoid_cross_entropy_loss/zeros_likeConstB^sigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Merge*
dtype0*
_output_shapes
: *
valueB
 *    
ґ
 sigmoid_cross_entropy_loss/valueSelect"sigmoid_cross_entropy_loss/Greatersigmoid_cross_entropy_loss/div%sigmoid_cross_entropy_loss/zeros_like*
T0*
_output_shapes
: 
Ђ
AddNAddN+conv2d/kernel/Regularizer/l1_l2_regularizer)conv2d/bias/Regularizer/l1_l2_regularizer-conv2d_1/kernel/Regularizer/l1_l2_regularizer+conv2d_1/bias/Regularizer/l1_l2_regularizer-conv2d_2/kernel/Regularizer/l1_l2_regularizer+conv2d_2/bias/Regularizer/l1_l2_regularizer-conv2d_3/kernel/Regularizer/l1_l2_regularizer+conv2d_3/bias/Regularizer/l1_l2_regularizer-conv2d_4/kernel/Regularizer/l1_l2_regularizer+conv2d_4/bias/Regularizer/l1_l2_regularizer+conv2d_5/bias/Regularizer/l1_l2_regularizer*
T0*
N*
_output_shapes
: 
S
addAdd sigmoid_cross_entropy_loss/valueAddN*
T0*
_output_shapes
: 
F
RoundRoundGatherNd*
T0*#
_output_shapes
:€€€€€€€€€
T
EqualEqualRoundstrided_slice_1*
T0*#
_output_shapes
:€€€€€€€€€
S
ToFloatCastEqual*

DstT0*#
_output_shapes
:€€€€€€€€€*

SrcT0

O
ConstConst*
valueB: *
dtype0*
_output_shapes
:
Z
MeanMeanToFloatConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
H
Round_1RoundGatherNd*
T0*#
_output_shapes
:€€€€€€€€€
\
precision/CastCastRound_1*

DstT0
*#
_output_shapes
:€€€€€€€€€*

SrcT0
f
precision/Cast_1Caststrided_slice_1*

SrcT0*

DstT0
*#
_output_shapes
:€€€€€€€€€
b
 precision/true_positives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Й
precision/true_positives/EqualEqualprecision/Cast_1 precision/true_positives/Equal/y*#
_output_shapes
:€€€€€€€€€*
T0

d
"precision/true_positives/Equal_1/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z
Л
 precision/true_positives/Equal_1Equalprecision/Cast"precision/true_positives/Equal_1/y*
T0
*#
_output_shapes
:€€€€€€€€€
Ш
#precision/true_positives/LogicalAnd
LogicalAndprecision/true_positives/Equal precision/true_positives/Equal_1*#
_output_shapes
:€€€€€€€€€
O
Gprecision/true_positives/assert_type/statically_determined_correct_typeNoOp
®
0precision/true_positives/count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *1
_class'
%#loc:@precision/true_positives/count
µ
precision/true_positives/count
VariableV2*
shared_name *1
_class'
%#loc:@precision/true_positives/count*
	container *
shape: *
dtype0*
_output_shapes
: 
ю
%precision/true_positives/count/AssignAssignprecision/true_positives/count0precision/true_positives/count/Initializer/zeros*
T0*1
_class'
%#loc:@precision/true_positives/count*
validate_shape(*
_output_shapes
: *
use_locking(
£
#precision/true_positives/count/readIdentityprecision/true_positives/count*
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
К
 precision/true_positives/ToFloatCast#precision/true_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
s
!precision/true_positives/IdentityIdentity#precision/true_positives/count/read*
_output_shapes
: *
T0
h
precision/true_positives/ConstConst*
dtype0*
_output_shapes
:*
valueB: 
£
precision/true_positives/SumSum precision/true_positives/ToFloatprecision/true_positives/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
‘
"precision/true_positives/AssignAdd	AssignAddprecision/true_positives/countprecision/true_positives/Sum*
use_locking( *
T0*1
_class'
%#loc:@precision/true_positives/count*
_output_shapes
: 
c
!precision/false_positives/Equal/yConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Л
precision/false_positives/EqualEqualprecision/Cast_1!precision/false_positives/Equal/y*
T0
*#
_output_shapes
:€€€€€€€€€
e
#precision/false_positives/Equal_1/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
Н
!precision/false_positives/Equal_1Equalprecision/Cast#precision/false_positives/Equal_1/y*
T0
*#
_output_shapes
:€€€€€€€€€
Ы
$precision/false_positives/LogicalAnd
LogicalAndprecision/false_positives/Equal!precision/false_positives/Equal_1*#
_output_shapes
:€€€€€€€€€
P
Hprecision/false_positives/assert_type/statically_determined_correct_typeNoOp
™
1precision/false_positives/count/Initializer/zerosConst*
valueB
 *    *2
_class(
&$loc:@precision/false_positives/count*
dtype0*
_output_shapes
: 
Ј
precision/false_positives/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name *2
_class(
&$loc:@precision/false_positives/count*
	container *
shape: 
В
&precision/false_positives/count/AssignAssignprecision/false_positives/count1precision/false_positives/count/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*2
_class(
&$loc:@precision/false_positives/count
¶
$precision/false_positives/count/readIdentityprecision/false_positives/count*
T0*2
_class(
&$loc:@precision/false_positives/count*
_output_shapes
: 
М
!precision/false_positives/ToFloatCast$precision/false_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
u
"precision/false_positives/IdentityIdentity$precision/false_positives/count/read*
T0*
_output_shapes
: 
i
precision/false_positives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
¶
precision/false_positives/SumSum!precision/false_positives/ToFloatprecision/false_positives/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
Ў
#precision/false_positives/AssignAdd	AssignAddprecision/false_positives/countprecision/false_positives/Sum*
_output_shapes
: *
use_locking( *
T0*2
_class(
&$loc:@precision/false_positives/count
|
precision/addAdd!precision/true_positives/Identity"precision/false_positives/Identity*
T0*
_output_shapes
: 
X
precision/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
precision/GreaterGreaterprecision/addprecision/Greater/y*
T0*
_output_shapes
: 
~
precision/add_1Add!precision/true_positives/Identity"precision/false_positives/Identity*
_output_shapes
: *
T0
m
precision/divRealDiv!precision/true_positives/Identityprecision/add_1*
T0*
_output_shapes
: 
V
precision/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
o
precision/valueSelectprecision/Greaterprecision/divprecision/value/e*
T0*
_output_shapes
: 
А
precision/add_2Add"precision/true_positives/AssignAdd#precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
Z
precision/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
g
precision/Greater_1Greaterprecision/add_2precision/Greater_1/y*
_output_shapes
: *
T0
А
precision/add_3Add"precision/true_positives/AssignAdd#precision/false_positives/AssignAdd*
T0*
_output_shapes
: 
p
precision/div_1RealDiv"precision/true_positives/AssignAddprecision/add_3*
T0*
_output_shapes
: 
Z
precision/update_op/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
{
precision/update_opSelectprecision/Greater_1precision/div_1precision/update_op/e*
T0*
_output_shapes
: 
H
Round_2RoundGatherNd*
T0*#
_output_shapes
:€€€€€€€€€
Y
recall/CastCastRound_2*

DstT0
*#
_output_shapes
:€€€€€€€€€*

SrcT0
c
recall/Cast_1Caststrided_slice_1*

SrcT0*

DstT0
*#
_output_shapes
:€€€€€€€€€
_
recall/true_positives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
А
recall/true_positives/EqualEqualrecall/Cast_1recall/true_positives/Equal/y*
T0
*#
_output_shapes
:€€€€€€€€€
a
recall/true_positives/Equal_1/yConst*
dtype0
*
_output_shapes
: *
value	B
 Z
В
recall/true_positives/Equal_1Equalrecall/Castrecall/true_positives/Equal_1/y*#
_output_shapes
:€€€€€€€€€*
T0

П
 recall/true_positives/LogicalAnd
LogicalAndrecall/true_positives/Equalrecall/true_positives/Equal_1*#
_output_shapes
:€€€€€€€€€
L
Drecall/true_positives/assert_type/statically_determined_correct_typeNoOp
Ґ
-recall/true_positives/count/Initializer/zerosConst*
valueB
 *    *.
_class$
" loc:@recall/true_positives/count*
dtype0*
_output_shapes
: 
ѓ
recall/true_positives/count
VariableV2*
shared_name *.
_class$
" loc:@recall/true_positives/count*
	container *
shape: *
dtype0*
_output_shapes
: 
т
"recall/true_positives/count/AssignAssignrecall/true_positives/count-recall/true_positives/count/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@recall/true_positives/count*
validate_shape(*
_output_shapes
: 
Ъ
 recall/true_positives/count/readIdentityrecall/true_positives/count*
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
Д
recall/true_positives/ToFloatCast recall/true_positives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
m
recall/true_positives/IdentityIdentity recall/true_positives/count/read*
T0*
_output_shapes
: 
e
recall/true_positives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Ъ
recall/true_positives/SumSumrecall/true_positives/ToFloatrecall/true_positives/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
»
recall/true_positives/AssignAdd	AssignAddrecall/true_positives/countrecall/true_positives/Sum*
use_locking( *
T0*.
_class$
" loc:@recall/true_positives/count*
_output_shapes
: 
`
recall/false_negatives/Equal/yConst*
value	B
 Z*
dtype0
*
_output_shapes
: 
В
recall/false_negatives/EqualEqualrecall/Cast_1recall/false_negatives/Equal/y*
T0
*#
_output_shapes
:€€€€€€€€€
b
 recall/false_negatives/Equal_1/yConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
Д
recall/false_negatives/Equal_1Equalrecall/Cast recall/false_negatives/Equal_1/y*#
_output_shapes
:€€€€€€€€€*
T0

Т
!recall/false_negatives/LogicalAnd
LogicalAndrecall/false_negatives/Equalrecall/false_negatives/Equal_1*#
_output_shapes
:€€€€€€€€€
M
Erecall/false_negatives/assert_type/statically_determined_correct_typeNoOp
§
.recall/false_negatives/count/Initializer/zerosConst*
valueB
 *    */
_class%
#!loc:@recall/false_negatives/count*
dtype0*
_output_shapes
: 
±
recall/false_negatives/count
VariableV2*
dtype0*
_output_shapes
: *
shared_name */
_class%
#!loc:@recall/false_negatives/count*
	container *
shape: 
ц
#recall/false_negatives/count/AssignAssignrecall/false_negatives/count.recall/false_negatives/count/Initializer/zeros*
T0*/
_class%
#!loc:@recall/false_negatives/count*
validate_shape(*
_output_shapes
: *
use_locking(
Э
!recall/false_negatives/count/readIdentityrecall/false_negatives/count*
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: 
Ж
recall/false_negatives/ToFloatCast!recall/false_negatives/LogicalAnd*

SrcT0
*

DstT0*#
_output_shapes
:€€€€€€€€€
o
recall/false_negatives/IdentityIdentity!recall/false_negatives/count/read*
T0*
_output_shapes
: 
f
recall/false_negatives/ConstConst*
valueB: *
dtype0*
_output_shapes
:
Э
recall/false_negatives/SumSumrecall/false_negatives/ToFloatrecall/false_negatives/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
ћ
 recall/false_negatives/AssignAdd	AssignAddrecall/false_negatives/countrecall/false_negatives/Sum*
T0*/
_class%
#!loc:@recall/false_negatives/count*
_output_shapes
: *
use_locking( 
s

recall/addAddrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
U
recall/Greater/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
X
recall/GreaterGreater
recall/addrecall/Greater/y*
_output_shapes
: *
T0
u
recall/add_1Addrecall/true_positives/Identityrecall/false_negatives/Identity*
T0*
_output_shapes
: 
d

recall/divRealDivrecall/true_positives/Identityrecall/add_1*
T0*
_output_shapes
: 
S
recall/value/eConst*
valueB
 *    *
dtype0*
_output_shapes
: 
c
recall/valueSelectrecall/Greater
recall/divrecall/value/e*
T0*
_output_shapes
: 
w
recall/add_2Addrecall/true_positives/AssignAdd recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
W
recall/Greater_1/yConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
recall/Greater_1Greaterrecall/add_2recall/Greater_1/y*
T0*
_output_shapes
: 
w
recall/add_3Addrecall/true_positives/AssignAdd recall/false_negatives/AssignAdd*
T0*
_output_shapes
: 
g
recall/div_1RealDivrecall/true_positives/AssignAddrecall/add_3*
T0*
_output_shapes
: 
W
recall/update_op/eConst*
dtype0*
_output_shapes
: *
valueB
 *    
o
recall/update_opSelectrecall/Greater_1recall/div_1recall/update_op/e*
_output_shapes
: *
T0
R
mulMulprecision/update_oprecall/update_op*
T0*
_output_shapes
: 
L
mul_1/xConst*
valueB
 *  †?*
dtype0*
_output_shapes
: 
;
mul_1Mulmul_1/xmul*
T0*
_output_shapes
: 
L
mul_2/xConst*
valueB
 *  А>*
dtype0*
_output_shapes
: 
K
mul_2Mulmul_2/xprecision/update_op*
T0*
_output_shapes
: 
F
add_1Addmul_2recall/update_op*
_output_shapes
: *
T0
A
truedivRealDivmul_1add_1*
_output_shapes
: *
T0
ƒ
gradients/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
 
gradients/grad_ys_0Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB
 *  А?
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
Ѓ
#gradients/add_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Fill
±
+gradients/add_grad/tuple/control_dependencyIdentitygradients/Fill$^gradients/add_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
≥
-gradients/add_grad/tuple/control_dependency_1Identitygradients/Fill$^gradients/add_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
с
:gradients/sigmoid_cross_entropy_loss/value_grad/zeros_likeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
о
6gradients/sigmoid_cross_entropy_loss/value_grad/SelectSelect"sigmoid_cross_entropy_loss/Greater+gradients/add_grad/tuple/control_dependency:gradients/sigmoid_cross_entropy_loss/value_grad/zeros_like*
T0*
_output_shapes
: 
р
8gradients/sigmoid_cross_entropy_loss/value_grad/Select_1Select"sigmoid_cross_entropy_loss/Greater:gradients/sigmoid_cross_entropy_loss/value_grad/zeros_like+gradients/add_grad/tuple/control_dependency*
T0*
_output_shapes
: 
Ѓ
@gradients/sigmoid_cross_entropy_loss/value_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_17^gradients/sigmoid_cross_entropy_loss/value_grad/Select9^gradients/sigmoid_cross_entropy_loss/value_grad/Select_1
ї
Hgradients/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependencyIdentity6gradients/sigmoid_cross_entropy_loss/value_grad/SelectA^gradients/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/sigmoid_cross_entropy_loss/value_grad/Select*
_output_shapes
: 
Ѕ
Jgradients/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependency_1Identity8gradients/sigmoid_cross_entropy_loss/value_grad/Select_1A^gradients/sigmoid_cross_entropy_loss/value_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/sigmoid_cross_entropy_loss/value_grad/Select_1*
_output_shapes
: 
ќ
$gradients/AddN_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/add_grad/tuple/control_dependency_1
“
,gradients/AddN_grad/tuple/control_dependencyIdentity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_1Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_2Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_3Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_4Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
‘
.gradients/AddN_grad/tuple/control_dependency_5Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_6Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_7Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
‘
.gradients/AddN_grad/tuple/control_dependency_8Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
‘
.gradients/AddN_grad/tuple/control_dependency_9Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
_output_shapes
: *
T0*!
_class
loc:@gradients/Fill
’
/gradients/AddN_grad/tuple/control_dependency_10Identity-gradients/add_grad/tuple/control_dependency_1%^gradients/AddN_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill*
_output_shapes
: 
и
3gradients/sigmoid_cross_entropy_loss/div_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
к
5gradients/sigmoid_cross_entropy_loss/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
Е
Cgradients/sigmoid_cross_entropy_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/sigmoid_cross_entropy_loss/div_grad/Shape5gradients/sigmoid_cross_entropy_loss/div_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ќ
5gradients/sigmoid_cross_entropy_loss/div_grad/RealDivRealDivHgradients/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependency!sigmoid_cross_entropy_loss/Select*
_output_shapes
: *
T0
т
1gradients/sigmoid_cross_entropy_loss/div_grad/SumSum5gradients/sigmoid_cross_entropy_loss/div_grad/RealDivCgradients/sigmoid_cross_entropy_loss/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
„
5gradients/sigmoid_cross_entropy_loss/div_grad/ReshapeReshape1gradients/sigmoid_cross_entropy_loss/div_grad/Sum3gradients/sigmoid_cross_entropy_loss/div_grad/Shape*
_output_shapes
: *
T0*
Tshape0
н
1gradients/sigmoid_cross_entropy_loss/div_grad/NegNeg sigmoid_cross_entropy_loss/Sum_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
: *
T0
є
7gradients/sigmoid_cross_entropy_loss/div_grad/RealDiv_1RealDiv1gradients/sigmoid_cross_entropy_loss/div_grad/Neg!sigmoid_cross_entropy_loss/Select*
_output_shapes
: *
T0
њ
7gradients/sigmoid_cross_entropy_loss/div_grad/RealDiv_2RealDiv7gradients/sigmoid_cross_entropy_loss/div_grad/RealDiv_1!sigmoid_cross_entropy_loss/Select*
_output_shapes
: *
T0
№
1gradients/sigmoid_cross_entropy_loss/div_grad/mulMulHgradients/sigmoid_cross_entropy_loss/value_grad/tuple/control_dependency7gradients/sigmoid_cross_entropy_loss/div_grad/RealDiv_2*
T0*
_output_shapes
: 
т
3gradients/sigmoid_cross_entropy_loss/div_grad/Sum_1Sum1gradients/sigmoid_cross_entropy_loss/div_grad/mulEgradients/sigmoid_cross_entropy_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Ё
7gradients/sigmoid_cross_entropy_loss/div_grad/Reshape_1Reshape3gradients/sigmoid_cross_entropy_loss/div_grad/Sum_15gradients/sigmoid_cross_entropy_loss/div_grad/Shape_1*
_output_shapes
: *
T0*
Tshape0
™
>gradients/sigmoid_cross_entropy_loss/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_16^gradients/sigmoid_cross_entropy_loss/div_grad/Reshape8^gradients/sigmoid_cross_entropy_loss/div_grad/Reshape_1
µ
Fgradients/sigmoid_cross_entropy_loss/div_grad/tuple/control_dependencyIdentity5gradients/sigmoid_cross_entropy_loss/div_grad/Reshape?^gradients/sigmoid_cross_entropy_loss/div_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/sigmoid_cross_entropy_loss/div_grad/Reshape*
_output_shapes
: 
ї
Hgradients/sigmoid_cross_entropy_loss/div_grad/tuple/control_dependency_1Identity7gradients/sigmoid_cross_entropy_loss/div_grad/Reshape_1?^gradients/sigmoid_cross_entropy_loss/div_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/sigmoid_cross_entropy_loss/div_grad/Reshape_1*
_output_shapes
: 
»
>gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulMul,gradients/AddN_grad/tuple/control_dependency2conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
…
@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul,gradients/AddN_grad/tuple/control_dependency1conv2d/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
…
Kgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*Q
_classG
ECloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
з
Ugradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
∆
<gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_10conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
«
>gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_1/conv2d/bias/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
√
Igradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1=^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul?^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
ў
Qgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity<gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/MulJ^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
я
Sgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity>gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1J^gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
ќ
@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_24conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss*
_output_shapes
: *
T0
ѕ
Bgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_23conv2d_1/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
ѕ
Mgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1A^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
й
Ugradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
п
Wgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
 
>gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_32conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ћ
@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_31conv2d_1/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
…
Kgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul
з
Ugradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
ќ
@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_44conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
ѕ
Bgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_43conv2d_2/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
ѕ
Mgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1A^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
й
Ugradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
п
Wgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
 
>gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_52conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ћ
@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_51conv2d_2/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
…
Kgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul
з
Ugradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
ќ
@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_64conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
ѕ
Bgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_63conv2d_3/kernel/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
ѕ
Mgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1A^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
й
Ugradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*S
_classI
GEloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul
п
Wgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*U
_classK
IGloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
 
>gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_72conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ћ
@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_71conv2d_3/bias/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
…
Kgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul
з
Ugradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
ќ
@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_84conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
ѕ
Bgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_83conv2d_4/kernel/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
ѕ
Mgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1A^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulC^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1
й
Ugradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/MulN^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul*
_output_shapes
: 
п
Wgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1IdentityBgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1N^gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
 
>gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulMul.gradients/AddN_grad/tuple/control_dependency_92conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
Ћ
@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul.gradients/AddN_grad/tuple/control_dependency_91conv2d_4/bias/Regularizer/l1_l2_regularizer/scale*
_output_shapes
: *
T0
…
Kgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul
з
Ugradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
Ћ
>gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulMul/gradients/AddN_grad/tuple/control_dependency_102conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss*
T0*
_output_shapes
: 
ћ
@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1Mul/gradients/AddN_grad/tuple/control_dependency_101conv2d_5/bias/Regularizer/l1_l2_regularizer/scale*
T0*
_output_shapes
: 
…
Kgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulA^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1
б
Sgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependencyIdentity>gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/MulL^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
_output_shapes
: *
T0*Q
_classG
ECloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul
з
Ugradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1Identity@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1L^gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/Mul_1*
_output_shapes
: 
т
=gradients/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
ш
7gradients/sigmoid_cross_entropy_loss/Sum_1_grad/ReshapeReshapeFgradients/sigmoid_cross_entropy_loss/div_grad/tuple/control_dependency=gradients/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
: 
к
5gradients/sigmoid_cross_entropy_loss/Sum_1_grad/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
я
4gradients/sigmoid_cross_entropy_loss/Sum_1_grad/TileTile7gradients/sigmoid_cross_entropy_loss/Sum_1_grad/Reshape5gradients/sigmoid_cross_entropy_loss/Sum_1_grad/Const*
T0*
_output_shapes
: *

Tmultiples0
и
Egradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d/kernel/readUgradients/conv2d/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*&
_output_shapes
: *
T0
÷
Cgradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d/bias/readSgradients/conv2d/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
о
Ggradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_1/kernel/readWgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*&
_output_shapes
: 0*
T0
№
Egradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_1/bias/readUgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:0
о
Ggradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_2/kernel/readWgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*&
_output_shapes
:0@
№
Egradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_2/bias/readUgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:@
п
Ggradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_3/kernel/readWgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:@О
Ё
Egradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_3/bias/readUgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:О
р
Ggradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_4/kernel/readWgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*(
_output_shapes
:ОА
Ё
Egradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_4/bias/readUgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes	
:А
№
Egradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mulMulconv2d_5/bias/readUgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
ч
;gradients/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB:*
dtype0*
_output_shapes
:
ж
5gradients/sigmoid_cross_entropy_loss/Sum_grad/ReshapeReshape4gradients/sigmoid_cross_entropy_loss/Sum_1_grad/Tile;gradients/sigmoid_cross_entropy_loss/Sum_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
Г
3gradients/sigmoid_cross_entropy_loss/Sum_grad/ShapeShapesigmoid_cross_entropy_loss/Mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
ж
2gradients/sigmoid_cross_entropy_loss/Sum_grad/TileTile5gradients/sigmoid_cross_entropy_loss/Sum_grad/Reshape3gradients/sigmoid_cross_entropy_loss/Sum_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
И
3gradients/sigmoid_cross_entropy_loss/Mul_grad/ShapeShape#sigmoid_cross_entropy_loss/xentropy$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
к
5gradients/sigmoid_cross_entropy_loss/Mul_grad/Shape_1ShapeAbs$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Е
Cgradients/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgs3gradients/sigmoid_cross_entropy_loss/Mul_grad/Shape5gradients/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Я
1gradients/sigmoid_cross_entropy_loss/Mul_grad/MulMul2gradients/sigmoid_cross_entropy_loss/Sum_grad/TileAbs*
T0*#
_output_shapes
:€€€€€€€€€
р
1gradients/sigmoid_cross_entropy_loss/Mul_grad/SumSum1gradients/sigmoid_cross_entropy_loss/Mul_grad/MulCgradients/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
д
5gradients/sigmoid_cross_entropy_loss/Mul_grad/ReshapeReshape1gradients/sigmoid_cross_entropy_loss/Mul_grad/Sum3gradients/sigmoid_cross_entropy_loss/Mul_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
Ѕ
3gradients/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Mul#sigmoid_cross_entropy_loss/xentropy2gradients/sigmoid_cross_entropy_loss/Sum_grad/Tile*
T0*#
_output_shapes
:€€€€€€€€€
ц
3gradients/sigmoid_cross_entropy_loss/Mul_grad/Sum_1Sum3gradients/sigmoid_cross_entropy_loss/Mul_grad/Mul_1Egradients/sigmoid_cross_entropy_loss/Mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
к
7gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1Reshape3gradients/sigmoid_cross_entropy_loss/Mul_grad/Sum_15gradients/sigmoid_cross_entropy_loss/Mul_grad/Shape_1*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
™
>gradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_16^gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape8^gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1
¬
Fgradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyIdentity5gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape?^gradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape*#
_output_shapes
:€€€€€€€€€
»
Hgradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependency_1Identity7gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1?^gradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*J
_class@
><loc:@gradients/sigmoid_cross_entropy_loss/Mul_grad/Reshape_1
С
8gradients/sigmoid_cross_entropy_loss/xentropy_grad/ShapeShape'sigmoid_cross_entropy_loss/xentropy/sub$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Х
:gradients/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1Shape)sigmoid_cross_entropy_loss/xentropy/Log1p$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Ф
Hgradients/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgsBroadcastGradientArgs8gradients/sigmoid_cross_entropy_loss/xentropy_grad/Shape:gradients/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
П
6gradients/sigmoid_cross_entropy_loss/xentropy_grad/SumSumFgradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyHgradients/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
у
:gradients/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeReshape6gradients/sigmoid_cross_entropy_loss/xentropy_grad/Sum8gradients/sigmoid_cross_entropy_loss/xentropy_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
У
8gradients/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1SumFgradients/sigmoid_cross_entropy_loss/Mul_grad/tuple/control_dependencyJgradients/sigmoid_cross_entropy_loss/xentropy_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
щ
<gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1Reshape8gradients/sigmoid_cross_entropy_loss/xentropy_grad/Sum_1:gradients/sigmoid_cross_entropy_loss/xentropy_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
є
Cgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1;^gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape=^gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1
÷
Kgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyIdentity:gradients/sigmoid_cross_entropy_loss/xentropy_grad/ReshapeD^gradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*M
_classC
A?loc:@gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape*#
_output_shapes
:€€€€€€€€€
№
Mgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1Identity<gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1D^gradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/group_deps*
T0*O
_classE
CAloc:@gradients/sigmoid_cross_entropy_loss/xentropy_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
Ш
<gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/ShapeShape*sigmoid_cross_entropy_loss/xentropy/Select$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Ч
>gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1Shape'sigmoid_cross_entropy_loss/xentropy/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
†
Lgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape>gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
Ь
:gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/SumSumKgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyLgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
€
>gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeReshape:gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum<gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
†
<gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1SumKgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependencyNgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ґ
:gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/NegNeg<gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Sum_1*
T0*
_output_shapes
:
Г
@gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1Reshape:gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Neg>gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
≈
Ggradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeA^gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1
ж
Ogradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencyIdentity>gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/ReshapeH^gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*Q
_classG
ECloc:@gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape
м
Qgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1Identity@gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1H^gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
≈
>gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/xConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1N^gradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1*
valueB
 *  А?*
dtype0*
_output_shapes
: 
Џ
<gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/addAdd>gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add/x'sigmoid_cross_entropy_loss/xentropy/Exp*
T0*#
_output_shapes
:€€€€€€€€€
љ
Cgradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal
Reciprocal<gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/add*#
_output_shapes
:€€€€€€€€€*
T0
Е
<gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mulMulMgradients/sigmoid_cross_entropy_loss/xentropy_grad/tuple/control_dependency_1Cgradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/Reciprocal*
T0*#
_output_shapes
:€€€€€€€€€
э
Dgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like	ZerosLike
GatherNd_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*#
_output_shapes
:€€€€€€€€€
Ѕ
@gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectSelect0sigmoid_cross_entropy_loss/xentropy/GreaterEqualOgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependencyDgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
√
Bgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1Select0sigmoid_cross_entropy_loss/xentropy/GreaterEqualDgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/zeros_likeOgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
ћ
Jgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1A^gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectC^gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1
р
Rgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependencyIdentity@gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/SelectK^gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select*#
_output_shapes
:€€€€€€€€€
ц
Tgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependency_1IdentityBgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1K^gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select_1*#
_output_shapes
:€€€€€€€€€
ш
<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/ShapeShape
GatherNd_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
€
>gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1Shapestrided_slice_1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
†
Lgradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgsBroadcastGradientArgs<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape>gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
”
:gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/MulMulQgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1strided_slice_1*
T0*#
_output_shapes
:€€€€€€€€€
Л
:gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/SumSum:gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/MulLgradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
€
>gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeReshape:gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape*#
_output_shapes
:€€€€€€€€€*
T0*
Tshape0
–
<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1Mul
GatherNd_1Qgradients/sigmoid_cross_entropy_loss/xentropy/sub_grad/tuple/control_dependency_1*
T0*#
_output_shapes
:€€€€€€€€€
С
<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1Sum<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Mul_1Ngradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Е
@gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1Reshape<gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Sum_1>gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Shape_1*
T0*
Tshape0*#
_output_shapes
:€€€€€€€€€
≈
Ggradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1?^gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeA^gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1
ж
Ogradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencyIdentity>gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/ReshapeH^gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*#
_output_shapes
:€€€€€€€€€*
T0*Q
_classG
ECloc:@gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape
м
Qgradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependency_1Identity@gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1H^gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/group_deps*
T0*S
_classI
GEloc:@gradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/Reshape_1*#
_output_shapes
:€€€€€€€€€
÷
:gradients/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulMul<gradients/sigmoid_cross_entropy_loss/xentropy/Log1p_grad/mul'sigmoid_cross_entropy_loss/xentropy/Exp*
T0*#
_output_shapes
:€€€€€€€€€
Ь
Fgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like	ZerosLike'sigmoid_cross_entropy_loss/xentropy/Neg$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*#
_output_shapes
:€€€€€€€€€*
T0
∞
Bgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectSelect0sigmoid_cross_entropy_loss/xentropy/GreaterEqual:gradients/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mulFgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like*
T0*#
_output_shapes
:€€€€€€€€€
≤
Dgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1Select0sigmoid_cross_entropy_loss/xentropy/GreaterEqualFgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/zeros_like:gradients/sigmoid_cross_entropy_loss/xentropy/Exp_grad/mul*
T0*#
_output_shapes
:€€€€€€€€€
“
Lgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1C^gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectE^gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1
ш
Tgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependencyIdentityBgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/SelectM^gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*
T0*U
_classK
IGloc:@gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select*#
_output_shapes
:€€€€€€€€€
ю
Vgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1IdentityDgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1M^gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/group_deps*
T0*W
_classM
KIloc:@gradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/Select_1*#
_output_shapes
:€€€€€€€€€
≈
:gradients/sigmoid_cross_entropy_loss/xentropy/Neg_grad/NegNegTgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency*
T0*#
_output_shapes
:€€€€€€€€€
џ
gradients/AddNAddNRgradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/tuple/control_dependencyOgradients/sigmoid_cross_entropy_loss/xentropy/mul_grad/tuple/control_dependencyVgradients/sigmoid_cross_entropy_loss/xentropy/Select_1_grad/tuple/control_dependency_1:gradients/sigmoid_cross_entropy_loss/xentropy/Neg_grad/Neg*
N*#
_output_shapes
:€€€€€€€€€*
T0*S
_classI
GEloc:@gradients/sigmoid_cross_entropy_loss/xentropy/Select_grad/Select
а
gradients/GatherNd_1_grad/ShapeShapestrided_slice_4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
ђ
#gradients/GatherNd_1_grad/ScatterNd	ScatterNdstack_1gradients/AddNgradients/GatherNd_1_grad/Shape*
Tindices0*
T0*'
_output_shapes
:€€€€€€€€€
ж
$gradients/strided_slice_4_grad/ShapeShapeconv2d_5/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
Ф
/gradients/strided_slice_4_grad/StridedSliceGradStridedSliceGrad$gradients/strided_slice_4_grad/Shapestrided_slice_4/stackstrided_slice_4/stack_1strided_slice_4/stack_2#gradients/GatherNd_1_grad/ScatterNd*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask*
new_axis_mask *
end_mask*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
І
+gradients/conv2d_5/BiasAdd_grad/BiasAddGradBiasAddGrad/gradients/strided_slice_4_grad/StridedSliceGrad*
data_formatNHWC*
_output_shapes
:*
T0
К
0gradients/conv2d_5/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1,^gradients/conv2d_5/BiasAdd_grad/BiasAddGrad0^gradients/strided_slice_4_grad/StridedSliceGrad
Є
8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependencyIdentity/gradients/strided_slice_4_grad/StridedSliceGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
T0*B
_class8
64loc:@gradients/strided_slice_4_grad/StridedSliceGrad
Л
:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_5/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_5/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_5/BiasAdd_grad/BiasAddGrad*
_output_shapes
:
С
%gradients/conv2d_5/Conv2D_grad/ShapeNShapeNdropout_2/cond/Mergeconv2d_5/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
ь
2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_5/Conv2D_grad/ShapeNconv2d_5/kernel/read8gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
е
3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_2/cond/Merge'gradients/conv2d_5/Conv2D_grad/ShapeN:18gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency*
paddingVALID*'
_output_shapes
:А*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ф
/gradients/conv2d_5/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_14^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
љ
7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
¶
9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_5/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:А
£
gradients/AddN_1AddNEgradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_5/BiasAdd_grad/tuple/control_dependency_1*
N*
_output_shapes
:*
T0*X
_classN
LJloc:@gradients/conv2d_5/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul
 
-gradients/dropout_2/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_5/Conv2D_grad/tuple/control_dependencydropout_2/cond/pred_id*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
ё
4gradients/dropout_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/dropout_2/cond/Merge_grad/cond_grad
¬
<gradients/dropout_2/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_2/cond/Merge_grad/cond_grad5^gradients/dropout_2/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
∆
>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_2/cond/Merge_grad/cond_grad:15^gradients/dropout_2/cond/Merge_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*E
_class;
97loc:@gradients/conv2d_5/Conv2D_grad/Conv2DBackpropInput
ы
/gradients/dropout_2/cond/dropout/mul_grad/ShapeShapedropout_2/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
€
1gradients/dropout_2/cond/dropout/mul_grad/Shape_1Shapedropout_2/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
щ
?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/mul_grad/Shape1gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
я
-gradients/dropout_2/cond/dropout/mul_grad/MulMul>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1dropout_2/cond/dropout/Floor*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
д
-gradients/dropout_2/cond/dropout/mul_grad/SumSum-gradients/dropout_2/cond/dropout/mul_grad/Mul?gradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ч
1gradients/dropout_2/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/mul_grad/Sum/gradients/dropout_2/cond/dropout/mul_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
я
/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Muldropout_2/cond/dropout/div>gradients/dropout_2/cond/Merge_grad/tuple/control_dependency_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
к
/gradients/dropout_2/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_2/cond/dropout/mul_grad/Mul_1Agradients/dropout_2/cond/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
э
3gradients/dropout_2/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/mul_grad/Sum_11gradients/dropout_2/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ю
:gradients/dropout_2/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_12^gradients/dropout_2/cond/dropout/mul_grad/Reshape4^gradients/dropout_2/cond/dropout/mul_grad/Reshape_1
—
Bgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_2/cond/dropout/mul_grad/Reshape;^gradients/dropout_2/cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_2/cond/dropout/mul_grad/Reshape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
„
Dgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_2/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_2/cond/dropout/mul_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*F
_class<
:8loc:@gradients/dropout_2/cond/dropout/mul_grad/Reshape_1
≥
gradients/SwitchSwitchconv2d_4/LeakyReludropout_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
c
gradients/Shape_1Shapegradients/Switch:1*
T0*
out_type0*
_output_shapes
:
я
gradients/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch*
dtype0*
_output_shapes
: *
valueB
 *    
†
gradients/zerosFillgradients/Shape_1gradients/zeros/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
з
7gradients/dropout_2/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_2/cond/Merge_grad/tuple/control_dependencygradients/zeros*
T0*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: 
Ж
/gradients/dropout_2/cond/dropout/div_grad/ShapeShape%dropout_2/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
ж
1gradients/dropout_2/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
щ
?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_2/cond/dropout/div_grad/Shape1gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
п
1gradients/dropout_2/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency dropout_2/cond/dropout/keep_prob*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
и
-gradients/dropout_2/cond/dropout/div_grad/SumSum1gradients/dropout_2/cond/dropout/div_grad/RealDiv?gradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ч
1gradients/dropout_2/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_2/cond/dropout/div_grad/Sum/gradients/dropout_2/cond/dropout/div_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ъ
-gradients/dropout_2/cond/dropout/div_grad/NegNeg%dropout_2/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
№
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_2/cond/dropout/div_grad/Neg dropout_2/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
в
3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_2/cond/dropout/div_grad/RealDiv_1 dropout_2/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ъ
-gradients/dropout_2/cond/dropout/div_grad/mulMulBgradients/dropout_2/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_2/cond/dropout/div_grad/RealDiv_2*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
и
/gradients/dropout_2/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_2/cond/dropout/div_grad/mulAgradients/dropout_2/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
—
3gradients/dropout_2/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_2/cond/dropout/div_grad/Sum_11gradients/dropout_2/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ю
:gradients/dropout_2/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_12^gradients/dropout_2/cond/dropout/div_grad/Reshape4^gradients/dropout_2/cond/dropout/div_grad/Reshape_1
—
Bgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_2/cond/dropout/div_grad/Reshape;^gradients/dropout_2/cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_2/cond/dropout/div_grad/Reshape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ђ
Dgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_2/cond/dropout/div_grad/Reshape_1;^gradients/dropout_2/cond/dropout/div_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_2/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
µ
gradients/Switch_1Switchconv2d_4/LeakyReludropout_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
c
gradients/Shape_2Shapegradients/Switch_1*
_output_shapes
:*
T0*
out_type0
г
gradients/zeros_1/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_1*
valueB
 *    *
dtype0*
_output_shapes
: 
§
gradients/zeros_1Fillgradients/Shape_2gradients/zeros_1/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ф
<gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_1Bgradients/dropout_2/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А: 
±
gradients/AddN_2AddN7gradients/dropout_2/cond/Identity/Switch_grad/cond_grad<gradients/dropout_2/cond/dropout/Shape/Switch_grad/cond_grad*
T0*J
_class@
><loc:@gradients/dropout_2/cond/Identity/Switch_grad/cond_grad*
N*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
п
'gradients/conv2d_4/LeakyRelu_grad/ShapeShapeconv2d_4/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
л
)gradients/conv2d_4/LeakyRelu_grad/Shape_1Shapeconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
y
)gradients/conv2d_4/LeakyRelu_grad/Shape_2Shapegradients/AddN_2*
T0*
out_type0*
_output_shapes
:
д
-gradients/conv2d_4/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
и
'gradients/conv2d_4/LeakyRelu_grad/zerosFill)gradients/conv2d_4/LeakyRelu_grad/Shape_2-gradients/conv2d_4/LeakyRelu_grad/zeros/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
І
.gradients/conv2d_4/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_4/LeakyRelu/mulconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
б
7gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_4/LeakyRelu_grad/Shape)gradients/conv2d_4/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
(gradients/conv2d_4/LeakyRelu_grad/SelectSelect.gradients/conv2d_4/LeakyRelu_grad/GreaterEqualgradients/AddN_2'gradients/conv2d_4/LeakyRelu_grad/zeros*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0
м
*gradients/conv2d_4/LeakyRelu_grad/Select_1Select.gradients/conv2d_4/LeakyRelu_grad/GreaterEqual'gradients/conv2d_4/LeakyRelu_grad/zerosgradients/AddN_2*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ѕ
%gradients/conv2d_4/LeakyRelu_grad/SumSum(gradients/conv2d_4/LeakyRelu_grad/Select7gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
я
)gradients/conv2d_4/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_4/LeakyRelu_grad/Sum'gradients/conv2d_4/LeakyRelu_grad/Shape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*
Tshape0
’
'gradients/conv2d_4/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_4/LeakyRelu_grad/Select_19gradients/conv2d_4/LeakyRelu_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
е
+gradients/conv2d_4/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_4/LeakyRelu_grad/Sum_1)gradients/conv2d_4/LeakyRelu_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ж
2gradients/conv2d_4/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*^gradients/conv2d_4/LeakyRelu_grad/Reshape,^gradients/conv2d_4/LeakyRelu_grad/Reshape_1
±
:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_4/LeakyRelu_grad/Reshape3^gradients/conv2d_4/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ј
<gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/LeakyRelu_grad/Reshape_13^gradients/conv2d_4/LeakyRelu_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1
а
+gradients/conv2d_4/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
п
-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1Shapeconv2d_4/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
н
;gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_4/LeakyRelu/mul_grad/Shape-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ћ
)gradients/conv2d_4/LeakyRelu/mul_grad/MulMul:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependencyconv2d_4/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ў
)gradients/conv2d_4/LeakyRelu/mul_grad/SumSum)gradients/conv2d_4/LeakyRelu/mul_grad/Mul;gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
њ
-gradients/conv2d_4/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_4/LeakyRelu/mul_grad/Sum+gradients/conv2d_4/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
’
+gradients/conv2d_4/LeakyRelu/mul_grad/Mul_1Mulconv2d_4/LeakyRelu/alpha:gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
ё
+gradients/conv2d_4/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_4/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_4/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
с
/gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_4/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_4/LeakyRelu/mul_grad/Shape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*
Tshape0
Т
6gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/conv2d_4/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_4/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_4/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
«
@gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_4/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_4/LeakyRelu/mul_grad/Reshape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Ѓ
gradients/AddN_3AddN<gradients/conv2d_4/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_4/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1*
N*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А
Й
+gradients/conv2d_4/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_3*
T0*
data_formatNHWC*
_output_shapes	
:А
л
0gradients/conv2d_4/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/AddN_3,^gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_31^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€А*
T0*>
_class4
20loc:@gradients/conv2d_4/LeakyRelu_grad/Reshape_1
М
:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_4/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_4/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:А*
T0*>
_class4
20loc:@gradients/conv2d_4/BiasAdd_grad/BiasAddGrad
С
%gradients/conv2d_4/Conv2D_grad/ShapeNShapeNdropout_1/cond/Mergeconv2d_4/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
ь
2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_4/Conv2D_grad/ShapeNconv2d_4/kernel/read8gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingVALID*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ж
3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout_1/cond/Merge'gradients/conv2d_4/Conv2D_grad/ShapeN:18gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency*
paddingVALID*(
_output_shapes
:ОА*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
Ф
/gradients/conv2d_4/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_14^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput
љ
7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
І
9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_4/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropFilter*(
_output_shapes
:ОА
§
gradients/AddN_4AddNEgradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_4/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_4/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes	
:А
 
-gradients/dropout_1/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_4/Conv2D_grad/tuple/control_dependencydropout_1/cond/pred_id*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ё
4gradients/dropout_1/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/dropout_1/cond/Merge_grad/cond_grad
¬
<gradients/dropout_1/cond/Merge_grad/tuple/control_dependencyIdentity-gradients/dropout_1/cond/Merge_grad/cond_grad5^gradients/dropout_1/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
∆
>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1Identity/gradients/dropout_1/cond/Merge_grad/cond_grad:15^gradients/dropout_1/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_4/Conv2D_grad/Conv2DBackpropInput*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
і
gradients/AddN_5AddNGgradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_4/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_4/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*(
_output_shapes
:ОА
ы
/gradients/dropout_1/cond/dropout/mul_grad/ShapeShapedropout_1/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
€
1gradients/dropout_1/cond/dropout/mul_grad/Shape_1Shapedropout_1/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
щ
?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/mul_grad/Shape1gradients/dropout_1/cond/dropout/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
я
-gradients/dropout_1/cond/dropout/mul_grad/MulMul>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1dropout_1/cond/dropout/Floor*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
д
-gradients/dropout_1/cond/dropout/mul_grad/SumSum-gradients/dropout_1/cond/dropout/mul_grad/Mul?gradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ч
1gradients/dropout_1/cond/dropout/mul_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/mul_grad/Sum/gradients/dropout_1/cond/dropout/mul_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
я
/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Muldropout_1/cond/dropout/div>gradients/dropout_1/cond/Merge_grad/tuple/control_dependency_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
к
/gradients/dropout_1/cond/dropout/mul_grad/Sum_1Sum/gradients/dropout_1/cond/dropout/mul_grad/Mul_1Agradients/dropout_1/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
э
3gradients/dropout_1/cond/dropout/mul_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/mul_grad/Sum_11gradients/dropout_1/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ю
:gradients/dropout_1/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_12^gradients/dropout_1/cond/dropout/mul_grad/Reshape4^gradients/dropout_1/cond/dropout/mul_grad/Reshape_1
—
Bgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependencyIdentity1gradients/dropout_1/cond/dropout/mul_grad/Reshape;^gradients/dropout_1/cond/dropout/mul_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0*D
_class:
86loc:@gradients/dropout_1/cond/dropout/mul_grad/Reshape
„
Dgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency_1Identity3gradients/dropout_1/cond/dropout/mul_grad/Reshape_1;^gradients/dropout_1/cond/dropout/mul_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_1/cond/dropout/mul_grad/Reshape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
µ
gradients/Switch_2Switchconv2d_3/LeakyReludropout_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
e
gradients/Shape_3Shapegradients/Switch_2:1*
T0*
out_type0*
_output_shapes
:
г
gradients/zeros_2/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_2*
dtype0*
_output_shapes
: *
valueB
 *    
§
gradients/zeros_2Fillgradients/Shape_3gradients/zeros_2/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
й
7gradients/dropout_1/cond/Identity/Switch_grad/cond_gradMerge<gradients/dropout_1/cond/Merge_grad/tuple/control_dependencygradients/zeros_2*
T0*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О: 
Ж
/gradients/dropout_1/cond/dropout/div_grad/ShapeShape%dropout_1/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
ж
1gradients/dropout_1/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
щ
?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs/gradients/dropout_1/cond/dropout/div_grad/Shape1gradients/dropout_1/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
п
1gradients/dropout_1/cond/dropout/div_grad/RealDivRealDivBgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency dropout_1/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
и
-gradients/dropout_1/cond/dropout/div_grad/SumSum1gradients/dropout_1/cond/dropout/div_grad/RealDiv?gradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
ч
1gradients/dropout_1/cond/dropout/div_grad/ReshapeReshape-gradients/dropout_1/cond/dropout/div_grad/Sum/gradients/dropout_1/cond/dropout/div_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ъ
-gradients/dropout_1/cond/dropout/div_grad/NegNeg%dropout_1/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0
№
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1RealDiv-gradients/dropout_1/cond/dropout/div_grad/Neg dropout_1/cond/dropout/keep_prob*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
в
3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2RealDiv3gradients/dropout_1/cond/dropout/div_grad/RealDiv_1 dropout_1/cond/dropout/keep_prob*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0
ъ
-gradients/dropout_1/cond/dropout/div_grad/mulMulBgradients/dropout_1/cond/dropout/mul_grad/tuple/control_dependency3gradients/dropout_1/cond/dropout/div_grad/RealDiv_2*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
и
/gradients/dropout_1/cond/dropout/div_grad/Sum_1Sum-gradients/dropout_1/cond/dropout/div_grad/mulAgradients/dropout_1/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
—
3gradients/dropout_1/cond/dropout/div_grad/Reshape_1Reshape/gradients/dropout_1/cond/dropout/div_grad/Sum_11gradients/dropout_1/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ю
:gradients/dropout_1/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_12^gradients/dropout_1/cond/dropout/div_grad/Reshape4^gradients/dropout_1/cond/dropout/div_grad/Reshape_1
—
Bgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependencyIdentity1gradients/dropout_1/cond/dropout/div_grad/Reshape;^gradients/dropout_1/cond/dropout/div_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout_1/cond/dropout/div_grad/Reshape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ђ
Dgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependency_1Identity3gradients/dropout_1/cond/dropout/div_grad/Reshape_1;^gradients/dropout_1/cond/dropout/div_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/dropout_1/cond/dropout/div_grad/Reshape_1*
_output_shapes
: 
µ
gradients/Switch_3Switchconv2d_3/LeakyReludropout_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*p
_output_shapes^
\:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
c
gradients/Shape_4Shapegradients/Switch_3*
T0*
out_type0*
_output_shapes
:
г
gradients/zeros_3/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_3*
valueB
 *    *
dtype0*
_output_shapes
: 
§
gradients/zeros_3Fillgradients/Shape_4gradients/zeros_3/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
ф
<gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_3Bgradients/dropout_1/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*D
_output_shapes2
0:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О: 
±
gradients/AddN_6AddN7gradients/dropout_1/cond/Identity/Switch_grad/cond_grad<gradients/dropout_1/cond/dropout/Shape/Switch_grad/cond_grad*
T0*J
_class@
><loc:@gradients/dropout_1/cond/Identity/Switch_grad/cond_grad*
N*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
п
'gradients/conv2d_3/LeakyRelu_grad/ShapeShapeconv2d_3/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
л
)gradients/conv2d_3/LeakyRelu_grad/Shape_1Shapeconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
y
)gradients/conv2d_3/LeakyRelu_grad/Shape_2Shapegradients/AddN_6*
T0*
out_type0*
_output_shapes
:
д
-gradients/conv2d_3/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
и
'gradients/conv2d_3/LeakyRelu_grad/zerosFill)gradients/conv2d_3/LeakyRelu_grad/Shape_2-gradients/conv2d_3/LeakyRelu_grad/zeros/Const*
T0*

index_type0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
І
.gradients/conv2d_3/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_3/LeakyRelu/mulconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
б
7gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_3/LeakyRelu_grad/Shape)gradients/conv2d_3/LeakyRelu_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
к
(gradients/conv2d_3/LeakyRelu_grad/SelectSelect.gradients/conv2d_3/LeakyRelu_grad/GreaterEqualgradients/AddN_6'gradients/conv2d_3/LeakyRelu_grad/zeros*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
м
*gradients/conv2d_3/LeakyRelu_grad/Select_1Select.gradients/conv2d_3/LeakyRelu_grad/GreaterEqual'gradients/conv2d_3/LeakyRelu_grad/zerosgradients/AddN_6*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0
ѕ
%gradients/conv2d_3/LeakyRelu_grad/SumSum(gradients/conv2d_3/LeakyRelu_grad/Select7gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
я
)gradients/conv2d_3/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_3/LeakyRelu_grad/Sum'gradients/conv2d_3/LeakyRelu_grad/Shape*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
’
'gradients/conv2d_3/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_3/LeakyRelu_grad/Select_19gradients/conv2d_3/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
е
+gradients/conv2d_3/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_3/LeakyRelu_grad/Sum_1)gradients/conv2d_3/LeakyRelu_grad/Shape_1*
T0*
Tshape0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ж
2gradients/conv2d_3/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*^gradients/conv2d_3/LeakyRelu_grad/Reshape,^gradients/conv2d_3/LeakyRelu_grad/Reshape_1
±
:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_3/LeakyRelu_grad/Reshape3^gradients/conv2d_3/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ј
<gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/LeakyRelu_grad/Reshape_13^gradients/conv2d_3/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
а
+gradients/conv2d_3/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
п
-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1Shapeconv2d_3/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
н
;gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_3/LeakyRelu/mul_grad/Shape-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ћ
)gradients/conv2d_3/LeakyRelu/mul_grad/MulMul:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependencyconv2d_3/BiasAdd*
T0*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ў
)gradients/conv2d_3/LeakyRelu/mul_grad/SumSum)gradients/conv2d_3/LeakyRelu/mul_grad/Mul;gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
њ
-gradients/conv2d_3/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_3/LeakyRelu/mul_grad/Sum+gradients/conv2d_3/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
’
+gradients/conv2d_3/LeakyRelu/mul_grad/Mul_1Mulconv2d_3/LeakyRelu/alpha:gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0
ё
+gradients/conv2d_3/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_3/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_3/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
с
/gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_3/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_3/LeakyRelu/mul_grad/Shape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0*
Tshape0
Т
6gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/conv2d_3/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_3/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*@
_class6
42loc:@gradients/conv2d_3/LeakyRelu/mul_grad/Reshape
«
@gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_3/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_3/LeakyRelu/mul_grad/Reshape_1*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Ѓ
gradients/AddN_7AddN<gradients/conv2d_3/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_3/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1*
N*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О
Й
+gradients/conv2d_3/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_7*
T0*
data_formatNHWC*
_output_shapes	
:О
л
0gradients/conv2d_3/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/AddN_7,^gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_71^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*B
_output_shapes0
.:,€€€€€€€€€€€€€€€€€€€€€€€€€€€О*
T0*>
_class4
20loc:@gradients/conv2d_3/LeakyRelu_grad/Reshape_1
М
:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_3/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_3/BiasAdd_grad/tuple/group_deps*
_output_shapes	
:О*
T0*>
_class4
20loc:@gradients/conv2d_3/BiasAdd_grad/BiasAddGrad
П
%gradients/conv2d_3/Conv2D_grad/ShapeNShapeNdropout/cond/Mergeconv2d_3/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
N* 
_output_shapes
::*
T0*
out_type0
ы
2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_3/Conv2D_grad/ShapeNconv2d_3/kernel/read8gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
г
3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/cond/Merge'gradients/conv2d_3/Conv2D_grad/ShapeN:18gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency*
paddingVALID*'
_output_shapes
:@О*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
Ф
/gradients/conv2d_3/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_14^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Љ
7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
¶
9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_3/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropFilter*'
_output_shapes
:@О
§
gradients/AddN_8AddNEgradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_3/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_3/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes	
:О
ƒ
+gradients/dropout/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_3/Conv2D_grad/tuple/control_dependencydropout/cond/pred_id*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput
Џ
2gradients/dropout/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1,^gradients/dropout/cond/Merge_grad/cond_grad
ї
:gradients/dropout/cond/Merge_grad/tuple/control_dependencyIdentity+gradients/dropout/cond/Merge_grad/cond_grad3^gradients/dropout/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
њ
<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1Identity-gradients/dropout/cond/Merge_grad/cond_grad:13^gradients/dropout/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_3/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
≥
gradients/AddN_9AddNGgradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_3/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_3/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*'
_output_shapes
:@О
ч
-gradients/dropout/cond/dropout/mul_grad/ShapeShapedropout/cond/dropout/div$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
ы
/gradients/dropout/cond/dropout/mul_grad/Shape_1Shapedropout/cond/dropout/Floor$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
у
=gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout/cond/dropout/mul_grad/Shape/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ў
+gradients/dropout/cond/dropout/mul_grad/MulMul<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1dropout/cond/dropout/Floor*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ё
+gradients/dropout/cond/dropout/mul_grad/SumSum+gradients/dropout/cond/dropout/mul_grad/Mul=gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
р
/gradients/dropout/cond/dropout/mul_grad/ReshapeReshape+gradients/dropout/cond/dropout/mul_grad/Sum-gradients/dropout/cond/dropout/mul_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ў
-gradients/dropout/cond/dropout/mul_grad/Mul_1Muldropout/cond/dropout/div<gradients/dropout/cond/Merge_grad/tuple/control_dependency_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
д
-gradients/dropout/cond/dropout/mul_grad/Sum_1Sum-gradients/dropout/cond/dropout/mul_grad/Mul_1?gradients/dropout/cond/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ц
1gradients/dropout/cond/dropout/mul_grad/Reshape_1Reshape-gradients/dropout/cond/dropout/mul_grad/Sum_1/gradients/dropout/cond/dropout/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ш
8gradients/dropout/cond/dropout/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_10^gradients/dropout/cond/dropout/mul_grad/Reshape2^gradients/dropout/cond/dropout/mul_grad/Reshape_1
»
@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependencyIdentity/gradients/dropout/cond/dropout/mul_grad/Reshape9^gradients/dropout/cond/dropout/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/dropout/cond/dropout/mul_grad/Reshape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ќ
Bgradients/dropout/cond/dropout/mul_grad/tuple/control_dependency_1Identity1gradients/dropout/cond/dropout/mul_grad/Reshape_19^gradients/dropout/cond/dropout/mul_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/dropout/cond/dropout/mul_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
њ
gradients/Switch_4Switch batch_normalization_2/cond/Mergedropout/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
e
gradients/Shape_5Shapegradients/Switch_4:1*
_output_shapes
:*
T0*
out_type0
г
gradients/zeros_4/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_4*
valueB
 *    *
dtype0*
_output_shapes
: 
£
gradients/zeros_4Fillgradients/Shape_5gradients/zeros_4/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
д
5gradients/dropout/cond/Identity/Switch_grad/cond_gradMerge:gradients/dropout/cond/Merge_grad/tuple/control_dependencygradients/zeros_4*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: 
В
-gradients/dropout/cond/dropout/div_grad/ShapeShape#dropout/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
д
/gradients/dropout/cond/dropout/div_grad/Shape_1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
у
=gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs-gradients/dropout/cond/dropout/div_grad/Shape/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
и
/gradients/dropout/cond/dropout/div_grad/RealDivRealDiv@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependencydropout/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
в
+gradients/dropout/cond/dropout/div_grad/SumSum/gradients/dropout/cond/dropout/div_grad/RealDiv=gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
р
/gradients/dropout/cond/dropout/div_grad/ReshapeReshape+gradients/dropout/cond/dropout/div_grad/Sum-gradients/dropout/cond/dropout/div_grad/Shape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*
Tshape0
Х
+gradients/dropout/cond/dropout/div_grad/NegNeg#dropout/cond/dropout/Shape/Switch:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
’
1gradients/dropout/cond/dropout/div_grad/RealDiv_1RealDiv+gradients/dropout/cond/dropout/div_grad/Negdropout/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
џ
1gradients/dropout/cond/dropout/div_grad/RealDiv_2RealDiv1gradients/dropout/cond/dropout/div_grad/RealDiv_1dropout/cond/dropout/keep_prob*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
у
+gradients/dropout/cond/dropout/div_grad/mulMul@gradients/dropout/cond/dropout/mul_grad/tuple/control_dependency1gradients/dropout/cond/dropout/div_grad/RealDiv_2*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
в
-gradients/dropout/cond/dropout/div_grad/Sum_1Sum+gradients/dropout/cond/dropout/div_grad/mul?gradients/dropout/cond/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ћ
1gradients/dropout/cond/dropout/div_grad/Reshape_1Reshape-gradients/dropout/cond/dropout/div_grad/Sum_1/gradients/dropout/cond/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
Ш
8gradients/dropout/cond/dropout/div_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_10^gradients/dropout/cond/dropout/div_grad/Reshape2^gradients/dropout/cond/dropout/div_grad/Reshape_1
»
@gradients/dropout/cond/dropout/div_grad/tuple/control_dependencyIdentity/gradients/dropout/cond/dropout/div_grad/Reshape9^gradients/dropout/cond/dropout/div_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/dropout/cond/dropout/div_grad/Reshape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
£
Bgradients/dropout/cond/dropout/div_grad/tuple/control_dependency_1Identity1gradients/dropout/cond/dropout/div_grad/Reshape_19^gradients/dropout/cond/dropout/div_grad/tuple/group_deps*
_output_shapes
: *
T0*D
_class:
86loc:@gradients/dropout/cond/dropout/div_grad/Reshape_1
њ
gradients/Switch_5Switch batch_normalization_2/cond/Mergedropout/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
c
gradients/Shape_6Shapegradients/Switch_5*
T0*
out_type0*
_output_shapes
:
г
gradients/zeros_5/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_5*
valueB
 *    *
dtype0*
_output_shapes
: 
£
gradients/zeros_5Fillgradients/Shape_6gradients/zeros_5/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
п
:gradients/dropout/cond/dropout/Shape/Switch_grad/cond_gradMergegradients/zeros_5@gradients/dropout/cond/dropout/div_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: 
Ђ
gradients/AddN_10AddN5gradients/dropout/cond/Identity/Switch_grad/cond_grad:gradients/dropout/cond/dropout/Shape/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad
љ
9gradients/batch_normalization_2/cond/Merge_grad/cond_gradSwitchgradients/AddN_10"batch_normalization_2/cond/pred_id*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ц
@gradients/batch_normalization_2/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1:^gradients/batch_normalization_2/cond/Merge_grad/cond_grad
и
Hgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_2/cond/Merge_grad/cond_gradA^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
м
Jgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_2/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_2/cond/Merge_grad/tuple/group_deps*
T0*H
_class>
<:loc:@gradients/dropout/cond/Identity/Switch_grad/cond_grad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
з
gradients/zeros_like	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
й
gradients/zeros_like_1	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
й
gradients/zeros_like_2	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
й
gradients/zeros_like_3	ZerosLike-batch_normalization_2/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
£
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency2batch_normalization_2/cond/FusedBatchNorm_1/Switch4batch_normalization_2/cond/FusedBatchNorm_1/Switch_14batch_normalization_2/cond/FusedBatchNorm_1/Switch_34batch_normalization_2/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@:@:@*
epsilon%oГ:
Х
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1N^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
™
Sgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:@*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:@
з
gradients/zeros_like_4	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
з
gradients/zeros_like_5	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
з
gradients/zeros_like_6	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:@
з
gradients/zeros_like_7	ZerosLike+batch_normalization_2/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:@*
T0
Н
Kgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_2/cond/Merge_grad/tuple/control_dependency_12batch_normalization_2/cond/FusedBatchNorm/Switch:14batch_normalization_2/cond/FusedBatchNorm/Switch_1:1+batch_normalization_2/cond/FusedBatchNorm:3+batch_normalization_2/cond/FusedBatchNorm:4*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:@:@: : *
epsilon%oГ:*
T0
С
Igradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1L^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Ґ
Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
€
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
€
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:@
э
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
э
Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_grad/FusedBatchNormGrad
њ
gradients/Switch_6Switchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
e
gradients/Shape_7Shapegradients/Switch_6:1*
_output_shapes
:*
T0*
out_type0
г
gradients/zeros_6/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_6*
valueB
 *    *
dtype0*
_output_shapes
: 
£
gradients/zeros_6Fillgradients/Shape_7gradients/zeros_6/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
У
Kgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_6*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: *
T0
€
gradients/Switch_7Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_8Shapegradients/Switch_7:1*
T0*
out_type0*
_output_shapes
:
г
gradients/zeros_7/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_7*
valueB
 *    *
dtype0*
_output_shapes
: 
|
gradients/zeros_7Fillgradients/Shape_8gradients/zeros_7/Const*
_output_shapes
:@*
T0*

index_type0
р
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_7*
T0*
N*
_output_shapes

:@: 
ю
gradients/Switch_8Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_9Shapegradients/Switch_8:1*
T0*
out_type0*
_output_shapes
:
г
gradients/zeros_8/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_8*
valueB
 *    *
dtype0*
_output_shapes
: 
|
gradients/zeros_8Fillgradients/Shape_9gradients/zeros_8/Const*
T0*

index_type0*
_output_shapes
:@
р
Mgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_2/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_8*
N*
_output_shapes

:@: *
T0
њ
gradients/Switch_9Switchconv2d_2/LeakyRelu"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
d
gradients/Shape_10Shapegradients/Switch_9*
_output_shapes
:*
T0*
out_type0
г
gradients/zeros_9/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_9*
valueB
 *    *
dtype0*
_output_shapes
: 
§
gradients/zeros_9Fillgradients/Shape_10gradients/zeros_9/Const*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*

index_type0
П
Igradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_9Qgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@: 
А
gradients/Switch_10Switch batch_normalization_2/gamma/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_11Shapegradients/Switch_10*
_output_shapes
:*
T0*
out_type0
е
gradients/zeros_10/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_10*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_10Fillgradients/Shape_11gradients/zeros_10/Const*
T0*

index_type0*
_output_shapes
:@
н
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_10Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
N*
_output_shapes

:@: *
T0
€
gradients/Switch_11Switchbatch_normalization_2/beta/read"batch_normalization_2/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:@:@
e
gradients/Shape_12Shapegradients/Switch_11*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_11/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_11*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_11Fillgradients/Shape_12gradients/zeros_11/Const*
T0*

index_type0*
_output_shapes
:@
н
Kgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_11Sgradients/batch_normalization_2/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*
N*
_output_shapes

:@: 
ж
gradients/AddN_11AddNKgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*^
_classT
RPloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_grad/cond_grad
п
'gradients/conv2d_2/LeakyRelu_grad/ShapeShapeconv2d_2/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
л
)gradients/conv2d_2/LeakyRelu_grad/Shape_1Shapeconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
z
)gradients/conv2d_2/LeakyRelu_grad/Shape_2Shapegradients/AddN_11*
_output_shapes
:*
T0*
out_type0
д
-gradients/conv2d_2/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
з
'gradients/conv2d_2/LeakyRelu_grad/zerosFill)gradients/conv2d_2/LeakyRelu_grad/Shape_2-gradients/conv2d_2/LeakyRelu_grad/zeros/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
¶
.gradients/conv2d_2/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_2/LeakyRelu/mulconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
б
7gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_2/LeakyRelu_grad/Shape)gradients/conv2d_2/LeakyRelu_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
к
(gradients/conv2d_2/LeakyRelu_grad/SelectSelect.gradients/conv2d_2/LeakyRelu_grad/GreaterEqualgradients/AddN_11'gradients/conv2d_2/LeakyRelu_grad/zeros*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0
м
*gradients/conv2d_2/LeakyRelu_grad/Select_1Select.gradients/conv2d_2/LeakyRelu_grad/GreaterEqual'gradients/conv2d_2/LeakyRelu_grad/zerosgradients/AddN_11*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ѕ
%gradients/conv2d_2/LeakyRelu_grad/SumSum(gradients/conv2d_2/LeakyRelu_grad/Select7gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
ё
)gradients/conv2d_2/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_2/LeakyRelu_grad/Sum'gradients/conv2d_2/LeakyRelu_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
’
'gradients/conv2d_2/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_2/LeakyRelu_grad/Select_19gradients/conv2d_2/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
д
+gradients/conv2d_2/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_2/LeakyRelu_grad/Sum_1)gradients/conv2d_2/LeakyRelu_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ж
2gradients/conv2d_2/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*^gradients/conv2d_2/LeakyRelu_grad/Reshape,^gradients/conv2d_2/LeakyRelu_grad/Reshape_1
∞
:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_2/LeakyRelu_grad/Reshape3^gradients/conv2d_2/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ґ
<gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/LeakyRelu_grad/Reshape_13^gradients/conv2d_2/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
≈
gradients/AddN_12AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
:@
≈
gradients/AddN_13AddNMgradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_2/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_2/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:@
а
+gradients/conv2d_2/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
п
-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1Shapeconv2d_2/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
н
;gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_2/LeakyRelu/mul_grad/Shape-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
 
)gradients/conv2d_2/LeakyRelu/mul_grad/MulMul:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependencyconv2d_2/BiasAdd*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ў
)gradients/conv2d_2/LeakyRelu/mul_grad/SumSum)gradients/conv2d_2/LeakyRelu/mul_grad/Mul;gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
њ
-gradients/conv2d_2/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_2/LeakyRelu/mul_grad/Sum+gradients/conv2d_2/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
‘
+gradients/conv2d_2/LeakyRelu/mul_grad/Mul_1Mulconv2d_2/LeakyRelu/alpha:gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
ё
+gradients/conv2d_2/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_2/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_2/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
р
/gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_2/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_2/LeakyRelu/mul_grad/Shape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*
Tshape0
Т
6gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/conv2d_2/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_2/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_deps*
_output_shapes
: *
T0*@
_class6
42loc:@gradients/conv2d_2/LeakyRelu/mul_grad/Reshape
∆
@gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_2/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_2/LeakyRelu/mul_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Ѓ
gradients/AddN_14AddN<gradients/conv2d_2/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_2/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@
Й
+gradients/conv2d_2/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_14*
T0*
data_formatNHWC*
_output_shapes
:@
м
0gradients/conv2d_2/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/AddN_14,^gradients/conv2d_2/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_141^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€@*
T0*>
_class4
20loc:@gradients/conv2d_2/LeakyRelu_grad/Reshape_1
Л
:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_2/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_2/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_2/BiasAdd_grad/BiasAddGrad*
_output_shapes
:@
Э
%gradients/conv2d_2/Conv2D_grad/ShapeNShapeN batch_normalization_1/cond/Mergeconv2d_2/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
ы
2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_2/Conv2D_grad/ShapeNconv2d_2/kernel/read8gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
р
3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilter batch_normalization_1/cond/Merge'gradients/conv2d_2/Conv2D_grad/ShapeN:18gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*&
_output_shapes
:0@
Ф
/gradients/conv2d_2/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_14^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
Љ
7gradients/conv2d_2/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
•
9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_2/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:0@
§
gradients/AddN_15AddNEgradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_2/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_2/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
:@
а
9gradients/batch_normalization_1/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_2/Conv2D_grad/tuple/control_dependency"batch_normalization_1/cond/pred_id*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput
ц
@gradients/batch_normalization_1/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1:^gradients/batch_normalization_1/cond/Merge_grad/cond_grad
е
Hgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependencyIdentity9gradients/batch_normalization_1/cond/Merge_grad/cond_gradA^gradients/batch_normalization_1/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
й
Jgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency_1Identity;gradients/batch_normalization_1/cond/Merge_grad/cond_grad:1A^gradients/batch_normalization_1/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_2/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
≥
gradients/AddN_16AddNGgradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_2/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_2/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
:0@
й
gradients/zeros_like_8	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
й
gradients/zeros_like_9	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
к
gradients/zeros_like_10	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
к
gradients/zeros_like_11	ZerosLike-batch_normalization_1/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
£
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency2batch_normalization_1/cond/FusedBatchNorm_1/Switch4batch_normalization_1/cond/FusedBatchNorm_1/Switch_14batch_normalization_1/cond/FusedBatchNorm_1/Switch_34batch_normalization_1/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:0:0:0:0*
epsilon%oГ:
Х
Kgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1N^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
™
Sgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGradL^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
З
Ugradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityOgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1L^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*
_output_shapes
:0*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
З
Ugradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityOgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2L^gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
:0
и
gradients/zeros_like_12	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
и
gradients/zeros_like_13	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
и
gradients/zeros_like_14	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
и
gradients/zeros_like_15	ZerosLike+batch_normalization_1/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
:0
Н
Kgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradJgradients/batch_normalization_1/cond/Merge_grad/tuple/control_dependency_12batch_normalization_1/cond/FusedBatchNorm/Switch:14batch_normalization_1/cond/FusedBatchNorm/Switch_1:1+batch_normalization_1/cond/FusedBatchNorm:3+batch_normalization_1/cond/FusedBatchNorm:4*
T0*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:0:0: : *
epsilon%oГ:
С
Igradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1L^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Ґ
Qgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityKgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGradJ^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
€
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
:0*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
€
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
:0
э
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
э
Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityMgradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4J^gradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_grad/FusedBatchNormGrad
ј
gradients/Switch_12Switchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
g
gradients/Shape_13Shapegradients/Switch_12:1*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_12/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_12*
valueB
 *    *
dtype0*
_output_shapes
: 
¶
gradients/zeros_12Fillgradients/Shape_13gradients/zeros_12/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Ф
Kgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeSgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_12*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0: *
T0
А
gradients/Switch_13Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
g
gradients/Shape_14Shapegradients/Switch_13:1*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_13/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_13*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_13Fillgradients/Shape_14gradients/zeros_13/Const*
T0*

index_type0*
_output_shapes
:0
с
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeUgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_13*
T0*
N*
_output_shapes

:0: 
€
gradients/Switch_14Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
g
gradients/Shape_15Shapegradients/Switch_14:1*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_14/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_14*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_14Fillgradients/Shape_15gradients/zeros_14/Const*
_output_shapes
:0*
T0*

index_type0
с
Mgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeUgradients/batch_normalization_1/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_14*
T0*
N*
_output_shapes

:0: 
ј
gradients/Switch_15Switchconv2d_1/LeakyRelu"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
e
gradients/Shape_16Shapegradients/Switch_15*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_15/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_15*
valueB
 *    *
dtype0*
_output_shapes
: 
¶
gradients/zeros_15Fillgradients/Shape_16gradients/zeros_15/Const*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0*

index_type0
Р
Igradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_15Qgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0: 
А
gradients/Switch_16Switch batch_normalization_1/gamma/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1* 
_output_shapes
:0:0*
T0
e
gradients/Shape_17Shapegradients/Switch_16*
_output_shapes
:*
T0*
out_type0
е
gradients/zeros_16/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_16*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_16Fillgradients/Shape_17gradients/zeros_16/Const*
T0*

index_type0*
_output_shapes
:0
н
Kgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_16Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes

:0: 
€
gradients/Switch_17Switchbatch_normalization_1/beta/read"batch_normalization_1/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
:0:0
e
gradients/Shape_18Shapegradients/Switch_17*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_17/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_17*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_17Fillgradients/Shape_18gradients/zeros_17/Const*
_output_shapes
:0*
T0*

index_type0
н
Kgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_17Sgradients/batch_normalization_1/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
T0*
N*
_output_shapes

:0: 
ж
gradients/AddN_17AddNKgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_gradIgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
п
'gradients/conv2d_1/LeakyRelu_grad/ShapeShapeconv2d_1/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
л
)gradients/conv2d_1/LeakyRelu_grad/Shape_1Shapeconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
z
)gradients/conv2d_1/LeakyRelu_grad/Shape_2Shapegradients/AddN_17*
T0*
out_type0*
_output_shapes
:
д
-gradients/conv2d_1/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
з
'gradients/conv2d_1/LeakyRelu_grad/zerosFill)gradients/conv2d_1/LeakyRelu_grad/Shape_2-gradients/conv2d_1/LeakyRelu_grad/zeros/Const*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0*

index_type0
¶
.gradients/conv2d_1/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d_1/LeakyRelu/mulconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
б
7gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs'gradients/conv2d_1/LeakyRelu_grad/Shape)gradients/conv2d_1/LeakyRelu_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
к
(gradients/conv2d_1/LeakyRelu_grad/SelectSelect.gradients/conv2d_1/LeakyRelu_grad/GreaterEqualgradients/AddN_17'gradients/conv2d_1/LeakyRelu_grad/zeros*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
м
*gradients/conv2d_1/LeakyRelu_grad/Select_1Select.gradients/conv2d_1/LeakyRelu_grad/GreaterEqual'gradients/conv2d_1/LeakyRelu_grad/zerosgradients/AddN_17*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0
ѕ
%gradients/conv2d_1/LeakyRelu_grad/SumSum(gradients/conv2d_1/LeakyRelu_grad/Select7gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
)gradients/conv2d_1/LeakyRelu_grad/ReshapeReshape%gradients/conv2d_1/LeakyRelu_grad/Sum'gradients/conv2d_1/LeakyRelu_grad/Shape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0*
Tshape0
’
'gradients/conv2d_1/LeakyRelu_grad/Sum_1Sum*gradients/conv2d_1/LeakyRelu_grad/Select_19gradients/conv2d_1/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
д
+gradients/conv2d_1/LeakyRelu_grad/Reshape_1Reshape'gradients/conv2d_1/LeakyRelu_grad/Sum_1)gradients/conv2d_1/LeakyRelu_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Ж
2gradients/conv2d_1/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*^gradients/conv2d_1/LeakyRelu_grad/Reshape,^gradients/conv2d_1/LeakyRelu_grad/Reshape_1
∞
:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependencyIdentity)gradients/conv2d_1/LeakyRelu_grad/Reshape3^gradients/conv2d_1/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
ґ
<gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/LeakyRelu_grad/Reshape_13^gradients/conv2d_1/LeakyRelu_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
≈
gradients/AddN_18AddNMgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradKgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
N*
_output_shapes
:0*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad
≈
gradients/AddN_19AddNMgradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradKgradients/batch_normalization_1/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*`
_classV
TRloc:@gradients/batch_normalization_1/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
:0
а
+gradients/conv2d_1/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB *
dtype0*
_output_shapes
: 
п
-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1Shapeconv2d_1/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
н
;gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs+gradients/conv2d_1/LeakyRelu/mul_grad/Shape-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
 
)gradients/conv2d_1/LeakyRelu/mul_grad/MulMul:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependencyconv2d_1/BiasAdd*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0
Ў
)gradients/conv2d_1/LeakyRelu/mul_grad/SumSum)gradients/conv2d_1/LeakyRelu/mul_grad/Mul;gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
њ
-gradients/conv2d_1/LeakyRelu/mul_grad/ReshapeReshape)gradients/conv2d_1/LeakyRelu/mul_grad/Sum+gradients/conv2d_1/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
‘
+gradients/conv2d_1/LeakyRelu/mul_grad/Mul_1Mulconv2d_1/LeakyRelu/alpha:gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
ё
+gradients/conv2d_1/LeakyRelu/mul_grad/Sum_1Sum+gradients/conv2d_1/LeakyRelu/mul_grad/Mul_1=gradients/conv2d_1/LeakyRelu/mul_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
р
/gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1Reshape+gradients/conv2d_1/LeakyRelu/mul_grad/Sum_1-gradients/conv2d_1/LeakyRelu/mul_grad/Shape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0*
T0*
Tshape0
Т
6gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1.^gradients/conv2d_1/LeakyRelu/mul_grad/Reshape0^gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1
Х
>gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependencyIdentity-gradients/conv2d_1/LeakyRelu/mul_grad/Reshape7^gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d_1/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
∆
@gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependency_1Identity/gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_17^gradients/conv2d_1/LeakyRelu/mul_grad/tuple/group_deps*
T0*B
_class8
64loc:@gradients/conv2d_1/LeakyRelu/mul_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Ѓ
gradients/AddN_20AddN<gradients/conv2d_1/LeakyRelu_grad/tuple/control_dependency_1@gradients/conv2d_1/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Й
+gradients/conv2d_1/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_20*
T0*
data_formatNHWC*
_output_shapes
:0
м
0gradients/conv2d_1/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/AddN_20,^gradients/conv2d_1/BiasAdd_grad/BiasAddGrad
Ц
8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_201^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€0
Л
:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1Identity+gradients/conv2d_1/BiasAdd_grad/BiasAddGrad1^gradients/conv2d_1/BiasAdd_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d_1/BiasAdd_grad/BiasAddGrad*
_output_shapes
:0
Ы
%gradients/conv2d_1/Conv2D_grad/ShapeNShapeNbatch_normalization/cond/Mergeconv2d_1/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
N* 
_output_shapes
::
ы
2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput%gradients/conv2d_1/Conv2D_grad/ShapeNconv2d_1/kernel/read8gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*
paddingVALID*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(
о
3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterbatch_normalization/cond/Merge'gradients/conv2d_1/Conv2D_grad/ShapeN:18gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: 0*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID
Ф
/gradients/conv2d_1/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_14^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter3^gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput
Љ
7gradients/conv2d_1/Conv2D_grad/tuple/control_dependencyIdentity2gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
•
9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1Identity3gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter0^gradients/conv2d_1/Conv2D_grad/tuple/group_deps*
T0*F
_class<
:8loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 0
§
gradients/AddN_21AddNEgradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul:gradients/conv2d_1/BiasAdd_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d_1/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
:0
№
7gradients/batch_normalization/cond/Merge_grad/cond_gradSwitch7gradients/conv2d_1/Conv2D_grad/tuple/control_dependency batch_normalization/cond/pred_id*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
т
>gradients/batch_normalization/cond/Merge_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_18^gradients/batch_normalization/cond/Merge_grad/cond_grad
я
Fgradients/batch_normalization/cond/Merge_grad/tuple/control_dependencyIdentity7gradients/batch_normalization/cond/Merge_grad/cond_grad?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
г
Hgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_1Identity9gradients/batch_normalization/cond/Merge_grad/cond_grad:1?^gradients/batch_normalization/cond/Merge_grad/tuple/group_deps*
T0*E
_class;
97loc:@gradients/conv2d_1/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
≥
gradients/AddN_22AddNGgradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul9gradients/conv2d_1/Conv2D_grad/tuple/control_dependency_1*
T0*Z
_classP
NLloc:@gradients/conv2d_1/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
: 0
и
gradients/zeros_like_16	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
: 
и
gradients/zeros_like_17	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
: 
и
gradients/zeros_like_18	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
: *
T0
и
gradients/zeros_like_19	ZerosLike+batch_normalization/cond/FusedBatchNorm_1:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
: 
Ч
Kgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradFusedBatchNormGradFgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency0batch_normalization/cond/FusedBatchNorm_1/Switch2batch_normalization/cond/FusedBatchNorm_1/Switch_12batch_normalization/cond/FusedBatchNorm_1/Switch_32batch_normalization/cond/FusedBatchNorm_1/Switch_4*
T0*
data_formatNHWC*
is_training( *Y
_output_shapesG
E:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : *
epsilon%oГ:
С
Igradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1L^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad
Ґ
Qgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencyIdentityKgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGradJ^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
€
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:1J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
: 
€
Sgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2IdentityMgradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad:2J^gradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/group_deps*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1_grad/FusedBatchNormGrad*
_output_shapes
: 
ж
gradients/zeros_like_20	ZerosLike)batch_normalization/cond/FusedBatchNorm:1$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
: 
ж
gradients/zeros_like_21	ZerosLike)batch_normalization/cond/FusedBatchNorm:2$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
: *
T0
ж
gradients/zeros_like_22	ZerosLike)batch_normalization/cond/FusedBatchNorm:3$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
_output_shapes
: 
ж
gradients/zeros_like_23	ZerosLike)batch_normalization/cond/FusedBatchNorm:4$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
: *
T0
Б
Igradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradFusedBatchNormGradHgradients/batch_normalization/cond/Merge_grad/tuple/control_dependency_10batch_normalization/cond/FusedBatchNorm/Switch:12batch_normalization/cond/FusedBatchNorm/Switch_1:1)batch_normalization/cond/FusedBatchNorm:3)batch_normalization/cond/FusedBatchNorm:4*
epsilon%oГ:*
T0*
data_formatNHWC*
is_training(*U
_output_shapesC
A:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : : : : 
Н
Ggradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1J^gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Ъ
Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependencyIdentityIgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGradH^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
ч
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:1H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
ч
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:2H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
х
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_3IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:3H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad*
_output_shapes
: 
х
Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_4IdentityKgradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad:4H^gradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/group_deps*
_output_shapes
: *
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_grad/FusedBatchNormGrad
Љ
gradients/Switch_18Switchconv2d/LeakyRelu batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
g
gradients/Shape_19Shapegradients/Switch_18:1*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_18/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_18*
valueB
 *    *
dtype0*
_output_shapes
: 
¶
gradients/zeros_18Fillgradients/Shape_19gradients/zeros_18/Const*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0*

index_type0
Р
Igradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradMergeQgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependencygradients/zeros_18*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : *
T0
ь
gradients/Switch_19Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
g
gradients/Shape_20Shapegradients/Switch_19:1*
_output_shapes
:*
T0*
out_type0
е
gradients/zeros_19/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_19*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_19Fillgradients/Shape_20gradients/zeros_19/Const*
_output_shapes
: *
T0*

index_type0
н
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_1gradients/zeros_19*
T0*
N*
_output_shapes

: : 
ы
gradients/Switch_20Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
g
gradients/Shape_21Shapegradients/Switch_20:1*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_20/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_20*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_20Fillgradients/Shape_21gradients/zeros_20/Const*
T0*

index_type0*
_output_shapes
: 
н
Kgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradMergeSgradients/batch_normalization/cond/FusedBatchNorm_1_grad/tuple/control_dependency_2gradients/zeros_20*
T0*
N*
_output_shapes

: : 
Љ
gradients/Switch_21Switchconv2d/LeakyRelu batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*n
_output_shapes\
Z:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ :+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
e
gradients/Shape_22Shapegradients/Switch_21*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_21/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_21*
valueB
 *    *
dtype0*
_output_shapes
: 
¶
gradients/zeros_21Fillgradients/Shape_22gradients/zeros_21/Const*
T0*

index_type0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
М
Ggradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_gradMergegradients/zeros_21Ogradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency*
T0*
N*C
_output_shapes1
/:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ : 
ь
gradients/Switch_22Switchbatch_normalization/gamma/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
e
gradients/Shape_23Shapegradients/Switch_22*
_output_shapes
:*
T0*
out_type0
е
gradients/zeros_22/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_22*
dtype0*
_output_shapes
: *
valueB
 *    

gradients/zeros_22Fillgradients/Shape_23gradients/zeros_22/Const*
T0*

index_type0*
_output_shapes
: 
й
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_gradMergegradients/zeros_22Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_1*
T0*
N*
_output_shapes

: : 
ы
gradients/Switch_23Switchbatch_normalization/beta/read batch_normalization/cond/pred_id$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0* 
_output_shapes
: : 
e
gradients/Shape_24Shapegradients/Switch_23*
T0*
out_type0*
_output_shapes
:
е
gradients/zeros_23/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/Switch_23*
valueB
 *    *
dtype0*
_output_shapes
: 

gradients/zeros_23Fillgradients/Shape_24gradients/zeros_23/Const*
_output_shapes
: *
T0*

index_type0
й
Igradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_gradMergegradients/zeros_23Qgradients/batch_normalization/cond/FusedBatchNorm_grad/tuple/control_dependency_2*
N*
_output_shapes

: : *
T0
а
gradients/AddN_23AddNIgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_gradGgradients/batch_normalization/cond/FusedBatchNorm/Switch_grad/cond_grad*
T0*\
_classR
PNloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_grad/cond_grad*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
л
%gradients/conv2d/LeakyRelu_grad/ShapeShapeconv2d/LeakyRelu/mul$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
з
'gradients/conv2d/LeakyRelu_grad/Shape_1Shapeconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*
out_type0*
_output_shapes
:
x
'gradients/conv2d/LeakyRelu_grad/Shape_2Shapegradients/AddN_23*
_output_shapes
:*
T0*
out_type0
в
+gradients/conv2d/LeakyRelu_grad/zeros/ConstConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *    *
dtype0*
_output_shapes
: 
б
%gradients/conv2d/LeakyRelu_grad/zerosFill'gradients/conv2d/LeakyRelu_grad/Shape_2+gradients/conv2d/LeakyRelu_grad/zeros/Const*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0*

index_type0
†
,gradients/conv2d/LeakyRelu_grad/GreaterEqualGreaterEqualconv2d/LeakyRelu/mulconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
џ
5gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgsBroadcastGradientArgs%gradients/conv2d/LeakyRelu_grad/Shape'gradients/conv2d/LeakyRelu_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
д
&gradients/conv2d/LeakyRelu_grad/SelectSelect,gradients/conv2d/LeakyRelu_grad/GreaterEqualgradients/AddN_23%gradients/conv2d/LeakyRelu_grad/zeros*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0
ж
(gradients/conv2d/LeakyRelu_grad/Select_1Select,gradients/conv2d/LeakyRelu_grad/GreaterEqual%gradients/conv2d/LeakyRelu_grad/zerosgradients/AddN_23*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
…
#gradients/conv2d/LeakyRelu_grad/SumSum&gradients/conv2d/LeakyRelu_grad/Select5gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
Ў
'gradients/conv2d/LeakyRelu_grad/ReshapeReshape#gradients/conv2d/LeakyRelu_grad/Sum%gradients/conv2d/LeakyRelu_grad/Shape*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
ѕ
%gradients/conv2d/LeakyRelu_grad/Sum_1Sum(gradients/conv2d/LeakyRelu_grad/Select_17gradients/conv2d/LeakyRelu_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
ё
)gradients/conv2d/LeakyRelu_grad/Reshape_1Reshape%gradients/conv2d/LeakyRelu_grad/Sum_1'gradients/conv2d/LeakyRelu_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
А
0gradients/conv2d/LeakyRelu_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1(^gradients/conv2d/LeakyRelu_grad/Reshape*^gradients/conv2d/LeakyRelu_grad/Reshape_1
®
8gradients/conv2d/LeakyRelu_grad/tuple/control_dependencyIdentity'gradients/conv2d/LeakyRelu_grad/Reshape1^gradients/conv2d/LeakyRelu_grad/tuple/group_deps*
T0*:
_class0
.,loc:@gradients/conv2d/LeakyRelu_grad/Reshape*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ѓ
:gradients/conv2d/LeakyRelu_grad/tuple/control_dependency_1Identity)gradients/conv2d/LeakyRelu_grad/Reshape_11^gradients/conv2d/LeakyRelu_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
њ
gradients/AddN_24AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_1_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_1_grad/cond_grad*
N*
_output_shapes
: 
њ
gradients/AddN_25AddNKgradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_gradIgradients/batch_normalization/cond/FusedBatchNorm/Switch_2_grad/cond_grad*
T0*^
_classT
RPloc:@gradients/batch_normalization/cond/FusedBatchNorm_1/Switch_2_grad/cond_grad*
N*
_output_shapes
: 
ё
)gradients/conv2d/LeakyRelu/mul_grad/ShapeConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
dtype0*
_output_shapes
: *
valueB 
л
+gradients/conv2d/LeakyRelu/mul_grad/Shape_1Shapeconv2d/BiasAdd$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
_output_shapes
:*
T0*
out_type0
з
9gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgsBroadcastGradientArgs)gradients/conv2d/LeakyRelu/mul_grad/Shape+gradients/conv2d/LeakyRelu/mul_grad/Shape_1*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€*
T0
ƒ
'gradients/conv2d/LeakyRelu/mul_grad/MulMul8gradients/conv2d/LeakyRelu_grad/tuple/control_dependencyconv2d/BiasAdd*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ *
T0
“
'gradients/conv2d/LeakyRelu/mul_grad/SumSum'gradients/conv2d/LeakyRelu/mul_grad/Mul9gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
є
+gradients/conv2d/LeakyRelu/mul_grad/ReshapeReshape'gradients/conv2d/LeakyRelu/mul_grad/Sum)gradients/conv2d/LeakyRelu/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
ќ
)gradients/conv2d/LeakyRelu/mul_grad/Mul_1Mulconv2d/LeakyRelu/alpha8gradients/conv2d/LeakyRelu_grad/tuple/control_dependency*
T0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Ў
)gradients/conv2d/LeakyRelu/mul_grad/Sum_1Sum)gradients/conv2d/LeakyRelu/mul_grad/Mul_1;gradients/conv2d/LeakyRelu/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
к
-gradients/conv2d/LeakyRelu/mul_grad/Reshape_1Reshape)gradients/conv2d/LeakyRelu/mul_grad/Sum_1+gradients/conv2d/LeakyRelu/mul_grad/Shape_1*
T0*
Tshape0*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
М
4gradients/conv2d/LeakyRelu/mul_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1,^gradients/conv2d/LeakyRelu/mul_grad/Reshape.^gradients/conv2d/LeakyRelu/mul_grad/Reshape_1
Н
<gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependencyIdentity+gradients/conv2d/LeakyRelu/mul_grad/Reshape5^gradients/conv2d/LeakyRelu/mul_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/conv2d/LeakyRelu/mul_grad/Reshape*
_output_shapes
: 
Њ
>gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependency_1Identity-gradients/conv2d/LeakyRelu/mul_grad/Reshape_15^gradients/conv2d/LeakyRelu/mul_grad/tuple/group_deps*
T0*@
_class6
42loc:@gradients/conv2d/LeakyRelu/mul_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
®
gradients/AddN_26AddN:gradients/conv2d/LeakyRelu_grad/tuple/control_dependency_1>gradients/conv2d/LeakyRelu/mul_grad/tuple/control_dependency_1*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*
N*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
З
)gradients/conv2d/BiasAdd_grad/BiasAddGradBiasAddGradgradients/AddN_26*
data_formatNHWC*
_output_shapes
: *
T0
и
.gradients/conv2d/BiasAdd_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^gradients/AddN_26*^gradients/conv2d/BiasAdd_grad/BiasAddGrad
Р
6gradients/conv2d/BiasAdd_grad/tuple/control_dependencyIdentitygradients/AddN_26/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/LeakyRelu_grad/Reshape_1*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€ 
Г
8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1Identity)gradients/conv2d/BiasAdd_grad/BiasAddGrad/^gradients/conv2d/BiasAdd_grad/tuple/group_deps*
T0*<
_class2
0.loc:@gradients/conv2d/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 
ю
#gradients/conv2d/Conv2D_grad/ShapeNShapeNimageconv2d/kernel/read$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
N* 
_output_shapes
::*
T0*
out_type0
у
0gradients/conv2d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput#gradients/conv2d/Conv2D_grad/ShapeNconv2d/kernel/read6gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingVALID*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€*
	dilations
*
T0
ѕ
1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterimage%gradients/conv2d/Conv2D_grad/ShapeN:16gradients/conv2d/BiasAdd_grad/tuple/control_dependency*
paddingVALID*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(
О
-gradients/conv2d/Conv2D_grad/tuple/group_depsNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_12^gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter1^gradients/conv2d/Conv2D_grad/Conv2DBackpropInput
і
5gradients/conv2d/Conv2D_grad/tuple/control_dependencyIdentity0gradients/conv2d/Conv2D_grad/Conv2DBackpropInput.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*C
_class9
75loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropInput*A
_output_shapes/
-:+€€€€€€€€€€€€€€€€€€€€€€€€€€€
Э
7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1Identity1gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter.^gradients/conv2d/Conv2D_grad/tuple/group_deps*
T0*D
_class:
86loc:@gradients/conv2d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
: 
Ю
gradients/AddN_27AddNCgradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul8gradients/conv2d/BiasAdd_grad/tuple/control_dependency_1*
T0*V
_classL
JHloc:@gradients/conv2d/bias/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*
_output_shapes
: 
≠
gradients/AddN_28AddNEgradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul7gradients/conv2d/Conv2D_grad/tuple/control_dependency_1*
T0*X
_classN
LJloc:@gradients/conv2d/kernel/Regularizer/l1_l2_regularizer/L2Loss_grad/mul*
N*&
_output_shapes
: 
Л
beta1_power/initial_valueConst*
valueB
 *fff?*+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
Ь
beta1_power
VariableV2*
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: 
ї
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
w
beta1_power/readIdentitybeta1_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
Л
beta2_power/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *wЊ?*+
_class!
loc:@batch_normalization/beta
Ь
beta2_power
VariableV2*+
_class!
loc:@batch_normalization/beta*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
ї
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
w
beta2_power/readIdentitybeta2_power*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
Ђ
$conv2d/kernel/Adam/Initializer/zerosConst*%
valueB *    * 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 
Є
conv2d/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
ў
conv2d/kernel/Adam/AssignAssignconv2d/kernel/Adam$conv2d/kernel/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
К
conv2d/kernel/Adam/readIdentityconv2d/kernel/Adam*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
≠
&conv2d/kernel/Adam_1/Initializer/zerosConst*%
valueB *    * 
_class
loc:@conv2d/kernel*
dtype0*&
_output_shapes
: 
Ї
conv2d/kernel/Adam_1
VariableV2*
dtype0*&
_output_shapes
: *
shared_name * 
_class
loc:@conv2d/kernel*
	container *
shape: 
я
conv2d/kernel/Adam_1/AssignAssignconv2d/kernel/Adam_1&conv2d/kernel/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: *
use_locking(
О
conv2d/kernel/Adam_1/readIdentityconv2d/kernel/Adam_1*
T0* 
_class
loc:@conv2d/kernel*&
_output_shapes
: 
П
"conv2d/bias/Adam/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ь
conv2d/bias/Adam
VariableV2*
shared_name *
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: 
≈
conv2d/bias/Adam/AssignAssignconv2d/bias/Adam"conv2d/bias/Adam/Initializer/zeros*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: *
use_locking(
x
conv2d/bias/Adam/readIdentityconv2d/bias/Adam*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
С
$conv2d/bias/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@conv2d/bias*
dtype0*
_output_shapes
: 
Ю
conv2d/bias/Adam_1
VariableV2*
_class
loc:@conv2d/bias*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ћ
conv2d/bias/Adam_1/AssignAssignconv2d/bias/Adam_1$conv2d/bias/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
|
conv2d/bias/Adam_1/readIdentityconv2d/bias/Adam_1*
T0*
_class
loc:@conv2d/bias*
_output_shapes
: 
Ђ
0batch_normalization/gamma/Adam/Initializer/zerosConst*
valueB *    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
Є
batch_normalization/gamma/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *,
_class"
 loc:@batch_normalization/gamma*
	container *
shape: 
э
%batch_normalization/gamma/Adam/AssignAssignbatch_normalization/gamma/Adam0batch_normalization/gamma/Adam/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
Ґ
#batch_normalization/gamma/Adam/readIdentitybatch_normalization/gamma/Adam*
T0*,
_class"
 loc:@batch_normalization/gamma*
_output_shapes
: 
≠
2batch_normalization/gamma/Adam_1/Initializer/zerosConst*
valueB *    *,
_class"
 loc:@batch_normalization/gamma*
dtype0*
_output_shapes
: 
Ї
 batch_normalization/gamma/Adam_1
VariableV2*,
_class"
 loc:@batch_normalization/gamma*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Г
'batch_normalization/gamma/Adam_1/AssignAssign batch_normalization/gamma/Adam_12batch_normalization/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
¶
%batch_normalization/gamma/Adam_1/readIdentity batch_normalization/gamma/Adam_1*
_output_shapes
: *
T0*,
_class"
 loc:@batch_normalization/gamma
©
/batch_normalization/beta/Adam/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
ґ
batch_normalization/beta/Adam
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
щ
$batch_normalization/beta/Adam/AssignAssignbatch_normalization/beta/Adam/batch_normalization/beta/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
Я
"batch_normalization/beta/Adam/readIdentitybatch_normalization/beta/Adam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
Ђ
1batch_normalization/beta/Adam_1/Initializer/zerosConst*
valueB *    *+
_class!
loc:@batch_normalization/beta*
dtype0*
_output_shapes
: 
Є
batch_normalization/beta/Adam_1
VariableV2*
dtype0*
_output_shapes
: *
shared_name *+
_class!
loc:@batch_normalization/beta*
	container *
shape: 
€
&batch_normalization/beta/Adam_1/AssignAssignbatch_normalization/beta/Adam_11batch_normalization/beta/Adam_1/Initializer/zeros*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
£
$batch_normalization/beta/Adam_1/readIdentitybatch_normalization/beta/Adam_1*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
≥
6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_1/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_1/kernel
ы
&conv2d_1/kernel/Adam/Initializer/zerosFill6conv2d_1/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_1/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
: 0*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel
Љ
conv2d_1/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 0*
dtype0*&
_output_shapes
: 0
б
conv2d_1/kernel/Adam/AssignAssignconv2d_1/kernel/Adam&conv2d_1/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
Р
conv2d_1/kernel/Adam/readIdentityconv2d_1/kernel/Adam*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
µ
8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          0   *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_1/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_1/kernel*
dtype0*
_output_shapes
: 
Б
(conv2d_1/kernel/Adam_1/Initializer/zerosFill8conv2d_1/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_1/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
Њ
conv2d_1/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_1/kernel*
	container *
shape: 0*
dtype0*&
_output_shapes
: 0
з
conv2d_1/kernel/Adam_1/AssignAssignconv2d_1/kernel/Adam_1(conv2d_1/kernel/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
Ф
conv2d_1/kernel/Adam_1/readIdentityconv2d_1/kernel/Adam_1*
T0*"
_class
loc:@conv2d_1/kernel*&
_output_shapes
: 0
У
$conv2d_1/bias/Adam/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
†
conv2d_1/bias/Adam
VariableV2*
shape:0*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias*
	container 
Ќ
conv2d_1/bias/Adam/AssignAssignconv2d_1/bias/Adam$conv2d_1/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
~
conv2d_1/bias/Adam/readIdentityconv2d_1/bias/Adam*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:0
Х
&conv2d_1/bias/Adam_1/Initializer/zerosConst*
valueB0*    * 
_class
loc:@conv2d_1/bias*
dtype0*
_output_shapes
:0
Ґ
conv2d_1/bias/Adam_1
VariableV2*
dtype0*
_output_shapes
:0*
shared_name * 
_class
loc:@conv2d_1/bias*
	container *
shape:0
”
conv2d_1/bias/Adam_1/AssignAssignconv2d_1/bias/Adam_1&conv2d_1/bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
В
conv2d_1/bias/Adam_1/readIdentityconv2d_1/bias/Adam_1*
T0* 
_class
loc:@conv2d_1/bias*
_output_shapes
:0
ѓ
2batch_normalization_1/gamma/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    *.
_class$
" loc:@batch_normalization_1/gamma
Љ
 batch_normalization_1/gamma/Adam
VariableV2*
shape:0*
dtype0*
_output_shapes
:0*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container 
Е
'batch_normalization_1/gamma/Adam/AssignAssign batch_normalization_1/gamma/Adam2batch_normalization_1/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
®
%batch_normalization_1/gamma/Adam/readIdentity batch_normalization_1/gamma/Adam*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
_output_shapes
:0
±
4batch_normalization_1/gamma/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:0*
valueB0*    *.
_class$
" loc:@batch_normalization_1/gamma
Њ
"batch_normalization_1/gamma/Adam_1
VariableV2*
shared_name *.
_class$
" loc:@batch_normalization_1/gamma*
	container *
shape:0*
dtype0*
_output_shapes
:0
Л
)batch_normalization_1/gamma/Adam_1/AssignAssign"batch_normalization_1/gamma/Adam_14batch_normalization_1/gamma/Adam_1/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
ђ
'batch_normalization_1/gamma/Adam_1/readIdentity"batch_normalization_1/gamma/Adam_1*
_output_shapes
:0*
T0*.
_class$
" loc:@batch_normalization_1/gamma
≠
1batch_normalization_1/beta/Adam/Initializer/zerosConst*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:0
Ї
batch_normalization_1/beta/Adam
VariableV2*
dtype0*
_output_shapes
:0*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:0
Б
&batch_normalization_1/beta/Adam/AssignAssignbatch_normalization_1/beta/Adam1batch_normalization_1/beta/Adam/Initializer/zeros*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
•
$batch_normalization_1/beta/Adam/readIdentitybatch_normalization_1/beta/Adam*
T0*-
_class#
!loc:@batch_normalization_1/beta*
_output_shapes
:0
ѓ
3batch_normalization_1/beta/Adam_1/Initializer/zerosConst*
valueB0*    *-
_class#
!loc:@batch_normalization_1/beta*
dtype0*
_output_shapes
:0
Љ
!batch_normalization_1/beta/Adam_1
VariableV2*
dtype0*
_output_shapes
:0*
shared_name *-
_class#
!loc:@batch_normalization_1/beta*
	container *
shape:0
З
(batch_normalization_1/beta/Adam_1/AssignAssign!batch_normalization_1/beta/Adam_13batch_normalization_1/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
©
&batch_normalization_1/beta/Adam_1/readIdentity!batch_normalization_1/beta/Adam_1*
_output_shapes
:0*
T0*-
_class#
!loc:@batch_normalization_1/beta
≥
6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_2/kernel/Adam/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
ы
&conv2d_2/kernel/Adam/Initializer/zerosFill6conv2d_2/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_2/kernel/Adam/Initializer/zeros/Const*&
_output_shapes
:0@*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel
Љ
conv2d_2/kernel/Adam
VariableV2*
dtype0*&
_output_shapes
:0@*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:0@
б
conv2d_2/kernel/Adam/AssignAssignconv2d_2/kernel/Adam&conv2d_2/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
Р
conv2d_2/kernel/Adam/readIdentityconv2d_2/kernel/Adam*
T0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
µ
8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*%
valueB"      0   @   *"
_class
loc:@conv2d_2/kernel
Ч
.conv2d_2/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_2/kernel*
dtype0*
_output_shapes
: 
Б
(conv2d_2/kernel/Adam_1/Initializer/zerosFill8conv2d_2/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_2/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_2/kernel*&
_output_shapes
:0@
Њ
conv2d_2/kernel/Adam_1
VariableV2*
shared_name *"
_class
loc:@conv2d_2/kernel*
	container *
shape:0@*
dtype0*&
_output_shapes
:0@
з
conv2d_2/kernel/Adam_1/AssignAssignconv2d_2/kernel/Adam_1(conv2d_2/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
Ф
conv2d_2/kernel/Adam_1/readIdentityconv2d_2/kernel/Adam_1*&
_output_shapes
:0@*
T0*"
_class
loc:@conv2d_2/kernel
У
$conv2d_2/bias/Adam/Initializer/zerosConst*
valueB@*    * 
_class
loc:@conv2d_2/bias*
dtype0*
_output_shapes
:@
†
conv2d_2/bias/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@
Ќ
conv2d_2/bias/Adam/AssignAssignconv2d_2/bias/Adam$conv2d_2/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
~
conv2d_2/bias/Adam/readIdentityconv2d_2/bias/Adam*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
Х
&conv2d_2/bias/Adam_1/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    * 
_class
loc:@conv2d_2/bias
Ґ
conv2d_2/bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@conv2d_2/bias*
	container *
shape:@*
dtype0*
_output_shapes
:@
”
conv2d_2/bias/Adam_1/AssignAssignconv2d_2/bias/Adam_1&conv2d_2/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
В
conv2d_2/bias/Adam_1/readIdentityconv2d_2/bias/Adam_1*
T0* 
_class
loc:@conv2d_2/bias*
_output_shapes
:@
ѓ
2batch_normalization_2/gamma/Adam/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
Љ
 batch_normalization_2/gamma/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma*
	container *
shape:@
Е
'batch_normalization_2/gamma/Adam/AssignAssign batch_normalization_2/gamma/Adam2batch_normalization_2/gamma/Adam/Initializer/zeros*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
®
%batch_normalization_2/gamma/Adam/readIdentity batch_normalization_2/gamma/Adam*
_output_shapes
:@*
T0*.
_class$
" loc:@batch_normalization_2/gamma
±
4batch_normalization_2/gamma/Adam_1/Initializer/zerosConst*
valueB@*    *.
_class$
" loc:@batch_normalization_2/gamma*
dtype0*
_output_shapes
:@
Њ
"batch_normalization_2/gamma/Adam_1
VariableV2*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name *.
_class$
" loc:@batch_normalization_2/gamma
Л
)batch_normalization_2/gamma/Adam_1/AssignAssign"batch_normalization_2/gamma/Adam_14batch_normalization_2/gamma/Adam_1/Initializer/zeros*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@*
use_locking(
ђ
'batch_normalization_2/gamma/Adam_1/readIdentity"batch_normalization_2/gamma/Adam_1*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
_output_shapes
:@
≠
1batch_normalization_2/beta/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:@*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta
Ї
batch_normalization_2/beta/Adam
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@
Б
&batch_normalization_2/beta/Adam/AssignAssignbatch_normalization_2/beta/Adam1batch_normalization_2/beta/Adam/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
•
$batch_normalization_2/beta/Adam/readIdentitybatch_normalization_2/beta/Adam*
_output_shapes
:@*
T0*-
_class#
!loc:@batch_normalization_2/beta
ѓ
3batch_normalization_2/beta/Adam_1/Initializer/zerosConst*
valueB@*    *-
_class#
!loc:@batch_normalization_2/beta*
dtype0*
_output_shapes
:@
Љ
!batch_normalization_2/beta/Adam_1
VariableV2*-
_class#
!loc:@batch_normalization_2/beta*
	container *
shape:@*
dtype0*
_output_shapes
:@*
shared_name 
З
(batch_normalization_2/beta/Adam_1/AssignAssign!batch_normalization_2/beta/Adam_13batch_normalization_2/beta/Adam_1/Initializer/zeros*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
©
&batch_normalization_2/beta/Adam_1/readIdentity!batch_normalization_2/beta/Adam_1*
T0*-
_class#
!loc:@batch_normalization_2/beta*
_output_shapes
:@
≥
6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_3/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_3/kernel
ь
&conv2d_3/kernel/Adam/Initializer/zerosFill6conv2d_3/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_3/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
Њ
conv2d_3/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@О*
dtype0*'
_output_shapes
:@О
в
conv2d_3/kernel/Adam/AssignAssignconv2d_3/kernel/Adam&conv2d_3/kernel/Adam/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
С
conv2d_3/kernel/Adam/readIdentityconv2d_3/kernel/Adam*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
µ
8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      @   О   *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_3/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_3/kernel*
dtype0*
_output_shapes
: 
В
(conv2d_3/kernel/Adam_1/Initializer/zerosFill8conv2d_3/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_3/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
ј
conv2d_3/kernel/Adam_1
VariableV2*
dtype0*'
_output_shapes
:@О*
shared_name *"
_class
loc:@conv2d_3/kernel*
	container *
shape:@О
и
conv2d_3/kernel/Adam_1/AssignAssignconv2d_3/kernel/Adam_1(conv2d_3/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
Х
conv2d_3/kernel/Adam_1/readIdentityconv2d_3/kernel/Adam_1*
T0*"
_class
loc:@conv2d_3/kernel*'
_output_shapes
:@О
Х
$conv2d_3/bias/Adam/Initializer/zerosConst*
valueBО*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:О
Ґ
conv2d_3/bias/Adam
VariableV2*
shape:О*
dtype0*
_output_shapes	
:О*
shared_name * 
_class
loc:@conv2d_3/bias*
	container 
ќ
conv2d_3/bias/Adam/AssignAssignconv2d_3/bias/Adam$conv2d_3/bias/Adam/Initializer/zeros*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias

conv2d_3/bias/Adam/readIdentityconv2d_3/bias/Adam*
_output_shapes	
:О*
T0* 
_class
loc:@conv2d_3/bias
Ч
&conv2d_3/bias/Adam_1/Initializer/zerosConst*
valueBО*    * 
_class
loc:@conv2d_3/bias*
dtype0*
_output_shapes	
:О
§
conv2d_3/bias/Adam_1
VariableV2*
	container *
shape:О*
dtype0*
_output_shapes	
:О*
shared_name * 
_class
loc:@conv2d_3/bias
‘
conv2d_3/bias/Adam_1/AssignAssignconv2d_3/bias/Adam_1&conv2d_3/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
Г
conv2d_3/bias/Adam_1/readIdentityconv2d_3/bias/Adam_1*
T0* 
_class
loc:@conv2d_3/bias*
_output_shapes	
:О
≥
6conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Х
,conv2d_4/kernel/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *"
_class
loc:@conv2d_4/kernel
э
&conv2d_4/kernel/Adam/Initializer/zerosFill6conv2d_4/kernel/Adam/Initializer/zeros/shape_as_tensor,conv2d_4/kernel/Adam/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
ј
conv2d_4/kernel/Adam
VariableV2*"
_class
loc:@conv2d_4/kernel*
	container *
shape:ОА*
dtype0*(
_output_shapes
:ОА*
shared_name 
г
conv2d_4/kernel/Adam/AssignAssignconv2d_4/kernel/Adam&conv2d_4/kernel/Adam/Initializer/zeros*
validate_shape(*(
_output_shapes
:ОА*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel
Т
conv2d_4/kernel/Adam/readIdentityconv2d_4/kernel/Adam*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
µ
8conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"      О   А   *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
:
Ч
.conv2d_4/kernel/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *"
_class
loc:@conv2d_4/kernel*
dtype0*
_output_shapes
: 
Г
(conv2d_4/kernel/Adam_1/Initializer/zerosFill8conv2d_4/kernel/Adam_1/Initializer/zeros/shape_as_tensor.conv2d_4/kernel/Adam_1/Initializer/zeros/Const*
T0*

index_type0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
¬
conv2d_4/kernel/Adam_1
VariableV2*"
_class
loc:@conv2d_4/kernel*
	container *
shape:ОА*
dtype0*(
_output_shapes
:ОА*
shared_name 
й
conv2d_4/kernel/Adam_1/AssignAssignconv2d_4/kernel/Adam_1(conv2d_4/kernel/Adam_1/Initializer/zeros*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
Ц
conv2d_4/kernel/Adam_1/readIdentityconv2d_4/kernel/Adam_1*
T0*"
_class
loc:@conv2d_4/kernel*(
_output_shapes
:ОА
Х
$conv2d_4/bias/Adam/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:А
Ґ
conv2d_4/bias/Adam
VariableV2*
	container *
shape:А*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@conv2d_4/bias
ќ
conv2d_4/bias/Adam/AssignAssignconv2d_4/bias/Adam$conv2d_4/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А

conv2d_4/bias/Adam/readIdentityconv2d_4/bias/Adam*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:А
Ч
&conv2d_4/bias/Adam_1/Initializer/zerosConst*
valueBА*    * 
_class
loc:@conv2d_4/bias*
dtype0*
_output_shapes	
:А
§
conv2d_4/bias/Adam_1
VariableV2*
dtype0*
_output_shapes	
:А*
shared_name * 
_class
loc:@conv2d_4/bias*
	container *
shape:А
‘
conv2d_4/bias/Adam_1/AssignAssignconv2d_4/bias/Adam_1&conv2d_4/bias/Adam_1/Initializer/zeros*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Г
conv2d_4/bias/Adam_1/readIdentityconv2d_4/bias/Adam_1*
T0* 
_class
loc:@conv2d_4/bias*
_output_shapes	
:А
±
&conv2d_5/kernel/Adam/Initializer/zerosConst*
dtype0*'
_output_shapes
:А*&
valueBА*    *"
_class
loc:@conv2d_5/kernel
Њ
conv2d_5/kernel/Adam
VariableV2*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А*
dtype0*'
_output_shapes
:А
в
conv2d_5/kernel/Adam/AssignAssignconv2d_5/kernel/Adam&conv2d_5/kernel/Adam/Initializer/zeros*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
С
conv2d_5/kernel/Adam/readIdentityconv2d_5/kernel/Adam*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
≥
(conv2d_5/kernel/Adam_1/Initializer/zerosConst*&
valueBА*    *"
_class
loc:@conv2d_5/kernel*
dtype0*'
_output_shapes
:А
ј
conv2d_5/kernel/Adam_1
VariableV2*
dtype0*'
_output_shapes
:А*
shared_name *"
_class
loc:@conv2d_5/kernel*
	container *
shape:А
и
conv2d_5/kernel/Adam_1/AssignAssignconv2d_5/kernel/Adam_1(conv2d_5/kernel/Adam_1/Initializer/zeros*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
Х
conv2d_5/kernel/Adam_1/readIdentityconv2d_5/kernel/Adam_1*
T0*"
_class
loc:@conv2d_5/kernel*'
_output_shapes
:А
У
$conv2d_5/bias/Adam/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
†
conv2d_5/bias/Adam
VariableV2*
shared_name * 
_class
loc:@conv2d_5/bias*
	container *
shape:*
dtype0*
_output_shapes
:
Ќ
conv2d_5/bias/Adam/AssignAssignconv2d_5/bias/Adam$conv2d_5/bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
~
conv2d_5/bias/Adam/readIdentityconv2d_5/bias/Adam*
_output_shapes
:*
T0* 
_class
loc:@conv2d_5/bias
Х
&conv2d_5/bias/Adam_1/Initializer/zerosConst*
valueB*    * 
_class
loc:@conv2d_5/bias*
dtype0*
_output_shapes
:
Ґ
conv2d_5/bias/Adam_1
VariableV2*
shape:*
dtype0*
_output_shapes
:*
shared_name * 
_class
loc:@conv2d_5/bias*
	container 
”
conv2d_5/bias/Adam_1/AssignAssignconv2d_5/bias/Adam_1&conv2d_5/bias/Adam_1/Initializer/zeros*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
В
conv2d_5/bias/Adam_1/readIdentityconv2d_5/bias/Adam_1*
T0* 
_class
loc:@conv2d_5/bias*
_output_shapes
:
 
train/learning_rateConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *љ7Ж5*
dtype0*
_output_shapes
: 
¬
train/beta1Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *fff?*
dtype0*
_output_shapes
: 
¬
train/beta2Const$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *wЊ?*
dtype0*
_output_shapes
: 
ƒ
train/epsilonConst$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1*
valueB
 *wћ+2*
dtype0*
_output_shapes
: 
ў
$train/update_conv2d/kernel/ApplyAdam	ApplyAdamconv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_28*
use_nesterov( *&
_output_shapes
: *
use_locking( *
T0* 
_class
loc:@conv2d/kernel
√
"train/update_conv2d/bias/ApplyAdam	ApplyAdamconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_27*
use_locking( *
T0*
_class
loc:@conv2d/bias*
use_nesterov( *
_output_shapes
: 
Й
0train/update_batch_normalization/gamma/ApplyAdam	ApplyAdambatch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_24*
use_locking( *
T0*,
_class"
 loc:@batch_normalization/gamma*
use_nesterov( *
_output_shapes
: 
Д
/train/update_batch_normalization/beta/ApplyAdam	ApplyAdambatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_25*
T0*+
_class!
loc:@batch_normalization/beta*
use_nesterov( *
_output_shapes
: *
use_locking( 
г
&train/update_conv2d_1/kernel/ApplyAdam	ApplyAdamconv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_22*
use_locking( *
T0*"
_class
loc:@conv2d_1/kernel*
use_nesterov( *&
_output_shapes
: 0
Ќ
$train/update_conv2d_1/bias/ApplyAdam	ApplyAdamconv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_21*
use_locking( *
T0* 
_class
loc:@conv2d_1/bias*
use_nesterov( *
_output_shapes
:0
У
2train/update_batch_normalization_1/gamma/ApplyAdam	ApplyAdambatch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_18*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
use_nesterov( *
_output_shapes
:0*
use_locking( 
О
1train/update_batch_normalization_1/beta/ApplyAdam	ApplyAdambatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_19*
use_locking( *
T0*-
_class#
!loc:@batch_normalization_1/beta*
use_nesterov( *
_output_shapes
:0
г
&train/update_conv2d_2/kernel/ApplyAdam	ApplyAdamconv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_16*
T0*"
_class
loc:@conv2d_2/kernel*
use_nesterov( *&
_output_shapes
:0@*
use_locking( 
Ќ
$train/update_conv2d_2/bias/ApplyAdam	ApplyAdamconv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_15*
use_locking( *
T0* 
_class
loc:@conv2d_2/bias*
use_nesterov( *
_output_shapes
:@
У
2train/update_batch_normalization_2/gamma/ApplyAdam	ApplyAdambatch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_12*
use_locking( *
T0*.
_class$
" loc:@batch_normalization_2/gamma*
use_nesterov( *
_output_shapes
:@
О
1train/update_batch_normalization_2/beta/ApplyAdam	ApplyAdambatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_13*
T0*-
_class#
!loc:@batch_normalization_2/beta*
use_nesterov( *
_output_shapes
:@*
use_locking( 
г
&train/update_conv2d_3/kernel/ApplyAdam	ApplyAdamconv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_9*
T0*"
_class
loc:@conv2d_3/kernel*
use_nesterov( *'
_output_shapes
:@О*
use_locking( 
Ќ
$train/update_conv2d_3/bias/ApplyAdam	ApplyAdamconv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_8*
use_locking( *
T0* 
_class
loc:@conv2d_3/bias*
use_nesterov( *
_output_shapes	
:О
д
&train/update_conv2d_4/kernel/ApplyAdam	ApplyAdamconv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_5*
use_nesterov( *(
_output_shapes
:ОА*
use_locking( *
T0*"
_class
loc:@conv2d_4/kernel
Ќ
$train/update_conv2d_4/bias/ApplyAdam	ApplyAdamconv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_4*
T0* 
_class
loc:@conv2d_4/bias*
use_nesterov( *
_output_shapes	
:А*
use_locking( 
М
&train/update_conv2d_5/kernel/ApplyAdam	ApplyAdamconv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilon9gradients/conv2d_5/Conv2D_grad/tuple/control_dependency_1*
T0*"
_class
loc:@conv2d_5/kernel*
use_nesterov( *'
_output_shapes
:А*
use_locking( 
ћ
$train/update_conv2d_5/bias/ApplyAdam	ApplyAdamconv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1beta1_power/readbeta2_power/readtrain/learning_ratetrain/beta1train/beta2train/epsilongradients/AddN_1*
T0* 
_class
loc:@conv2d_5/bias*
use_nesterov( *
_output_shapes
:*
use_locking( 
Р
	train/mulMulbeta1_power/readtrain/beta10^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
•
train/AssignAssignbeta1_power	train/mul*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking( 
Т
train/mul_1Mulbeta2_power/readtrain/beta20^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam*
T0*+
_class!
loc:@batch_normalization/beta*
_output_shapes
: 
©
train/Assign_1Assignbeta2_powertrain/mul_1*
use_locking( *
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
≤
trainNoOp$^batch_normalization/AssignMovingAvg&^batch_normalization/AssignMovingAvg_1&^batch_normalization_1/AssignMovingAvg(^batch_normalization_1/AssignMovingAvg_1&^batch_normalization_2/AssignMovingAvg(^batch_normalization_2/AssignMovingAvg_1^train/Assign^train/Assign_10^train/update_batch_normalization/beta/ApplyAdam1^train/update_batch_normalization/gamma/ApplyAdam2^train/update_batch_normalization_1/beta/ApplyAdam3^train/update_batch_normalization_1/gamma/ApplyAdam2^train/update_batch_normalization_2/beta/ApplyAdam3^train/update_batch_normalization_2/gamma/ApplyAdam#^train/update_conv2d/bias/ApplyAdam%^train/update_conv2d/kernel/ApplyAdam%^train/update_conv2d_1/bias/ApplyAdam'^train/update_conv2d_1/kernel/ApplyAdam%^train/update_conv2d_2/bias/ApplyAdam'^train/update_conv2d_2/kernel/ApplyAdam%^train/update_conv2d_3/bias/ApplyAdam'^train/update_conv2d_3/kernel/ApplyAdam%^train/update_conv2d_4/bias/ApplyAdam'^train/update_conv2d_4/kernel/ApplyAdam%^train/update_conv2d_5/bias/ApplyAdam'^train/update_conv2d_5/kernel/ApplyAdam
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
„
save/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:>*К
valueАBэ>Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1
в
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:>*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ь
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1conv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1conv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1conv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1conv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1*L
dtypesB
@2>
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Џ
save/RestoreV2/tensor_namesConst*К
valueАBэ>Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:>
е
save/RestoreV2/shape_and_slicesConst*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:>
ƒ
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*О
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*L
dtypesB
@2>
Ї
save/AssignAssignbatch_normalization/betasave/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
√
save/Assign_1Assignbatch_normalization/beta/Adamsave/RestoreV2:1*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
≈
save/Assign_2Assignbatch_normalization/beta/Adam_1save/RestoreV2:2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
ј
save/Assign_3Assignbatch_normalization/gammasave/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
≈
save/Assign_4Assignbatch_normalization/gamma/Adamsave/RestoreV2:4*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
«
save/Assign_5Assign batch_normalization/gamma/Adam_1save/RestoreV2:5*
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: 
ћ
save/Assign_6Assignbatch_normalization/moving_meansave/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: 
‘
save/Assign_7Assign#batch_normalization/moving_variancesave/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: 
¬
save/Assign_8Assignbatch_normalization_1/betasave/RestoreV2:8*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
«
save/Assign_9Assignbatch_normalization_1/beta/Adamsave/RestoreV2:9*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0*
use_locking(
Ћ
save/Assign_10Assign!batch_normalization_1/beta/Adam_1save/RestoreV2:10*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
∆
save/Assign_11Assignbatch_normalization_1/gammasave/RestoreV2:11*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0*
use_locking(
Ћ
save/Assign_12Assign batch_normalization_1/gamma/Adamsave/RestoreV2:12*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
Ќ
save/Assign_13Assign"batch_normalization_1/gamma/Adam_1save/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
“
save/Assign_14Assign!batch_normalization_1/moving_meansave/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
Џ
save/Assign_15Assign%batch_normalization_1/moving_variancesave/RestoreV2:15*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0*
use_locking(
ƒ
save/Assign_16Assignbatch_normalization_2/betasave/RestoreV2:16*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
…
save/Assign_17Assignbatch_normalization_2/beta/Adamsave/RestoreV2:17*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
Ћ
save/Assign_18Assign!batch_normalization_2/beta/Adam_1save/RestoreV2:18*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
∆
save/Assign_19Assignbatch_normalization_2/gammasave/RestoreV2:19*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
Ћ
save/Assign_20Assign batch_normalization_2/gamma/Adamsave/RestoreV2:20*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
Ќ
save/Assign_21Assign"batch_normalization_2/gamma/Adam_1save/RestoreV2:21*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
“
save/Assign_22Assign!batch_normalization_2/moving_meansave/RestoreV2:22*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
Џ
save/Assign_23Assign%batch_normalization_2/moving_variancesave/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
ѓ
save/Assign_24Assignbeta1_powersave/RestoreV2:24*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
ѓ
save/Assign_25Assignbeta2_powersave/RestoreV2:25*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
¶
save/Assign_26Assignconv2d/biassave/RestoreV2:26*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
Ђ
save/Assign_27Assignconv2d/bias/Adamsave/RestoreV2:27*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
≠
save/Assign_28Assignconv2d/bias/Adam_1save/RestoreV2:28*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
ґ
save/Assign_29Assignconv2d/kernelsave/RestoreV2:29*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
ї
save/Assign_30Assignconv2d/kernel/Adamsave/RestoreV2:30*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
љ
save/Assign_31Assignconv2d/kernel/Adam_1save/RestoreV2:31*
use_locking(*
T0* 
_class
loc:@conv2d/kernel*
validate_shape(*&
_output_shapes
: 
™
save/Assign_32Assignconv2d_1/biassave/RestoreV2:32*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
ѓ
save/Assign_33Assignconv2d_1/bias/Adamsave/RestoreV2:33*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
±
save/Assign_34Assignconv2d_1/bias/Adam_1save/RestoreV2:34*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
Ї
save/Assign_35Assignconv2d_1/kernelsave/RestoreV2:35*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
њ
save/Assign_36Assignconv2d_1/kernel/Adamsave/RestoreV2:36*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0*
use_locking(
Ѕ
save/Assign_37Assignconv2d_1/kernel/Adam_1save/RestoreV2:37*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
™
save/Assign_38Assignconv2d_2/biassave/RestoreV2:38*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
ѓ
save/Assign_39Assignconv2d_2/bias/Adamsave/RestoreV2:39*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
±
save/Assign_40Assignconv2d_2/bias/Adam_1save/RestoreV2:40*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
Ї
save/Assign_41Assignconv2d_2/kernelsave/RestoreV2:41*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
њ
save/Assign_42Assignconv2d_2/kernel/Adamsave/RestoreV2:42*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
Ѕ
save/Assign_43Assignconv2d_2/kernel/Adam_1save/RestoreV2:43*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@*
use_locking(
Ђ
save/Assign_44Assignconv2d_3/biassave/RestoreV2:44*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
∞
save/Assign_45Assignconv2d_3/bias/Adamsave/RestoreV2:45*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
≤
save/Assign_46Assignconv2d_3/bias/Adam_1save/RestoreV2:46*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О
ї
save/Assign_47Assignconv2d_3/kernelsave/RestoreV2:47*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
ј
save/Assign_48Assignconv2d_3/kernel/Adamsave/RestoreV2:48*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О*
use_locking(
¬
save/Assign_49Assignconv2d_3/kernel/Adam_1save/RestoreV2:49*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
Ђ
save/Assign_50Assignconv2d_4/biassave/RestoreV2:50*
validate_shape(*
_output_shapes	
:А*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias
∞
save/Assign_51Assignconv2d_4/bias/Adamsave/RestoreV2:51*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
≤
save/Assign_52Assignconv2d_4/bias/Adam_1save/RestoreV2:52*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А*
use_locking(
Љ
save/Assign_53Assignconv2d_4/kernelsave/RestoreV2:53*
validate_shape(*(
_output_shapes
:ОА*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel
Ѕ
save/Assign_54Assignconv2d_4/kernel/Adamsave/RestoreV2:54*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА*
use_locking(
√
save/Assign_55Assignconv2d_4/kernel/Adam_1save/RestoreV2:55*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
™
save/Assign_56Assignconv2d_5/biassave/RestoreV2:56*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
ѓ
save/Assign_57Assignconv2d_5/bias/Adamsave/RestoreV2:57*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
±
save/Assign_58Assignconv2d_5/bias/Adam_1save/RestoreV2:58*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
ї
save/Assign_59Assignconv2d_5/kernelsave/RestoreV2:59*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
ј
save/Assign_60Assignconv2d_5/kernel/Adamsave/RestoreV2:60*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
¬
save/Assign_61Assignconv2d_5/kernel/Adam_1save/RestoreV2:61*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А
™
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_7^save/Assign_8^save/Assign_9
с
initNoOp%^batch_normalization/beta/Adam/Assign'^batch_normalization/beta/Adam_1/Assign ^batch_normalization/beta/Assign&^batch_normalization/gamma/Adam/Assign(^batch_normalization/gamma/Adam_1/Assign!^batch_normalization/gamma/Assign'^batch_normalization/moving_mean/Assign+^batch_normalization/moving_variance/Assign'^batch_normalization_1/beta/Adam/Assign)^batch_normalization_1/beta/Adam_1/Assign"^batch_normalization_1/beta/Assign(^batch_normalization_1/gamma/Adam/Assign*^batch_normalization_1/gamma/Adam_1/Assign#^batch_normalization_1/gamma/Assign)^batch_normalization_1/moving_mean/Assign-^batch_normalization_1/moving_variance/Assign'^batch_normalization_2/beta/Adam/Assign)^batch_normalization_2/beta/Adam_1/Assign"^batch_normalization_2/beta/Assign(^batch_normalization_2/gamma/Adam/Assign*^batch_normalization_2/gamma/Adam_1/Assign#^batch_normalization_2/gamma/Assign)^batch_normalization_2/moving_mean/Assign-^batch_normalization_2/moving_variance/Assign^beta1_power/Assign^beta2_power/Assign^conv2d/bias/Adam/Assign^conv2d/bias/Adam_1/Assign^conv2d/bias/Assign^conv2d/kernel/Adam/Assign^conv2d/kernel/Adam_1/Assign^conv2d/kernel/Assign^conv2d_1/bias/Adam/Assign^conv2d_1/bias/Adam_1/Assign^conv2d_1/bias/Assign^conv2d_1/kernel/Adam/Assign^conv2d_1/kernel/Adam_1/Assign^conv2d_1/kernel/Assign^conv2d_2/bias/Adam/Assign^conv2d_2/bias/Adam_1/Assign^conv2d_2/bias/Assign^conv2d_2/kernel/Adam/Assign^conv2d_2/kernel/Adam_1/Assign^conv2d_2/kernel/Assign^conv2d_3/bias/Adam/Assign^conv2d_3/bias/Adam_1/Assign^conv2d_3/bias/Assign^conv2d_3/kernel/Adam/Assign^conv2d_3/kernel/Adam_1/Assign^conv2d_3/kernel/Assign^conv2d_4/bias/Adam/Assign^conv2d_4/bias/Adam_1/Assign^conv2d_4/bias/Assign^conv2d_4/kernel/Adam/Assign^conv2d_4/kernel/Adam_1/Assign^conv2d_4/kernel/Assign^conv2d_5/bias/Adam/Assign^conv2d_5/bias/Adam_1/Assign^conv2d_5/bias/Assign^conv2d_5/kernel/Adam/Assign^conv2d_5/kernel/Adam_1/Assign^conv2d_5/kernel/Assign
™
init_1NoOp'^precision/false_positives/count/Assign&^precision/true_positives/count/Assign$^recall/false_negatives/count/Assign#^recall/true_positives/count/Assign
R
save_1/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
Ж
save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_665b27216cab4191a10aa75d1dac27ae/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
ў
save_1/SaveV2/tensor_namesConst*
dtype0*
_output_shapes
:>*К
valueАBэ>Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1
д
save_1/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:>*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
Ѓ
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesbatch_normalization/betabatch_normalization/beta/Adambatch_normalization/beta/Adam_1batch_normalization/gammabatch_normalization/gamma/Adam batch_normalization/gamma/Adam_1batch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/betabatch_normalization_1/beta/Adam!batch_normalization_1/beta/Adam_1batch_normalization_1/gamma batch_normalization_1/gamma/Adam"batch_normalization_1/gamma/Adam_1!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization_2/betabatch_normalization_2/beta/Adam!batch_normalization_2/beta/Adam_1batch_normalization_2/gamma batch_normalization_2/gamma/Adam"batch_normalization_2/gamma/Adam_1!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancebeta1_powerbeta2_powerconv2d/biasconv2d/bias/Adamconv2d/bias/Adam_1conv2d/kernelconv2d/kernel/Adamconv2d/kernel/Adam_1conv2d_1/biasconv2d_1/bias/Adamconv2d_1/bias/Adam_1conv2d_1/kernelconv2d_1/kernel/Adamconv2d_1/kernel/Adam_1conv2d_2/biasconv2d_2/bias/Adamconv2d_2/bias/Adam_1conv2d_2/kernelconv2d_2/kernel/Adamconv2d_2/kernel/Adam_1conv2d_3/biasconv2d_3/bias/Adamconv2d_3/bias/Adam_1conv2d_3/kernelconv2d_3/kernel/Adamconv2d_3/kernel/Adam_1conv2d_4/biasconv2d_4/bias/Adamconv2d_4/bias/Adam_1conv2d_4/kernelconv2d_4/kernel/Adamconv2d_4/kernel/Adam_1conv2d_5/biasconv2d_5/bias/Adamconv2d_5/bias/Adam_1conv2d_5/kernelconv2d_5/kernel/Adamconv2d_5/kernel/Adam_1*L
dtypesB
@2>
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*
T0*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
T0*

axis *
N*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
№
save_1/RestoreV2/tensor_namesConst*К
valueАBэ>Bbatch_normalization/betaBbatch_normalization/beta/AdamBbatch_normalization/beta/Adam_1Bbatch_normalization/gammaBbatch_normalization/gamma/AdamB batch_normalization/gamma/Adam_1Bbatch_normalization/moving_meanB#batch_normalization/moving_varianceBbatch_normalization_1/betaBbatch_normalization_1/beta/AdamB!batch_normalization_1/beta/Adam_1Bbatch_normalization_1/gammaB batch_normalization_1/gamma/AdamB"batch_normalization_1/gamma/Adam_1B!batch_normalization_1/moving_meanB%batch_normalization_1/moving_varianceBbatch_normalization_2/betaBbatch_normalization_2/beta/AdamB!batch_normalization_2/beta/Adam_1Bbatch_normalization_2/gammaB batch_normalization_2/gamma/AdamB"batch_normalization_2/gamma/Adam_1B!batch_normalization_2/moving_meanB%batch_normalization_2/moving_varianceBbeta1_powerBbeta2_powerBconv2d/biasBconv2d/bias/AdamBconv2d/bias/Adam_1Bconv2d/kernelBconv2d/kernel/AdamBconv2d/kernel/Adam_1Bconv2d_1/biasBconv2d_1/bias/AdamBconv2d_1/bias/Adam_1Bconv2d_1/kernelBconv2d_1/kernel/AdamBconv2d_1/kernel/Adam_1Bconv2d_2/biasBconv2d_2/bias/AdamBconv2d_2/bias/Adam_1Bconv2d_2/kernelBconv2d_2/kernel/AdamBconv2d_2/kernel/Adam_1Bconv2d_3/biasBconv2d_3/bias/AdamBconv2d_3/bias/Adam_1Bconv2d_3/kernelBconv2d_3/kernel/AdamBconv2d_3/kernel/Adam_1Bconv2d_4/biasBconv2d_4/bias/AdamBconv2d_4/bias/Adam_1Bconv2d_4/kernelBconv2d_4/kernel/AdamBconv2d_4/kernel/Adam_1Bconv2d_5/biasBconv2d_5/bias/AdamBconv2d_5/bias/Adam_1Bconv2d_5/kernelBconv2d_5/kernel/AdamBconv2d_5/kernel/Adam_1*
dtype0*
_output_shapes
:>
з
!save_1/RestoreV2/shape_and_slicesConst*С
valueЗBД>B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:>
ћ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*L
dtypesB
@2>*О
_output_shapesы
ш::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
Њ
save_1/AssignAssignbatch_normalization/betasave_1/RestoreV2*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
«
save_1/Assign_1Assignbatch_normalization/beta/Adamsave_1/RestoreV2:1*
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: 
…
save_1/Assign_2Assignbatch_normalization/beta/Adam_1save_1/RestoreV2:2*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
ƒ
save_1/Assign_3Assignbatch_normalization/gammasave_1/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*,
_class"
 loc:@batch_normalization/gamma
…
save_1/Assign_4Assignbatch_normalization/gamma/Adamsave_1/RestoreV2:4*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
Ћ
save_1/Assign_5Assign batch_normalization/gamma/Adam_1save_1/RestoreV2:5*
T0*,
_class"
 loc:@batch_normalization/gamma*
validate_shape(*
_output_shapes
: *
use_locking(
–
save_1/Assign_6Assignbatch_normalization/moving_meansave_1/RestoreV2:6*
use_locking(*
T0*2
_class(
&$loc:@batch_normalization/moving_mean*
validate_shape(*
_output_shapes
: 
Ў
save_1/Assign_7Assign#batch_normalization/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*6
_class,
*(loc:@batch_normalization/moving_variance*
validate_shape(*
_output_shapes
: 
∆
save_1/Assign_8Assignbatch_normalization_1/betasave_1/RestoreV2:8*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
Ћ
save_1/Assign_9Assignbatch_normalization_1/beta/Adamsave_1/RestoreV2:9*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta*
validate_shape(*
_output_shapes
:0
ѕ
save_1/Assign_10Assign!batch_normalization_1/beta/Adam_1save_1/RestoreV2:10*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_1/beta
 
save_1/Assign_11Assignbatch_normalization_1/gammasave_1/RestoreV2:11*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
ѕ
save_1/Assign_12Assign batch_normalization_1/gamma/Adamsave_1/RestoreV2:12*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma
—
save_1/Assign_13Assign"batch_normalization_1/gamma/Adam_1save_1/RestoreV2:13*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_1/gamma*
validate_shape(*
_output_shapes
:0
÷
save_1/Assign_14Assign!batch_normalization_1/moving_meansave_1/RestoreV2:14*
use_locking(*
T0*4
_class*
(&loc:@batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes
:0
ё
save_1/Assign_15Assign%batch_normalization_1/moving_variancesave_1/RestoreV2:15*
T0*8
_class.
,*loc:@batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes
:0*
use_locking(
»
save_1/Assign_16Assignbatch_normalization_2/betasave_1/RestoreV2:16*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
Ќ
save_1/Assign_17Assignbatch_normalization_2/beta/Adamsave_1/RestoreV2:17*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
ѕ
save_1/Assign_18Assign!batch_normalization_2/beta/Adam_1save_1/RestoreV2:18*
use_locking(*
T0*-
_class#
!loc:@batch_normalization_2/beta*
validate_shape(*
_output_shapes
:@
 
save_1/Assign_19Assignbatch_normalization_2/gammasave_1/RestoreV2:19*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
ѕ
save_1/Assign_20Assign batch_normalization_2/gamma/Adamsave_1/RestoreV2:20*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma*
validate_shape(*
_output_shapes
:@
—
save_1/Assign_21Assign"batch_normalization_2/gamma/Adam_1save_1/RestoreV2:21*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*.
_class$
" loc:@batch_normalization_2/gamma
÷
save_1/Assign_22Assign!batch_normalization_2/moving_meansave_1/RestoreV2:22*
T0*4
_class*
(&loc:@batch_normalization_2/moving_mean*
validate_shape(*
_output_shapes
:@*
use_locking(
ё
save_1/Assign_23Assign%batch_normalization_2/moving_variancesave_1/RestoreV2:23*
use_locking(*
T0*8
_class.
,*loc:@batch_normalization_2/moving_variance*
validate_shape(*
_output_shapes
:@
≥
save_1/Assign_24Assignbeta1_powersave_1/RestoreV2:24*
T0*+
_class!
loc:@batch_normalization/beta*
validate_shape(*
_output_shapes
: *
use_locking(
≥
save_1/Assign_25Assignbeta2_powersave_1/RestoreV2:25*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*+
_class!
loc:@batch_normalization/beta
™
save_1/Assign_26Assignconv2d/biassave_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
ѓ
save_1/Assign_27Assignconv2d/bias/Adamsave_1/RestoreV2:27*
use_locking(*
T0*
_class
loc:@conv2d/bias*
validate_shape(*
_output_shapes
: 
±
save_1/Assign_28Assignconv2d/bias/Adam_1save_1/RestoreV2:28*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@conv2d/bias
Ї
save_1/Assign_29Assignconv2d/kernelsave_1/RestoreV2:29*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
њ
save_1/Assign_30Assignconv2d/kernel/Adamsave_1/RestoreV2:30*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
Ѕ
save_1/Assign_31Assignconv2d/kernel/Adam_1save_1/RestoreV2:31*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0* 
_class
loc:@conv2d/kernel
Ѓ
save_1/Assign_32Assignconv2d_1/biassave_1/RestoreV2:32*
validate_shape(*
_output_shapes
:0*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias
≥
save_1/Assign_33Assignconv2d_1/bias/Adamsave_1/RestoreV2:33*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0*
use_locking(
µ
save_1/Assign_34Assignconv2d_1/bias/Adam_1save_1/RestoreV2:34*
use_locking(*
T0* 
_class
loc:@conv2d_1/bias*
validate_shape(*
_output_shapes
:0
Њ
save_1/Assign_35Assignconv2d_1/kernelsave_1/RestoreV2:35*
validate_shape(*&
_output_shapes
: 0*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel
√
save_1/Assign_36Assignconv2d_1/kernel/Adamsave_1/RestoreV2:36*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
≈
save_1/Assign_37Assignconv2d_1/kernel/Adam_1save_1/RestoreV2:37*
use_locking(*
T0*"
_class
loc:@conv2d_1/kernel*
validate_shape(*&
_output_shapes
: 0
Ѓ
save_1/Assign_38Assignconv2d_2/biassave_1/RestoreV2:38*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@
≥
save_1/Assign_39Assignconv2d_2/bias/Adamsave_1/RestoreV2:39*
T0* 
_class
loc:@conv2d_2/bias*
validate_shape(*
_output_shapes
:@*
use_locking(
µ
save_1/Assign_40Assignconv2d_2/bias/Adam_1save_1/RestoreV2:40*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0* 
_class
loc:@conv2d_2/bias
Њ
save_1/Assign_41Assignconv2d_2/kernelsave_1/RestoreV2:41*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
√
save_1/Assign_42Assignconv2d_2/kernel/Adamsave_1/RestoreV2:42*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel*
validate_shape(*&
_output_shapes
:0@
≈
save_1/Assign_43Assignconv2d_2/kernel/Adam_1save_1/RestoreV2:43*
validate_shape(*&
_output_shapes
:0@*
use_locking(*
T0*"
_class
loc:@conv2d_2/kernel
ѓ
save_1/Assign_44Assignconv2d_3/biassave_1/RestoreV2:44*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
і
save_1/Assign_45Assignconv2d_3/bias/Adamsave_1/RestoreV2:45*
T0* 
_class
loc:@conv2d_3/bias*
validate_shape(*
_output_shapes	
:О*
use_locking(
ґ
save_1/Assign_46Assignconv2d_3/bias/Adam_1save_1/RestoreV2:46*
validate_shape(*
_output_shapes	
:О*
use_locking(*
T0* 
_class
loc:@conv2d_3/bias
њ
save_1/Assign_47Assignconv2d_3/kernelsave_1/RestoreV2:47*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
ƒ
save_1/Assign_48Assignconv2d_3/kernel/Adamsave_1/RestoreV2:48*
use_locking(*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О
∆
save_1/Assign_49Assignconv2d_3/kernel/Adam_1save_1/RestoreV2:49*
T0*"
_class
loc:@conv2d_3/kernel*
validate_shape(*'
_output_shapes
:@О*
use_locking(
ѓ
save_1/Assign_50Assignconv2d_4/biassave_1/RestoreV2:50*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
і
save_1/Assign_51Assignconv2d_4/bias/Adamsave_1/RestoreV2:51*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
ґ
save_1/Assign_52Assignconv2d_4/bias/Adam_1save_1/RestoreV2:52*
use_locking(*
T0* 
_class
loc:@conv2d_4/bias*
validate_shape(*
_output_shapes	
:А
ј
save_1/Assign_53Assignconv2d_4/kernelsave_1/RestoreV2:53*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА
≈
save_1/Assign_54Assignconv2d_4/kernel/Adamsave_1/RestoreV2:54*
validate_shape(*(
_output_shapes
:ОА*
use_locking(*
T0*"
_class
loc:@conv2d_4/kernel
«
save_1/Assign_55Assignconv2d_4/kernel/Adam_1save_1/RestoreV2:55*
T0*"
_class
loc:@conv2d_4/kernel*
validate_shape(*(
_output_shapes
:ОА*
use_locking(
Ѓ
save_1/Assign_56Assignconv2d_5/biassave_1/RestoreV2:56*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:
≥
save_1/Assign_57Assignconv2d_5/bias/Adamsave_1/RestoreV2:57*
T0* 
_class
loc:@conv2d_5/bias*
validate_shape(*
_output_shapes
:*
use_locking(
µ
save_1/Assign_58Assignconv2d_5/bias/Adam_1save_1/RestoreV2:58*
validate_shape(*
_output_shapes
:*
use_locking(*
T0* 
_class
loc:@conv2d_5/bias
њ
save_1/Assign_59Assignconv2d_5/kernelsave_1/RestoreV2:59*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
ƒ
save_1/Assign_60Assignconv2d_5/kernel/Adamsave_1/RestoreV2:60*
T0*"
_class
loc:@conv2d_5/kernel*
validate_shape(*'
_output_shapes
:А*
use_locking(
∆
save_1/Assign_61Assignconv2d_5/kernel/Adam_1save_1/RestoreV2:61*
validate_shape(*'
_output_shapes
:А*
use_locking(*
T0*"
_class
loc:@conv2d_5/kernel
™	
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_32^save_1/Assign_33^save_1/Assign_34^save_1/Assign_35^save_1/Assign_36^save_1/Assign_37^save_1/Assign_38^save_1/Assign_39^save_1/Assign_4^save_1/Assign_40^save_1/Assign_41^save_1/Assign_42^save_1/Assign_43^save_1/Assign_44^save_1/Assign_45^save_1/Assign_46^save_1/Assign_47^save_1/Assign_48^save_1/Assign_49^save_1/Assign_5^save_1/Assign_50^save_1/Assign_51^save_1/Assign_52^save_1/Assign_53^save_1/Assign_54^save_1/Assign_55^save_1/Assign_56^save_1/Assign_57^save_1/Assign_58^save_1/Assign_59^save_1/Assign_6^save_1/Assign_60^save_1/Assign_61^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shardљ
•
Ю
/tf_data_structured_function_wrapper_iafEtcXZn68
arg0	

pyfunc
pyfunc_02DWrapper for passing nested structures to and from tf.data functions.ИJ
PyFuncPyFuncarg0*
Tin
2	*
Tout
2*
token	pyfunc_25"
pyfuncPyFunc:output:0"
pyfunc_0PyFunc:output:1
•
Ю
/tf_data_structured_function_wrapper_gfBtCAjwaTg
arg0	

pyfunc
pyfunc_02DWrapper for passing nested structures to and from tf.data functions.ИJ
PyFuncPyFuncarg0*
Tin
2	*
Tout
2*
token	pyfunc_28"
pyfuncPyFunc:output:0"
pyfunc_0PyFunc:output:1
р
Р
/tf_data_structured_function_wrapper_Gju8ATkdpR0
arg0

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.И@
PyFuncPyFunc*	
Tin
 *
Tout
2	*
token	pyfunc_24"
pyfuncPyFunc:output:0
р
Р
/tf_data_structured_function_wrapper_CDJe63n4xHI
arg0

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.И@
PyFuncPyFunc*	
Tin
 *
Tout
2	*
token	pyfunc_27"
pyfuncPyFunc:output:0
щ
Р
/tf_data_structured_function_wrapper_To1NVHPA3XY
arg0	

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.ИI
PyFuncPyFuncarg0*
Tout
2	*
token	pyfunc_29*
Tin
2	"
pyfuncPyFunc:output:0
щ
Р
/tf_data_structured_function_wrapper_PZRahqkol4c
arg0	

pyfunc	2DWrapper for passing nested structures to and from tf.data functions.ИI
PyFuncPyFuncarg0*
Tin
2	*
Tout
2	*
token	pyfunc_26"
pyfuncPyFunc:output:0
∆
£
/tf_data_structured_function_wrapper_ECmXtDexI0k

arg0_0

arg1_0
arg0
arg12DWrapper for passing nested structures to and from tf.data functions."
arg0arg0_0"
arg1arg1_0
ƒ
Ъ
/tf_data_structured_function_wrapper_aITXi7gVg84
arg0
generatordataset2DWrapper for passing nested structures to and from tf.data functions.Их
GeneratorDatasetGeneratorDatasetarg0*
Tnext_func_args
 *@
	next_func3R1
/tf_data_structured_function_wrapper_gfBtCAjwaTg*
Tfinalize_func_args
 *
output_shapes

::*D
finalize_func3R1
/tf_data_structured_function_wrapper_To1NVHPA3XY*@
	init_func3R1
/tf_data_structured_function_wrapper_CDJe63n4xHI*
output_types
2*
Tinit_func_args
2"-
generatordatasetGeneratorDataset:handle:0
ь
Ъ
/tf_data_structured_function_wrapper_JViaDPL2Ia8
arg0
generatordataset2DWrapper for passing nested structures to and from tf.data functions.И≠
GeneratorDatasetGeneratorDatasetarg0*
output_types
2*
Tinit_func_args
2*@
	next_func3R1
/tf_data_structured_function_wrapper_iafEtcXZn68*
Tnext_func_args
 *
Tfinalize_func_args
 *S
output_shapesB
@:+€€€€€€€€€€€€€€€€€€€€€€€€€€€:€€€€€€€€€*D
finalize_func3R1
/tf_data_structured_function_wrapper_PZRahqkol4c*@
	init_func3R1
/tf_data_structured_function_wrapper_Gju8ATkdpR0"-
generatordatasetGeneratorDataset:handle:0"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"®
regularization_lossesО
Л
-conv2d/kernel/Regularizer/l1_l2_regularizer:0
+conv2d/bias/Regularizer/l1_l2_regularizer:0
/conv2d_1/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_1/bias/Regularizer/l1_l2_regularizer:0
/conv2d_2/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_2/bias/Regularizer/l1_l2_regularizer:0
/conv2d_3/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_3/bias/Regularizer/l1_l2_regularizer:0
/conv2d_4/kernel/Regularizer/l1_l2_regularizer:0
-conv2d_4/bias/Regularizer/l1_l2_regularizer:0
-conv2d_5/bias/Regularizer/l1_l2_regularizer:0"∞
trainable_variablesШХ
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
С
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
О
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
Щ
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
Ц
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
Щ
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
Ц
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
s
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:08
b
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:08
s
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:08
b
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:08"£
local_variablesПМ
§
 precision/true_positives/count:0%precision/true_positives/count/Assign%precision/true_positives/count/read:022precision/true_positives/count/Initializer/zeros:0
®
!precision/false_positives/count:0&precision/false_positives/count/Assign&precision/false_positives/count/read:023precision/false_positives/count/Initializer/zeros:0
Ш
recall/true_positives/count:0"recall/true_positives/count/Assign"recall/true_positives/count/read:02/recall/true_positives/count/Initializer/zeros:0
Ь
recall/false_negatives/count:0#recall/false_negatives/count/Assign#recall/false_negatives/count/read:020recall/false_negatives/count/Initializer/zeros:0"ВC
	variablesфBсB
k
conv2d/kernel:0conv2d/kernel/Assignconv2d/kernel/read:02*conv2d/kernel/Initializer/random_uniform:08
Z
conv2d/bias:0conv2d/bias/Assignconv2d/bias/read:02conv2d/bias/Initializer/zeros:08
С
batch_normalization/gamma:0 batch_normalization/gamma/Assign batch_normalization/gamma/read:02,batch_normalization/gamma/Initializer/ones:08
О
batch_normalization/beta:0batch_normalization/beta/Assignbatch_normalization/beta/read:02,batch_normalization/beta/Initializer/zeros:08
®
!batch_normalization/moving_mean:0&batch_normalization/moving_mean/Assign&batch_normalization/moving_mean/read:023batch_normalization/moving_mean/Initializer/zeros:0
Ј
%batch_normalization/moving_variance:0*batch_normalization/moving_variance/Assign*batch_normalization/moving_variance/read:026batch_normalization/moving_variance/Initializer/ones:0
s
conv2d_1/kernel:0conv2d_1/kernel/Assignconv2d_1/kernel/read:02,conv2d_1/kernel/Initializer/random_uniform:08
b
conv2d_1/bias:0conv2d_1/bias/Assignconv2d_1/bias/read:02!conv2d_1/bias/Initializer/zeros:08
Щ
batch_normalization_1/gamma:0"batch_normalization_1/gamma/Assign"batch_normalization_1/gamma/read:02.batch_normalization_1/gamma/Initializer/ones:08
Ц
batch_normalization_1/beta:0!batch_normalization_1/beta/Assign!batch_normalization_1/beta/read:02.batch_normalization_1/beta/Initializer/zeros:08
∞
#batch_normalization_1/moving_mean:0(batch_normalization_1/moving_mean/Assign(batch_normalization_1/moving_mean/read:025batch_normalization_1/moving_mean/Initializer/zeros:0
њ
'batch_normalization_1/moving_variance:0,batch_normalization_1/moving_variance/Assign,batch_normalization_1/moving_variance/read:028batch_normalization_1/moving_variance/Initializer/ones:0
s
conv2d_2/kernel:0conv2d_2/kernel/Assignconv2d_2/kernel/read:02,conv2d_2/kernel/Initializer/random_uniform:08
b
conv2d_2/bias:0conv2d_2/bias/Assignconv2d_2/bias/read:02!conv2d_2/bias/Initializer/zeros:08
Щ
batch_normalization_2/gamma:0"batch_normalization_2/gamma/Assign"batch_normalization_2/gamma/read:02.batch_normalization_2/gamma/Initializer/ones:08
Ц
batch_normalization_2/beta:0!batch_normalization_2/beta/Assign!batch_normalization_2/beta/read:02.batch_normalization_2/beta/Initializer/zeros:08
∞
#batch_normalization_2/moving_mean:0(batch_normalization_2/moving_mean/Assign(batch_normalization_2/moving_mean/read:025batch_normalization_2/moving_mean/Initializer/zeros:0
њ
'batch_normalization_2/moving_variance:0,batch_normalization_2/moving_variance/Assign,batch_normalization_2/moving_variance/read:028batch_normalization_2/moving_variance/Initializer/ones:0
s
conv2d_3/kernel:0conv2d_3/kernel/Assignconv2d_3/kernel/read:02,conv2d_3/kernel/Initializer/random_uniform:08
b
conv2d_3/bias:0conv2d_3/bias/Assignconv2d_3/bias/read:02!conv2d_3/bias/Initializer/zeros:08
s
conv2d_4/kernel:0conv2d_4/kernel/Assignconv2d_4/kernel/read:02,conv2d_4/kernel/Initializer/random_uniform:08
b
conv2d_4/bias:0conv2d_4/bias/Assignconv2d_4/bias/read:02!conv2d_4/bias/Initializer/zeros:08
s
conv2d_5/kernel:0conv2d_5/kernel/Assignconv2d_5/kernel/read:02,conv2d_5/kernel/Initializer/random_uniform:08
b
conv2d_5/bias:0conv2d_5/bias/Assignconv2d_5/bias/read:02!conv2d_5/bias/Initializer/zeros:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
t
conv2d/kernel/Adam:0conv2d/kernel/Adam/Assignconv2d/kernel/Adam/read:02&conv2d/kernel/Adam/Initializer/zeros:0
|
conv2d/kernel/Adam_1:0conv2d/kernel/Adam_1/Assignconv2d/kernel/Adam_1/read:02(conv2d/kernel/Adam_1/Initializer/zeros:0
l
conv2d/bias/Adam:0conv2d/bias/Adam/Assignconv2d/bias/Adam/read:02$conv2d/bias/Adam/Initializer/zeros:0
t
conv2d/bias/Adam_1:0conv2d/bias/Adam_1/Assignconv2d/bias/Adam_1/read:02&conv2d/bias/Adam_1/Initializer/zeros:0
§
 batch_normalization/gamma/Adam:0%batch_normalization/gamma/Adam/Assign%batch_normalization/gamma/Adam/read:022batch_normalization/gamma/Adam/Initializer/zeros:0
ђ
"batch_normalization/gamma/Adam_1:0'batch_normalization/gamma/Adam_1/Assign'batch_normalization/gamma/Adam_1/read:024batch_normalization/gamma/Adam_1/Initializer/zeros:0
†
batch_normalization/beta/Adam:0$batch_normalization/beta/Adam/Assign$batch_normalization/beta/Adam/read:021batch_normalization/beta/Adam/Initializer/zeros:0
®
!batch_normalization/beta/Adam_1:0&batch_normalization/beta/Adam_1/Assign&batch_normalization/beta/Adam_1/read:023batch_normalization/beta/Adam_1/Initializer/zeros:0
|
conv2d_1/kernel/Adam:0conv2d_1/kernel/Adam/Assignconv2d_1/kernel/Adam/read:02(conv2d_1/kernel/Adam/Initializer/zeros:0
Д
conv2d_1/kernel/Adam_1:0conv2d_1/kernel/Adam_1/Assignconv2d_1/kernel/Adam_1/read:02*conv2d_1/kernel/Adam_1/Initializer/zeros:0
t
conv2d_1/bias/Adam:0conv2d_1/bias/Adam/Assignconv2d_1/bias/Adam/read:02&conv2d_1/bias/Adam/Initializer/zeros:0
|
conv2d_1/bias/Adam_1:0conv2d_1/bias/Adam_1/Assignconv2d_1/bias/Adam_1/read:02(conv2d_1/bias/Adam_1/Initializer/zeros:0
ђ
"batch_normalization_1/gamma/Adam:0'batch_normalization_1/gamma/Adam/Assign'batch_normalization_1/gamma/Adam/read:024batch_normalization_1/gamma/Adam/Initializer/zeros:0
і
$batch_normalization_1/gamma/Adam_1:0)batch_normalization_1/gamma/Adam_1/Assign)batch_normalization_1/gamma/Adam_1/read:026batch_normalization_1/gamma/Adam_1/Initializer/zeros:0
®
!batch_normalization_1/beta/Adam:0&batch_normalization_1/beta/Adam/Assign&batch_normalization_1/beta/Adam/read:023batch_normalization_1/beta/Adam/Initializer/zeros:0
∞
#batch_normalization_1/beta/Adam_1:0(batch_normalization_1/beta/Adam_1/Assign(batch_normalization_1/beta/Adam_1/read:025batch_normalization_1/beta/Adam_1/Initializer/zeros:0
|
conv2d_2/kernel/Adam:0conv2d_2/kernel/Adam/Assignconv2d_2/kernel/Adam/read:02(conv2d_2/kernel/Adam/Initializer/zeros:0
Д
conv2d_2/kernel/Adam_1:0conv2d_2/kernel/Adam_1/Assignconv2d_2/kernel/Adam_1/read:02*conv2d_2/kernel/Adam_1/Initializer/zeros:0
t
conv2d_2/bias/Adam:0conv2d_2/bias/Adam/Assignconv2d_2/bias/Adam/read:02&conv2d_2/bias/Adam/Initializer/zeros:0
|
conv2d_2/bias/Adam_1:0conv2d_2/bias/Adam_1/Assignconv2d_2/bias/Adam_1/read:02(conv2d_2/bias/Adam_1/Initializer/zeros:0
ђ
"batch_normalization_2/gamma/Adam:0'batch_normalization_2/gamma/Adam/Assign'batch_normalization_2/gamma/Adam/read:024batch_normalization_2/gamma/Adam/Initializer/zeros:0
і
$batch_normalization_2/gamma/Adam_1:0)batch_normalization_2/gamma/Adam_1/Assign)batch_normalization_2/gamma/Adam_1/read:026batch_normalization_2/gamma/Adam_1/Initializer/zeros:0
®
!batch_normalization_2/beta/Adam:0&batch_normalization_2/beta/Adam/Assign&batch_normalization_2/beta/Adam/read:023batch_normalization_2/beta/Adam/Initializer/zeros:0
∞
#batch_normalization_2/beta/Adam_1:0(batch_normalization_2/beta/Adam_1/Assign(batch_normalization_2/beta/Adam_1/read:025batch_normalization_2/beta/Adam_1/Initializer/zeros:0
|
conv2d_3/kernel/Adam:0conv2d_3/kernel/Adam/Assignconv2d_3/kernel/Adam/read:02(conv2d_3/kernel/Adam/Initializer/zeros:0
Д
conv2d_3/kernel/Adam_1:0conv2d_3/kernel/Adam_1/Assignconv2d_3/kernel/Adam_1/read:02*conv2d_3/kernel/Adam_1/Initializer/zeros:0
t
conv2d_3/bias/Adam:0conv2d_3/bias/Adam/Assignconv2d_3/bias/Adam/read:02&conv2d_3/bias/Adam/Initializer/zeros:0
|
conv2d_3/bias/Adam_1:0conv2d_3/bias/Adam_1/Assignconv2d_3/bias/Adam_1/read:02(conv2d_3/bias/Adam_1/Initializer/zeros:0
|
conv2d_4/kernel/Adam:0conv2d_4/kernel/Adam/Assignconv2d_4/kernel/Adam/read:02(conv2d_4/kernel/Adam/Initializer/zeros:0
Д
conv2d_4/kernel/Adam_1:0conv2d_4/kernel/Adam_1/Assignconv2d_4/kernel/Adam_1/read:02*conv2d_4/kernel/Adam_1/Initializer/zeros:0
t
conv2d_4/bias/Adam:0conv2d_4/bias/Adam/Assignconv2d_4/bias/Adam/read:02&conv2d_4/bias/Adam/Initializer/zeros:0
|
conv2d_4/bias/Adam_1:0conv2d_4/bias/Adam_1/Assignconv2d_4/bias/Adam_1/read:02(conv2d_4/bias/Adam_1/Initializer/zeros:0
|
conv2d_5/kernel/Adam:0conv2d_5/kernel/Adam/Assignconv2d_5/kernel/Adam/read:02(conv2d_5/kernel/Adam/Initializer/zeros:0
Д
conv2d_5/kernel/Adam_1:0conv2d_5/kernel/Adam_1/Assignconv2d_5/kernel/Adam_1/read:02*conv2d_5/kernel/Adam_1/Initializer/zeros:0
t
conv2d_5/bias/Adam:0conv2d_5/bias/Adam/Assignconv2d_5/bias/Adam/read:02&conv2d_5/bias/Adam/Initializer/zeros:0
|
conv2d_5/bias/Adam_1:0conv2d_5/bias/Adam_1/Assignconv2d_5/bias/Adam_1/read:02(conv2d_5/bias/Adam_1/Initializer/zeros:0"0
losses&
$
"sigmoid_cross_entropy_loss/value:0"†а
cond_contextОаКа
К
"batch_normalization/cond/cond_text"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_t:0 *Ш
batch_normalization/beta/read:0
 batch_normalization/cond/Const:0
"batch_normalization/cond/Const_1:0
0batch_normalization/cond/FusedBatchNorm/Switch:1
2batch_normalization/cond/FusedBatchNorm/Switch_1:1
2batch_normalization/cond/FusedBatchNorm/Switch_2:1
)batch_normalization/cond/FusedBatchNorm:0
)batch_normalization/cond/FusedBatchNorm:1
)batch_normalization/cond/FusedBatchNorm:2
)batch_normalization/cond/FusedBatchNorm:3
)batch_normalization/cond/FusedBatchNorm:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_t:0
 batch_normalization/gamma/read:0
conv2d/LeakyRelu:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0V
 batch_normalization/gamma/read:02batch_normalization/cond/FusedBatchNorm/Switch_1:1U
batch_normalization/beta/read:02batch_normalization/cond/FusedBatchNorm/Switch_2:1F
conv2d/LeakyRelu:00batch_normalization/cond/FusedBatchNorm/Switch:1
ё

$batch_normalization/cond/cond_text_1"batch_normalization/cond/pred_id:0#batch_normalization/cond/switch_f:0*м	
batch_normalization/beta/read:0
2batch_normalization/cond/FusedBatchNorm_1/Switch:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_1:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_2:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_3:0
4batch_normalization/cond/FusedBatchNorm_1/Switch_4:0
+batch_normalization/cond/FusedBatchNorm_1:0
+batch_normalization/cond/FusedBatchNorm_1:1
+batch_normalization/cond/FusedBatchNorm_1:2
+batch_normalization/cond/FusedBatchNorm_1:3
+batch_normalization/cond/FusedBatchNorm_1:4
"batch_normalization/cond/pred_id:0
#batch_normalization/cond/switch_f:0
 batch_normalization/gamma/read:0
&batch_normalization/moving_mean/read:0
*batch_normalization/moving_variance/read:0
conv2d/LeakyRelu:0X
 batch_normalization/gamma/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_1:0W
batch_normalization/beta/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_2:0H
"batch_normalization/cond/pred_id:0"batch_normalization/cond/pred_id:0H
conv2d/LeakyRelu:02batch_normalization/cond/FusedBatchNorm_1/Switch:0b
*batch_normalization/moving_variance/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_4:0^
&batch_normalization/moving_mean/read:04batch_normalization/cond/FusedBatchNorm_1/Switch_3:0
Ј
$batch_normalization/cond_1/cond_text$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_t:0 *њ
"batch_normalization/cond_1/Const:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_t:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
є
&batch_normalization/cond_1/cond_text_1$batch_normalization/cond_1/pred_id:0%batch_normalization/cond_1/switch_f:0*Ѕ
$batch_normalization/cond_1/Const_1:0
$batch_normalization/cond_1/pred_id:0
%batch_normalization/cond_1/switch_f:0L
$batch_normalization/cond_1/pred_id:0$batch_normalization/cond_1/pred_id:0
Њ
$batch_normalization_1/cond/cond_text$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_t:0 *∆
!batch_normalization_1/beta/read:0
"batch_normalization_1/cond/Const:0
$batch_normalization_1/cond/Const_1:0
2batch_normalization_1/cond/FusedBatchNorm/Switch:1
4batch_normalization_1/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_1/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_1/cond/FusedBatchNorm:0
+batch_normalization_1/cond/FusedBatchNorm:1
+batch_normalization_1/cond/FusedBatchNorm:2
+batch_normalization_1/cond/FusedBatchNorm:3
+batch_normalization_1/cond/FusedBatchNorm:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_t:0
"batch_normalization_1/gamma/read:0
conv2d_1/LeakyRelu:0Y
!batch_normalization_1/beta/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_2:1J
conv2d_1/LeakyRelu:02batch_normalization_1/cond/FusedBatchNorm/Switch:1Z
"batch_normalization_1/gamma/read:04batch_normalization_1/cond/FusedBatchNorm/Switch_1:1L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0
Ю
&batch_normalization_1/cond/cond_text_1$batch_normalization_1/cond/pred_id:0%batch_normalization_1/cond/switch_f:0*¶

!batch_normalization_1/beta/read:0
4batch_normalization_1/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_1/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_1/cond/FusedBatchNorm_1:0
-batch_normalization_1/cond/FusedBatchNorm_1:1
-batch_normalization_1/cond/FusedBatchNorm_1:2
-batch_normalization_1/cond/FusedBatchNorm_1:3
-batch_normalization_1/cond/FusedBatchNorm_1:4
$batch_normalization_1/cond/pred_id:0
%batch_normalization_1/cond/switch_f:0
"batch_normalization_1/gamma/read:0
(batch_normalization_1/moving_mean/read:0
,batch_normalization_1/moving_variance/read:0
conv2d_1/LeakyRelu:0L
$batch_normalization_1/cond/pred_id:0$batch_normalization_1/cond/pred_id:0L
conv2d_1/LeakyRelu:04batch_normalization_1/cond/FusedBatchNorm_1/Switch:0b
(batch_normalization_1/moving_mean/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_3:0f
,batch_normalization_1/moving_variance/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_4:0\
"batch_normalization_1/gamma/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_1:0[
!batch_normalization_1/beta/read:06batch_normalization_1/cond/FusedBatchNorm_1/Switch_2:0
«
&batch_normalization_1/cond_1/cond_text&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_t:0 *…
$batch_normalization_1/cond_1/Const:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_t:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
…
(batch_normalization_1/cond_1/cond_text_1&batch_normalization_1/cond_1/pred_id:0'batch_normalization_1/cond_1/switch_f:0*Ћ
&batch_normalization_1/cond_1/Const_1:0
&batch_normalization_1/cond_1/pred_id:0
'batch_normalization_1/cond_1/switch_f:0P
&batch_normalization_1/cond_1/pred_id:0&batch_normalization_1/cond_1/pred_id:0
Њ
$batch_normalization_2/cond/cond_text$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_t:0 *∆
!batch_normalization_2/beta/read:0
"batch_normalization_2/cond/Const:0
$batch_normalization_2/cond/Const_1:0
2batch_normalization_2/cond/FusedBatchNorm/Switch:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_1:1
4batch_normalization_2/cond/FusedBatchNorm/Switch_2:1
+batch_normalization_2/cond/FusedBatchNorm:0
+batch_normalization_2/cond/FusedBatchNorm:1
+batch_normalization_2/cond/FusedBatchNorm:2
+batch_normalization_2/cond/FusedBatchNorm:3
+batch_normalization_2/cond/FusedBatchNorm:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_t:0
"batch_normalization_2/gamma/read:0
conv2d_2/LeakyRelu:0Z
"batch_normalization_2/gamma/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_1:1J
conv2d_2/LeakyRelu:02batch_normalization_2/cond/FusedBatchNorm/Switch:1L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0Y
!batch_normalization_2/beta/read:04batch_normalization_2/cond/FusedBatchNorm/Switch_2:1
Ю
&batch_normalization_2/cond/cond_text_1$batch_normalization_2/cond/pred_id:0%batch_normalization_2/cond/switch_f:0*¶

!batch_normalization_2/beta/read:0
4batch_normalization_2/cond/FusedBatchNorm_1/Switch:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0
6batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0
-batch_normalization_2/cond/FusedBatchNorm_1:0
-batch_normalization_2/cond/FusedBatchNorm_1:1
-batch_normalization_2/cond/FusedBatchNorm_1:2
-batch_normalization_2/cond/FusedBatchNorm_1:3
-batch_normalization_2/cond/FusedBatchNorm_1:4
$batch_normalization_2/cond/pred_id:0
%batch_normalization_2/cond/switch_f:0
"batch_normalization_2/gamma/read:0
(batch_normalization_2/moving_mean/read:0
,batch_normalization_2/moving_variance/read:0
conv2d_2/LeakyRelu:0L
conv2d_2/LeakyRelu:04batch_normalization_2/cond/FusedBatchNorm_1/Switch:0[
!batch_normalization_2/beta/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_2:0L
$batch_normalization_2/cond/pred_id:0$batch_normalization_2/cond/pred_id:0\
"batch_normalization_2/gamma/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_1:0f
,batch_normalization_2/moving_variance/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_4:0b
(batch_normalization_2/moving_mean/read:06batch_normalization_2/cond/FusedBatchNorm_1/Switch_3:0
«
&batch_normalization_2/cond_1/cond_text&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_t:0 *…
$batch_normalization_2/cond_1/Const:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_t:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
…
(batch_normalization_2/cond_1/cond_text_1&batch_normalization_2/cond_1/pred_id:0'batch_normalization_2/cond_1/switch_f:0*Ћ
&batch_normalization_2/cond_1/Const_1:0
&batch_normalization_2/cond_1/pred_id:0
'batch_normalization_2/cond_1/switch_f:0P
&batch_normalization_2/cond_1/pred_id:0&batch_normalization_2/cond_1/pred_id:0
€
dropout/cond/cond_textdropout/cond/pred_id:0dropout/cond/switch_t:0 *±
"batch_normalization_2/cond/Merge:0
dropout/cond/dropout/Floor:0
#dropout/cond/dropout/Shape/Switch:1
dropout/cond/dropout/Shape:0
dropout/cond/dropout/add:0
dropout/cond/dropout/div:0
 dropout/cond/dropout/keep_prob:0
dropout/cond/dropout/mul:0
3dropout/cond/dropout/random_uniform/RandomUniform:0
)dropout/cond/dropout/random_uniform/max:0
)dropout/cond/dropout/random_uniform/min:0
)dropout/cond/dropout/random_uniform/mul:0
)dropout/cond/dropout/random_uniform/sub:0
%dropout/cond/dropout/random_uniform:0
dropout/cond/pred_id:0
dropout/cond/switch_t:00
dropout/cond/pred_id:0dropout/cond/pred_id:0I
"batch_normalization_2/cond/Merge:0#dropout/cond/dropout/Shape/Switch:1
‘
dropout/cond/cond_text_1dropout/cond/pred_id:0dropout/cond/switch_f:0*Ж
"batch_normalization_2/cond/Merge:0
dropout/cond/Identity/Switch:0
dropout/cond/Identity:0
dropout/cond/pred_id:0
dropout/cond/switch_f:00
dropout/cond/pred_id:0dropout/cond/pred_id:0D
"batch_normalization_2/cond/Merge:0dropout/cond/Identity/Switch:0
Н
dropout_1/cond/cond_textdropout_1/cond/pred_id:0dropout_1/cond/switch_t:0 *є
conv2d_3/LeakyRelu:0
dropout_1/cond/dropout/Floor:0
%dropout_1/cond/dropout/Shape/Switch:1
dropout_1/cond/dropout/Shape:0
dropout_1/cond/dropout/add:0
dropout_1/cond/dropout/div:0
"dropout_1/cond/dropout/keep_prob:0
dropout_1/cond/dropout/mul:0
5dropout_1/cond/dropout/random_uniform/RandomUniform:0
+dropout_1/cond/dropout/random_uniform/max:0
+dropout_1/cond/dropout/random_uniform/min:0
+dropout_1/cond/dropout/random_uniform/mul:0
+dropout_1/cond/dropout/random_uniform/sub:0
'dropout_1/cond/dropout/random_uniform:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_t:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:0=
conv2d_3/LeakyRelu:0%dropout_1/cond/dropout/Shape/Switch:1
ћ
dropout_1/cond/cond_text_1dropout_1/cond/pred_id:0dropout_1/cond/switch_f:0*ш
conv2d_3/LeakyRelu:0
 dropout_1/cond/Identity/Switch:0
dropout_1/cond/Identity:0
dropout_1/cond/pred_id:0
dropout_1/cond/switch_f:04
dropout_1/cond/pred_id:0dropout_1/cond/pred_id:08
conv2d_3/LeakyRelu:0 dropout_1/cond/Identity/Switch:0
Н
dropout_2/cond/cond_textdropout_2/cond/pred_id:0dropout_2/cond/switch_t:0 *є
conv2d_4/LeakyRelu:0
dropout_2/cond/dropout/Floor:0
%dropout_2/cond/dropout/Shape/Switch:1
dropout_2/cond/dropout/Shape:0
dropout_2/cond/dropout/add:0
dropout_2/cond/dropout/div:0
"dropout_2/cond/dropout/keep_prob:0
dropout_2/cond/dropout/mul:0
5dropout_2/cond/dropout/random_uniform/RandomUniform:0
+dropout_2/cond/dropout/random_uniform/max:0
+dropout_2/cond/dropout/random_uniform/min:0
+dropout_2/cond/dropout/random_uniform/mul:0
+dropout_2/cond/dropout/random_uniform/sub:0
'dropout_2/cond/dropout/random_uniform:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_t:0=
conv2d_4/LeakyRelu:0%dropout_2/cond/dropout/Shape/Switch:14
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
ћ
dropout_2/cond/cond_text_1dropout_2/cond/pred_id:0dropout_2/cond/switch_f:0*ш
conv2d_4/LeakyRelu:0
 dropout_2/cond/Identity/Switch:0
dropout_2/cond/Identity:0
dropout_2/cond/pred_id:0
dropout_2/cond/switch_f:08
conv2d_4/LeakyRelu:0 dropout_2/cond/Identity/Switch:04
dropout_2/cond/pred_id:0dropout_2/cond/pred_id:0
о
Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/cond_textHsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_t:0 *К
;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar:0
Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:0
Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1
Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0
Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_t:0Ф
Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0И
;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar:0Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Switch_1:1
сO
Jsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/cond_text_1Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_f:0*†$
`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
`sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
asigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
asigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
zsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
vsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
|sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
xsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
wsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
rsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
|sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
usigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
msigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
ksigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
nsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
psigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0
Isigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/switch_f:0
=sigmoid_cross_entropy_loss/assert_broadcastable/values/rank:0
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0
>sigmoid_cross_entropy_loss/assert_broadcastable/weights/rank:0
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0≤
>sigmoid_cross_entropy_loss/assert_broadcastable/weights/rank:0psigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0¬
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0ѓ
=sigmoid_cross_entropy_loss/assert_broadcastable/values/rank:0nsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0Ф
Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0Hsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/pred_id:0њ
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:02Ъ 
Ч 
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textbsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *е
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Дsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
zsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
vsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Бsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
|sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
xsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
wsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
rsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
|sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
{sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
usigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
msigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
ksigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0ю
}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0}sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ѕ
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1≈
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0Бsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1В
sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0sigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0»
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:02Ќ	
 	
dsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*Ш
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0»
bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0bsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0ќ
gsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0csigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Ќ
Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/cond_textEsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Fsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t:0 *т
Psigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency:0
Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
Fsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_t:0О
Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
©
Gsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/cond_text_1Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Fsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f:0*ќ
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch:0
Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0
Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0
Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_0:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_1:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_2:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_4:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_5:0
Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/data_7:0
Rsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/control_dependency_1:0
Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0
Fsigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/switch_f:0
;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar:0
Fsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge:0
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0Х
Fsigmoid_cross_entropy_loss/assert_broadcastable/is_valid_shape/Merge:0Ksigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch:0Р
?sigmoid_cross_entropy_loss/assert_broadcastable/weights/shape:0Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_1:0О
Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0Esigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/pred_id:0М
;sigmoid_cross_entropy_loss/assert_broadcastable/is_scalar:0Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_3:0П
>sigmoid_cross_entropy_loss/assert_broadcastable/values/shape:0Msigmoid_cross_entropy_loss/assert_broadcastable/AssertGuard/Assert/Switch_2:0
÷	
fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_textfsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0 *Ш
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:0
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_t:0–
fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0ƒ
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Switch_1:1
тf
hsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/cond_text_1fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0*А/
~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:0
~sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Merge:1
sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:0
sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch:1
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Шsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Фsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Ъsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Цsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Хsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Рsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Ъsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Щsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Щsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Уsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Лsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Йsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Мsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0
Оsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:0
Еsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0
gsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/switch_f:0
[sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0–
fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0fsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/pred_id:0€
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0м
[sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/rank:0Мsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch:0ь
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0п
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/rank:0Оsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank/Switch_1:02н(
к(
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_textАsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0 *џ%
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:0
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:1
Ґsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/DenseToDenseSetOperation:2
Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0
Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1
Шsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/dim:0
Фsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims:0
Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0
Яsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:1
Ъsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/dim:0
Цsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1:0
Хsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat/axis:0
Рsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/concat:0
Ъsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/num_invalid_dims:0
Щsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Const:0
Щsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like/Shape:0
Уsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ones_like:0
Лsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/x:0
Йsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims:0
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_t:0
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0ю
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch_1:1Ж
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Љ
Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0Ыsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims/Switch:0ј
Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Эsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch:0Б
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0Яsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/has_invalid_dims/ExpandDims_1/Switch_1:12Ѕ
Њ
Вsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/cond_text_1Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0*ѓ	
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:1
Еsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0
Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/switch_f:0Ж
Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0Аsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/pred_id:0М
Еsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/is_same_rank:0Бsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/has_valid_nonscalar_shape/Switch_1:0
љ
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_textcsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 *И
nsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency:0
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_t:0 
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
≠
esigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/cond_text_1csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0*ш
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0
ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0
ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0
ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_0:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_1:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_2:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_4:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_5:0
isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/data_7:0
psigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/control_dependency_1:0
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0
dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/switch_f:0
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0
dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0—
dsigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_valid_shape/Merge:0isigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch:0 
csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0csigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/pred_id:0ћ
]sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/weights/shape:0ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_1:0Ћ
\sigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/values/shape:0ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_2:0»
Ysigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/is_scalar:0ksigmoid_cross_entropy_loss/num_present/broadcast_weights/assert_broadcastable/AssertGuard/Assert/Switch_3:0"
train_op	

train"Ь
metric_variablesЗ
Д
 precision/true_positives/count:0
!precision/false_positives/count:0
recall/true_positives/count:0
recall/false_negatives/count:0"ю

update_opsп
м
#batch_normalization/AssignMovingAvg
%batch_normalization/AssignMovingAvg_1
%batch_normalization_1/AssignMovingAvg
'batch_normalization_1/AssignMovingAvg_1
%batch_normalization_2/AssignMovingAvg
'batch_normalization_2/AssignMovingAvg_1"E
	iterators8
6
IteratorFromStringHandle:0

Iterator:0
Iterator_1:0*№
serving_default»
&
apply_dropout
apply_dropout:0
 
A
image8
image:0+€€€€€€€€€€€€€€€€€€€€€€€€€€€?
prob7
prob:0+€€€€€€€€€€€€€€€€€€€€€€€€€€€tensorflow/serving/predict