??/
?#?#
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
d
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:

2	
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
3
Square
x"T
y"T"
Ttype:
2
	
?
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
executor_typestring ?
?
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
-
Tanh
x"T
y"T"
Ttype:

2
?
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	
?
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint?????????
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02v2.5.0-0-ga4dfb8d1a718??-
?
!rnn__decoder/embedding/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	l?*2
shared_name#!rnn__decoder/embedding/embeddings
?
5rnn__decoder/embedding/embeddings/Read/ReadVariableOpReadVariableOp!rnn__decoder/embedding/embeddings*
_output_shapes
:	l?*
dtype0
?
rnn__decoder/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??**
shared_namernn__decoder/dense/kernel
?
-rnn__decoder/dense/kernel/Read/ReadVariableOpReadVariableOprnn__decoder/dense/kernel* 
_output_shapes
:
??*
dtype0
?
rnn__decoder/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*(
shared_namernn__decoder/dense/bias
?
+rnn__decoder/dense/bias/Read/ReadVariableOpReadVariableOprnn__decoder/dense/bias*
_output_shapes	
:?*
dtype0
?
rnn__decoder/dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?l*,
shared_namernn__decoder/dense_1/kernel
?
/rnn__decoder/dense_1/kernel/Read/ReadVariableOpReadVariableOprnn__decoder/dense_1/kernel*
_output_shapes
:	?l*
dtype0
?
rnn__decoder/dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:l**
shared_namernn__decoder/dense_1/bias
?
-rnn__decoder/dense_1/bias/Read/ReadVariableOpReadVariableOprnn__decoder/dense_1/bias*
_output_shapes
:l*
dtype0
?
 rnn__decoder/gru/gru_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*1
shared_name" rnn__decoder/gru/gru_cell/kernel
?
4rnn__decoder/gru/gru_cell/kernel/Read/ReadVariableOpReadVariableOp rnn__decoder/gru/gru_cell/kernel* 
_output_shapes
:
??*
dtype0
?
*rnn__decoder/gru/gru_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*;
shared_name,*rnn__decoder/gru/gru_cell/recurrent_kernel
?
>rnn__decoder/gru/gru_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp*rnn__decoder/gru/gru_cell/recurrent_kernel* 
_output_shapes
:
??*
dtype0
?
rnn__decoder/gru/gru_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*/
shared_name rnn__decoder/gru/gru_cell/bias
?
2rnn__decoder/gru/gru_cell/bias/Read/ReadVariableOpReadVariableOprnn__decoder/gru/gru_cell/bias*
_output_shapes
:	?*
dtype0
?
.rnn__decoder/coverage_attention/dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.rnn__decoder/coverage_attention/dense_2/kernel
?
Brnn__decoder/coverage_attention/dense_2/kernel/Read/ReadVariableOpReadVariableOp.rnn__decoder/coverage_attention/dense_2/kernel* 
_output_shapes
:
??*
dtype0
?
,rnn__decoder/coverage_attention/dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,rnn__decoder/coverage_attention/dense_2/bias
?
@rnn__decoder/coverage_attention/dense_2/bias/Read/ReadVariableOpReadVariableOp,rnn__decoder/coverage_attention/dense_2/bias*
_output_shapes	
:?*
dtype0
?
.rnn__decoder/coverage_attention/dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??*?
shared_name0.rnn__decoder/coverage_attention/dense_3/kernel
?
Brnn__decoder/coverage_attention/dense_3/kernel/Read/ReadVariableOpReadVariableOp.rnn__decoder/coverage_attention/dense_3/kernel* 
_output_shapes
:
??*
dtype0
?
,rnn__decoder/coverage_attention/dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,rnn__decoder/coverage_attention/dense_3/bias
?
@rnn__decoder/coverage_attention/dense_3/bias/Read/ReadVariableOpReadVariableOp,rnn__decoder/coverage_attention/dense_3/bias*
_output_shapes	
:?*
dtype0
?
.rnn__decoder/coverage_attention/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*?
shared_name0.rnn__decoder/coverage_attention/dense_4/kernel
?
Brnn__decoder/coverage_attention/dense_4/kernel/Read/ReadVariableOpReadVariableOp.rnn__decoder/coverage_attention/dense_4/kernel*
_output_shapes
:	?*
dtype0
?
,rnn__decoder/coverage_attention/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*=
shared_name.,rnn__decoder/coverage_attention/dense_4/bias
?
@rnn__decoder/coverage_attention/dense_4/bias/Read/ReadVariableOpReadVariableOp,rnn__decoder/coverage_attention/dense_4/bias*
_output_shapes	
:?*
dtype0
?
.rnn__decoder/coverage_attention/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*?
shared_name0.rnn__decoder/coverage_attention/dense_5/kernel
?
Brnn__decoder/coverage_attention/dense_5/kernel/Read/ReadVariableOpReadVariableOp.rnn__decoder/coverage_attention/dense_5/kernel*
_output_shapes
:	?*
dtype0
?
,rnn__decoder/coverage_attention/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*=
shared_name.,rnn__decoder/coverage_attention/dense_5/bias
?
@rnn__decoder/coverage_attention/dense_5/bias/Read/ReadVariableOpReadVariableOp,rnn__decoder/coverage_attention/dense_5/bias*
_output_shapes
:*
dtype0

NoOpNoOp
?0
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?/
value?/B?/ B?/
?
	embedding
gru
fc1
fc2
	attention

signatures
#_self_saveable_object_factories
	variables
	regularization_losses

trainable_variables
	keras_api
?

embeddings
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
?

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$regularization_losses
%trainable_variables
&	keras_api
?
'W1
(W2
)Uf
*V
#+_self_saveable_object_factories
,	variables
-regularization_losses
.trainable_variables
/	keras_api
 
 
v
0
01
12
23
4
5
 6
!7
38
49
510
611
712
813
914
:15
 
v
0
01
12
23
4
5
 6
!7
38
49
510
611
712
813
914
:15
?
;metrics
	variables

<layers
=layer_regularization_losses
	regularization_losses
>layer_metrics

trainable_variables
?non_trainable_variables
fd
VARIABLE_VALUE!rnn__decoder/embedding/embeddings/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUE
 

0
 

0
?
@metrics
	variables

Alayers
Blayer_regularization_losses
regularization_losses
Clayer_metrics
trainable_variables
Dnon_trainable_variables
?

0kernel
1recurrent_kernel
2bias
#E_self_saveable_object_factories
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
 
 

00
11
22
 

00
11
22
?
Jmetrics
	variables

Klayers
Llayer_regularization_losses
regularization_losses
Mlayer_metrics
trainable_variables

Nstates
Onon_trainable_variables
TR
VARIABLE_VALUErnn__decoder/dense/kernel%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUE
PN
VARIABLE_VALUErnn__decoder/dense/bias#fc1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 

0
1
?
Pmetrics
	variables

Qlayers
Rlayer_regularization_losses
regularization_losses
Slayer_metrics
trainable_variables
Tnon_trainable_variables
VT
VARIABLE_VALUErnn__decoder/dense_1/kernel%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUE
RP
VARIABLE_VALUErnn__decoder/dense_1/bias#fc2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

 0
!1
 

 0
!1
?
Umetrics
#	variables

Vlayers
Wlayer_regularization_losses
$regularization_losses
Xlayer_metrics
%trainable_variables
Ynon_trainable_variables
?

3kernel
4bias
#Z_self_saveable_object_factories
[	variables
\regularization_losses
]trainable_variables
^	keras_api
?

5kernel
6bias
#__self_saveable_object_factories
`	variables
aregularization_losses
btrainable_variables
c	keras_api
?

7kernel
8bias
#d_self_saveable_object_factories
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
?

9kernel
:bias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
 
8
30
41
52
63
74
85
96
:7
 
8
30
41
52
63
74
85
96
:7
?
nmetrics
,	variables

olayers
player_regularization_losses
-regularization_losses
qlayer_metrics
.trainable_variables
rnon_trainable_variables
\Z
VARIABLE_VALUE rnn__decoder/gru/gru_cell/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
fd
VARIABLE_VALUE*rnn__decoder/gru/gru_cell/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUErnn__decoder/gru/gru_cell/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
jh
VARIABLE_VALUE.rnn__decoder/coverage_attention/dense_2/kernel&variables/8/.ATTRIBUTES/VARIABLE_VALUE
hf
VARIABLE_VALUE,rnn__decoder/coverage_attention/dense_2/bias&variables/9/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.rnn__decoder/coverage_attention/dense_3/kernel'variables/10/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,rnn__decoder/coverage_attention/dense_3/bias'variables/11/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.rnn__decoder/coverage_attention/dense_4/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,rnn__decoder/coverage_attention/dense_4/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE
ki
VARIABLE_VALUE.rnn__decoder/coverage_attention/dense_5/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE
ig
VARIABLE_VALUE,rnn__decoder/coverage_attention/dense_5/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE
 
#
0
1
2
3
4
 
 
 
 
 
 
 
 
 

00
11
22
 

00
11
22
?
smetrics
F	variables

tlayers
ulayer_regularization_losses
Gregularization_losses
vlayer_metrics
Htrainable_variables
wnon_trainable_variables
 

0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

30
41
 

30
41
?
xmetrics
[	variables

ylayers
zlayer_regularization_losses
\regularization_losses
{layer_metrics
]trainable_variables
|non_trainable_variables
 

50
61
 

50
61
?
}metrics
`	variables

~layers
layer_regularization_losses
aregularization_losses
?layer_metrics
btrainable_variables
?non_trainable_variables
 

70
81
 

70
81
?
?metrics
e	variables
?layers
 ?layer_regularization_losses
fregularization_losses
?layer_metrics
gtrainable_variables
?non_trainable_variables
 

90
:1
 

90
:1
?
?metrics
j	variables
?layers
 ?layer_regularization_losses
kregularization_losses
?layer_metrics
ltrainable_variables
?non_trainable_variables
 

'0
(1
)2
*3
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
{
serving_default_inputs/0Placeholder*'
_output_shapes
:?????????*
dtype0*
shape:?????????
?
serving_default_inputs/1Placeholder*-
_output_shapes
:???????????*
dtype0*"
shape:???????????
}
serving_default_inputs/2Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
}
serving_default_inputs/3Placeholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputs/0serving_default_inputs/1serving_default_inputs/2serving_default_inputs/3.rnn__decoder/coverage_attention/dense_2/kernel,rnn__decoder/coverage_attention/dense_2/bias.rnn__decoder/coverage_attention/dense_3/kernel,rnn__decoder/coverage_attention/dense_3/bias.rnn__decoder/coverage_attention/dense_4/kernel,rnn__decoder/coverage_attention/dense_4/bias.rnn__decoder/coverage_attention/dense_5/kernel,rnn__decoder/coverage_attention/dense_5/bias!rnn__decoder/embedding/embeddings rnn__decoder/gru/gru_cell/kernel*rnn__decoder/gru/gru_cell/recurrent_kernelrnn__decoder/gru/gru_cell/biasrnn__decoder/dense/kernelrnn__decoder/dense/biasrnn__decoder/dense_1/kernelrnn__decoder/dense_1/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_239728
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?	
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename5rnn__decoder/embedding/embeddings/Read/ReadVariableOp-rnn__decoder/dense/kernel/Read/ReadVariableOp+rnn__decoder/dense/bias/Read/ReadVariableOp/rnn__decoder/dense_1/kernel/Read/ReadVariableOp-rnn__decoder/dense_1/bias/Read/ReadVariableOp4rnn__decoder/gru/gru_cell/kernel/Read/ReadVariableOp>rnn__decoder/gru/gru_cell/recurrent_kernel/Read/ReadVariableOp2rnn__decoder/gru/gru_cell/bias/Read/ReadVariableOpBrnn__decoder/coverage_attention/dense_2/kernel/Read/ReadVariableOp@rnn__decoder/coverage_attention/dense_2/bias/Read/ReadVariableOpBrnn__decoder/coverage_attention/dense_3/kernel/Read/ReadVariableOp@rnn__decoder/coverage_attention/dense_3/bias/Read/ReadVariableOpBrnn__decoder/coverage_attention/dense_4/kernel/Read/ReadVariableOp@rnn__decoder/coverage_attention/dense_4/bias/Read/ReadVariableOpBrnn__decoder/coverage_attention/dense_5/kernel/Read/ReadVariableOp@rnn__decoder/coverage_attention/dense_5/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_242262
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename!rnn__decoder/embedding/embeddingsrnn__decoder/dense/kernelrnn__decoder/dense/biasrnn__decoder/dense_1/kernelrnn__decoder/dense_1/bias rnn__decoder/gru/gru_cell/kernel*rnn__decoder/gru/gru_cell/recurrent_kernelrnn__decoder/gru/gru_cell/bias.rnn__decoder/coverage_attention/dense_2/kernel,rnn__decoder/coverage_attention/dense_2/bias.rnn__decoder/coverage_attention/dense_3/kernel,rnn__decoder/coverage_attention/dense_3/bias.rnn__decoder/coverage_attention/dense_4/kernel,rnn__decoder/coverage_attention/dense_4/bias.rnn__decoder/coverage_attention/dense_5/kernel,rnn__decoder/coverage_attention/dense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_242320??,
?	
?
B__inference_dense_1_layer_call_and_return_conditional_losses_25812

inputs1
matmul_readvariableop_resource:	?l-
biasadd_readvariableop_resource:l
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?l*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:l*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_1_242164E
1kernel_regularizer_square_readvariableop_resource:
??
identity??(kernel/Regularizer/Square/ReadVariableOp?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
??
?

:__inference___backward_gpu_gru_with_fallback_240381_240517
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4?v
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:???????????????????2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:???????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2&
$gradients/transpose_7_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:??????????2 
gradients/Squeeze_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:???????????????????2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_like?
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*W
_output_shapesE
C:???????????????????:??????????: :??*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:??????????2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_1?
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_2?
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_3?
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_4?
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_5?
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_6?
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_7?
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_8?
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_9?
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_10?
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_11?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_1?
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_2?
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_3?
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_4?
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_5?
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_6?
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_7?
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_8?
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_9?
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_10?
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_11?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_12_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_6_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_1_grad/concat?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity_1u

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_2w

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	?2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??????????:???????????????????:??????????: :???????????????????::??????????: ::???????????????????:??????????: :??::??????????: ::::::: : : *<
api_implements*(gru_25916f5e-4f05-435a-9edc-7eb61a2c5449*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_240516*
go_backwards( *

time_major( :. *
(
_output_shapes
:??????????:;7
5
_output_shapes#
!:???????????????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :;7
5
_output_shapes#
!:???????????????????: 

_output_shapes
::2.
,
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:???????????????????:2
.
,
_output_shapes
:??????????:

_output_shapes
: :"

_output_shapes

:??: 

_output_shapes
::.*
(
_output_shapes
:??????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
? 
?
@__inference_dense_layer_call_and_return_conditional_losses_21570

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?D
?
__inference_standard_gru_23032

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*?
_output_shapes|
z: : : : :??????????: : :
??:?:
??:?: : : : : : : : : : : : : : : : : : : : : : : : : : * 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1217817_20753*0
cond(R&
$__inference_while_cond_1217816_22955*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?1
?
$__inference_while_body_1216095_23329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?/
?
B__inference_dense_4_layer_call_and_return_conditional_losses_22832

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
__inference_loss_fn_2_242175D
1kernel_regularizer_square_readvariableop_resource:	?
identity??(kernel/Regularizer/Square/ReadVariableOp?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
?
?
__inference_loss_fn_0_242153E
1kernel_regularizer_square_readvariableop_resource:
??
identity??(kernel/Regularizer/Square/ReadVariableOp?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
??*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
?
?
>__inference_gru_layer_call_and_return_conditional_losses_23437

inputs0
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:??????????:??????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_234062
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
!__inference__wrapped_model_239658
inputs_0
inputs_1
inputs_2
inputs_3'
rnn__decoder_239620:
??"
rnn__decoder_239622:	?'
rnn__decoder_239624:
??"
rnn__decoder_239626:	?&
rnn__decoder_239628:	?"
rnn__decoder_239630:	?&
rnn__decoder_239632:	?!
rnn__decoder_239634:&
rnn__decoder_239636:	l?'
rnn__decoder_239638:
??'
rnn__decoder_239640:
??&
rnn__decoder_239642:	?'
rnn__decoder_239644:
??"
rnn__decoder_239646:	?&
rnn__decoder_239648:	?l!
rnn__decoder_239650:l
identity

identity_1

identity_2??$rnn__decoder/StatefulPartitionedCall?
$rnn__decoder/StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3rnn__decoder_239620rnn__decoder_239622rnn__decoder_239624rnn__decoder_239626rnn__decoder_239628rnn__decoder_239630rnn__decoder_239632rnn__decoder_239634rnn__decoder_239636rnn__decoder_239638rnn__decoder_239640rnn__decoder_239642rnn__decoder_239644rnn__decoder_239646rnn__decoder_239648rnn__decoder_239650*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *2
f-R+
)__inference_restored_function_body_2396192&
$rnn__decoder/StatefulPartitionedCall?
IdentityIdentity-rnn__decoder/StatefulPartitionedCall:output:0%^rnn__decoder/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity-rnn__decoder/StatefulPartitionedCall:output:1%^rnn__decoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity-rnn__decoder/StatefulPartitionedCall:output:2%^rnn__decoder/StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2L
$rnn__decoder/StatefulPartitionedCall$rnn__decoder/StatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
?1
?
while_body_239808
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?1
?
$__inference_while_body_1218416_20352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?r
?

G__inference_rnn__decoder_layer_call_and_return_conditional_losses_26003

inputs
inputs_1
inputs_2
inputs_3.
coverage_attention_1215985:
??)
coverage_attention_1215987:	?.
coverage_attention_1215989:
??)
coverage_attention_1215991:	?-
coverage_attention_1215993:	?)
coverage_attention_1215995:	?-
coverage_attention_1215997:	?(
coverage_attention_1215999:$
embedding_1216013:	l?
gru_1216401:
??
gru_1216403:
??
gru_1216405:	?!
dense_1216440:
??
dense_1216442:	?"
dense_1_1216458:	?l
dense_1_1216460:l
identity

identity_1

identity_2??*coverage_attention/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
*coverage_attention/StatefulPartitionedCallStatefulPartitionedCallinputs_1inputs_2inputs_3coverage_attention_1215985coverage_attention_1215987coverage_attention_1215989coverage_attention_1215991coverage_attention_1215993coverage_attention_1215995coverage_attention_1215997coverage_attention_1215999*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:??????????:??????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_coverage_attention_layer_call_and_return_conditional_losses_229232,
*coverage_attention/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1216013*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_226462#
!embedding/StatefulPartitionedCallb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDims3coverage_attention/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0*embedding/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concat?
gru/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0gru_1216401gru_1216403gru_1216405*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_234372
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_1216440dense_1216442*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_215702
dense/StatefulPartitionedCallo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshape&dense/StatefulPartitionedCall:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_1216458dense_1_1216460*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????l*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_258122!
dense_1/StatefulPartitionedCalls
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape3coverage_attention/StatefulPartitionedCall:output:1Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1215985* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1215989* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1215993*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1215997*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity$gru/StatefulPartitionedCall:output:1+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:0+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2X
*coverage_attention/StatefulPartitionedCall*coverage_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:UQ
-
_output_shapes
:???????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_gru_layer_call_fn_242081
inputs_0
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_2401132
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?
?
,__inference_rnn__decoder_layer_call_fn_25911
inputs_0
inputs_1
inputs_2
inputs_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_258832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
ة
?
.__inference_while_body_1217817_20753_rewritten
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0_0Y
Uwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0
while_matmul_kernel_0_0
while_biasadd_unstack_0_0'
#while_matmul_1_recurrent_kernel_0_0
while_biasadd_1_unstack_0_00
,tensorlistpushback_while_add_3_0_accumulator8
4tensorlistpushback_1_while_placeholder_0_accumulator\
Xtensorlistpushback_2_gradients_while_grad_gradients_while_add_3_grad_shape_0_accumulator^
Ztensorlistpushback_3_gradients_while_grad_gradients_while_add_3_grad_shape_1_0_accumulator\
Xtensorlistpushback_4_gradients_while_grad_gradients_while_mul_1_grad_shape_0_accumulator^
Ztensorlistpushback_5_gradients_while_grad_gradients_while_mul_1_grad_shape_1_0_accumulator:
6tensorlistpushback_6_while_placeholder_2_0_accumulator4
0tensorlistpushback_7_while_sigmoid_0_accumulator\
Xtensorlistpushback_8_gradients_while_grad_gradients_while_mul_2_grad_shape_0_accumulator^
Ztensorlistpushback_9_gradients_while_grad_gradients_while_mul_2_grad_shape_1_0_accumulator2
.tensorlistpushback_10_while_tanh_0_accumulator1
-tensorlistpushback_11_while_sub_0_accumulator[
Wtensorlistpushback_12_gradients_while_grad_gradients_while_sub_grad_shape_0_accumulator]
Ytensorlistpushback_13_gradients_while_grad_gradients_while_add_2_grad_shape_0_accumulator_
[tensorlistpushback_14_gradients_while_grad_gradients_while_add_2_grad_shape_1_0_accumulator[
Wtensorlistpushback_15_gradients_while_grad_gradients_while_add_grad_shape_0_accumulator]
Ytensorlistpushback_16_gradients_while_grad_gradients_while_add_grad_shape_1_0_accumulator[
Wtensorlistpushback_17_gradients_while_grad_gradients_while_mul_grad_shape_0_accumulator]
Ytensorlistpushback_18_gradients_while_grad_gradients_while_mul_grad_shape_1_0_accumulator5
1tensorlistpushback_19_while_split_1_2_accumulator7
3tensorlistpushback_20_while_sigmoid_1_0_accumulator]
Ytensorlistpushback_21_gradients_while_grad_gradients_while_add_1_grad_shape_0_accumulator_
[tensorlistpushback_22_gradients_while_grad_gradients_while_add_1_grad_shape_1_0_accumulatorQ
Mtensorlistpushback_23_while_tensorarrayv2read_tensorlistgetitem_0_accumulator?
?tensorlistpushback_24_gradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistelementshape_0_accumulator?
?tensorlistpushback_25_gradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_0_accumulator
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
tensorlistpushback
tensorlistpushback_1
tensorlistpushback_2
tensorlistpushback_3
tensorlistpushback_4
tensorlistpushback_5
tensorlistpushback_6
tensorlistpushback_7
tensorlistpushback_8
tensorlistpushback_9
tensorlistpushback_10
tensorlistpushback_11
tensorlistpushback_12
tensorlistpushback_13
tensorlistpushback_14
tensorlistpushback_15
tensorlistpushback_16
tensorlistpushback_17
tensorlistpushback_18
tensorlistpushback_19
tensorlistpushback_20
tensorlistpushback_21
tensorlistpushback_22
tensorlistpushback_23
tensorlistpushback_24
tensorlistpushback_25?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemUwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2#while_matmul_1_recurrent_kernel_0_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4?
TensorListPushBackTensorListPushBack,tensorlistpushback_while_add_3_0_accumulatorwhile/add_3:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack?
TensorListPushBack_1TensorListPushBack4tensorlistpushback_1_while_placeholder_0_accumulatorwhile_placeholder*
_output_shapes
: *
element_dtype02
TensorListPushBack_1?
5gradients/while_grad/gradients/while/add_3_grad/ShapeShapewhile/mul_1:z:0*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/add_3_grad/Shape?
7gradients/while_grad/gradients/while/add_3_grad/Shape_1Shapewhile/mul_2:z:0*
T0*
_output_shapes
:29
7gradients/while_grad/gradients/while/add_3_grad/Shape_1?
TensorListPushBack_2TensorListPushBackXtensorlistpushback_2_gradients_while_grad_gradients_while_add_3_grad_shape_0_accumulator>gradients/while_grad/gradients/while/add_3_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_2?
TensorListPushBack_3TensorListPushBackZtensorlistpushback_3_gradients_while_grad_gradients_while_add_3_grad_shape_1_0_accumulator@gradients/while_grad/gradients/while/add_3_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_3?
5gradients/while_grad/gradients/while/mul_1_grad/ShapeShapewhile/Sigmoid:y:0*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/mul_1_grad/Shape?
7gradients/while_grad/gradients/while/mul_1_grad/Shape_1Shapewhile_placeholder_2*
T0*
_output_shapes
:29
7gradients/while_grad/gradients/while/mul_1_grad/Shape_1?
TensorListPushBack_4TensorListPushBackXtensorlistpushback_4_gradients_while_grad_gradients_while_mul_1_grad_shape_0_accumulator>gradients/while_grad/gradients/while/mul_1_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_4?
TensorListPushBack_5TensorListPushBackZtensorlistpushback_5_gradients_while_grad_gradients_while_mul_1_grad_shape_1_0_accumulator@gradients/while_grad/gradients/while/mul_1_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_5?
TensorListPushBack_6TensorListPushBack6tensorlistpushback_6_while_placeholder_2_0_accumulatorwhile_placeholder_2*
_output_shapes
: *
element_dtype02
TensorListPushBack_6?
TensorListPushBack_7TensorListPushBack0tensorlistpushback_7_while_sigmoid_0_accumulatorwhile/Sigmoid:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_7?
5gradients/while_grad/gradients/while/mul_2_grad/ShapeShapewhile/sub:z:0*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/mul_2_grad/Shape?
7gradients/while_grad/gradients/while/mul_2_grad/Shape_1Shapewhile/Tanh:y:0*
T0*
_output_shapes
:29
7gradients/while_grad/gradients/while/mul_2_grad/Shape_1?
TensorListPushBack_8TensorListPushBackXtensorlistpushback_8_gradients_while_grad_gradients_while_mul_2_grad_shape_0_accumulator>gradients/while_grad/gradients/while/mul_2_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_8?
TensorListPushBack_9TensorListPushBackZtensorlistpushback_9_gradients_while_grad_gradients_while_mul_2_grad_shape_1_0_accumulator@gradients/while_grad/gradients/while/mul_2_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_9?
TensorListPushBack_10TensorListPushBack.tensorlistpushback_10_while_tanh_0_accumulatorwhile/Tanh:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_10?
TensorListPushBack_11TensorListPushBack-tensorlistpushback_11_while_sub_0_accumulatorwhile/sub:z:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_11?
3gradients/while_grad/gradients/while/sub_grad/ShapeShapewhile/sub/x:output:0*
T0*
_output_shapes
: 25
3gradients/while_grad/gradients/while/sub_grad/Shape?
TensorListPushBack_12TensorListPushBackWtensorlistpushback_12_gradients_while_grad_gradients_while_sub_grad_shape_0_accumulator<gradients/while_grad/gradients/while/sub_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_12?
5gradients/while_grad/gradients/while/add_2_grad/ShapeShapewhile/split:output:2*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/add_2_grad/Shape?
7gradients/while_grad/gradients/while/add_2_grad/Shape_1Shapewhile/mul:z:0*
T0*
_output_shapes
:29
7gradients/while_grad/gradients/while/add_2_grad/Shape_1?
TensorListPushBack_13TensorListPushBackYtensorlistpushback_13_gradients_while_grad_gradients_while_add_2_grad_shape_0_accumulator>gradients/while_grad/gradients/while/add_2_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_13?
TensorListPushBack_14TensorListPushBack[tensorlistpushback_14_gradients_while_grad_gradients_while_add_2_grad_shape_1_0_accumulator@gradients/while_grad/gradients/while/add_2_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_14?
3gradients/while_grad/gradients/while/add_grad/ShapeShapewhile/split:output:0*
T0*
_output_shapes
:25
3gradients/while_grad/gradients/while/add_grad/Shape?
5gradients/while_grad/gradients/while/add_grad/Shape_1Shapewhile/split_1:output:0*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/add_grad/Shape_1?
TensorListPushBack_15TensorListPushBackWtensorlistpushback_15_gradients_while_grad_gradients_while_add_grad_shape_0_accumulator<gradients/while_grad/gradients/while/add_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_15?
TensorListPushBack_16TensorListPushBackYtensorlistpushback_16_gradients_while_grad_gradients_while_add_grad_shape_1_0_accumulator>gradients/while_grad/gradients/while/add_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_16?
3gradients/while_grad/gradients/while/mul_grad/ShapeShapewhile/Sigmoid_1:y:0*
T0*
_output_shapes
:25
3gradients/while_grad/gradients/while/mul_grad/Shape?
5gradients/while_grad/gradients/while/mul_grad/Shape_1Shapewhile/split_1:output:2*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/mul_grad/Shape_1?
TensorListPushBack_17TensorListPushBackWtensorlistpushback_17_gradients_while_grad_gradients_while_mul_grad_shape_0_accumulator<gradients/while_grad/gradients/while/mul_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_17?
TensorListPushBack_18TensorListPushBackYtensorlistpushback_18_gradients_while_grad_gradients_while_mul_grad_shape_1_0_accumulator>gradients/while_grad/gradients/while/mul_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_18?
TensorListPushBack_19TensorListPushBack1tensorlistpushback_19_while_split_1_2_accumulatorwhile/split_1:output:2*
_output_shapes
: *
element_dtype02
TensorListPushBack_19?
TensorListPushBack_20TensorListPushBack3tensorlistpushback_20_while_sigmoid_1_0_accumulatorwhile/Sigmoid_1:y:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_20?
5gradients/while_grad/gradients/while/add_1_grad/ShapeShapewhile/split:output:1*
T0*
_output_shapes
:27
5gradients/while_grad/gradients/while/add_1_grad/Shape?
7gradients/while_grad/gradients/while/add_1_grad/Shape_1Shapewhile/split_1:output:1*
T0*
_output_shapes
:29
7gradients/while_grad/gradients/while/add_1_grad/Shape_1?
TensorListPushBack_21TensorListPushBackYtensorlistpushback_21_gradients_while_grad_gradients_while_add_1_grad_shape_0_accumulator>gradients/while_grad/gradients/while/add_1_grad/Shape:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_21?
TensorListPushBack_22TensorListPushBack[tensorlistpushback_22_gradients_while_grad_gradients_while_add_1_grad_shape_1_0_accumulator@gradients/while_grad/gradients/while/add_1_grad/Shape_1:output:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_22?
TensorListPushBack_23TensorListPushBackMtensorlistpushback_23_while_tensorarrayv2read_tensorlistgetitem_0_accumulator0while/TensorArrayV2Read/TensorListGetItem:item:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_23?
^gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLengthTensorListLengthUwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0*
_output_shapes
: 2`
^gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength?
dgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShapeTensorListElementShapeUwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0*
_output_shapes
:*

shape_type02f
dgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape?
TensorListPushBack_24TensorListPushBack?tensorlistpushback_24_gradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistelementshape_0_accumulatortgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape:element_shape:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_24?
TensorListPushBack_25TensorListPushBack?tensorlistpushback_25_gradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_0_accumulatorggradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength:length:0*
_output_shapes
: *
element_dtype02
TensorListPushBack_25"8
tensorlistpushback"TensorListPushBack:output_handle:0"<
tensorlistpushback_1$TensorListPushBack_1:output_handle:0">
tensorlistpushback_10%TensorListPushBack_10:output_handle:0">
tensorlistpushback_11%TensorListPushBack_11:output_handle:0">
tensorlistpushback_12%TensorListPushBack_12:output_handle:0">
tensorlistpushback_13%TensorListPushBack_13:output_handle:0">
tensorlistpushback_14%TensorListPushBack_14:output_handle:0">
tensorlistpushback_15%TensorListPushBack_15:output_handle:0">
tensorlistpushback_16%TensorListPushBack_16:output_handle:0">
tensorlistpushback_17%TensorListPushBack_17:output_handle:0">
tensorlistpushback_18%TensorListPushBack_18:output_handle:0">
tensorlistpushback_19%TensorListPushBack_19:output_handle:0"<
tensorlistpushback_2$TensorListPushBack_2:output_handle:0">
tensorlistpushback_20%TensorListPushBack_20:output_handle:0">
tensorlistpushback_21%TensorListPushBack_21:output_handle:0">
tensorlistpushback_22%TensorListPushBack_22:output_handle:0">
tensorlistpushback_23%TensorListPushBack_23:output_handle:0">
tensorlistpushback_24%TensorListPushBack_24:output_handle:0">
tensorlistpushback_25%TensorListPushBack_25:output_handle:0"<
tensorlistpushback_3$TensorListPushBack_3:output_handle:0"<
tensorlistpushback_4$TensorListPushBack_4:output_handle:0"<
tensorlistpushback_5$TensorListPushBack_5:output_handle:0"<
tensorlistpushback_6$TensorListPushBack_6:output_handle:0"<
tensorlistpushback_7$TensorListPushBack_7:output_handle:0"<
tensorlistpushback_8$TensorListPushBack_8:output_handle:0"<
tensorlistpushback_9$TensorListPushBack_9:output_handle:0"8
while_biasadd_1_unstack_0while_biasadd_1_unstack_0_0"4
while_biasadd_unstack_0while_biasadd_unstack_0_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"H
!while_matmul_1_recurrent_kernel_0#while_matmul_1_recurrent_kernel_0_0"0
while_matmul_kernel_0while_matmul_kernel_0_0"0
while_strided_slice_0while_strided_slice_0_0"?
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0Uwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0_0*(
_construction_contextkEagerRuntime*?
_input_shapes|
z: : : : :??????????: : :
??:?:
??:?: : : : : : : : : : : : : : : : : : : : : : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: 
?C
?
__inference_standard_gru_25349

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1216642_25272*0
cond(R&
$__inference_while_cond_1216641_19145*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?	
?
while_cond_241381
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_241381___redundant_placeholder04
0while_while_cond_241381___redundant_placeholder14
0while_while_cond_241381___redundant_placeholder24
0while_while_cond_241381___redundant_placeholder34
0while_while_cond_241381___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
__inference_loss_fn_3_242186D
1kernel_regularizer_square_readvariableop_resource:	?
identity??(kernel/Regularizer/Square/ReadVariableOp?
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	?*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp?
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
kernel/Regularizer/Square?
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const?
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82
kernel/Regularizer/mul/x?
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul?
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
?
?
.__inference_while_cond_1217816_22955_rewritten
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1217816___redundant_placeholder05
1while_while_cond_1217816___redundant_placeholder15
1while_while_cond_1217816___redundant_placeholder25
1while_while_cond_1217816___redundant_placeholder35
1while_while_cond_1217816___redundant_placeholder4
while_add_3_0_accumulator#
while_placeholder_0_accumulatorG
Cgradients_while_grad_gradients_while_add_3_grad_shape_0_accumulatorI
Egradients_while_grad_gradients_while_add_3_grad_shape_1_0_accumulatorG
Cgradients_while_grad_gradients_while_mul_1_grad_shape_0_accumulatorI
Egradients_while_grad_gradients_while_mul_1_grad_shape_1_0_accumulator%
!while_placeholder_2_0_accumulator
while_sigmoid_0_accumulatorG
Cgradients_while_grad_gradients_while_mul_2_grad_shape_0_accumulatorI
Egradients_while_grad_gradients_while_mul_2_grad_shape_1_0_accumulator
while_tanh_0_accumulator
while_sub_0_accumulatorE
Agradients_while_grad_gradients_while_sub_grad_shape_0_accumulatorG
Cgradients_while_grad_gradients_while_add_2_grad_shape_0_accumulatorI
Egradients_while_grad_gradients_while_add_2_grad_shape_1_0_accumulatorE
Agradients_while_grad_gradients_while_add_grad_shape_0_accumulatorG
Cgradients_while_grad_gradients_while_add_grad_shape_1_0_accumulatorE
Agradients_while_grad_gradients_while_mul_grad_shape_0_accumulatorG
Cgradients_while_grad_gradients_while_mul_grad_shape_1_0_accumulator
while_split_1_2_accumulator!
while_sigmoid_1_0_accumulatorG
Cgradients_while_grad_gradients_while_add_1_grad_shape_0_accumulatorI
Egradients_while_grad_gradients_while_add_1_grad_shape_1_0_accumulator;
7while_tensorarrayv2read_tensorlistgetitem_0_accumulatorv
rgradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistelementshape_0_accumulatorp
lgradients_while_grad_gradients_while_tensorarrayv2read_tensorlistgetitem_grad_tensorlistlength_0_accumulator
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f: : : : :??????????: :::::: : : : : : : : : : : : : : : : : : : : : : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :"

_output_shapes
: :#

_output_shapes
: :$

_output_shapes
: 
?E
?
__inference_standard_gru_241471

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *
bodyR
while_body_241382*
condR
while_cond_241381*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_de47ae65-65eb-4600-9177-9a240f882059*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?1
?
while_body_241763
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?/
?	
__inference__traced_save_242262
file_prefix@
<savev2_rnn__decoder_embedding_embeddings_read_readvariableop8
4savev2_rnn__decoder_dense_kernel_read_readvariableop6
2savev2_rnn__decoder_dense_bias_read_readvariableop:
6savev2_rnn__decoder_dense_1_kernel_read_readvariableop8
4savev2_rnn__decoder_dense_1_bias_read_readvariableop?
;savev2_rnn__decoder_gru_gru_cell_kernel_read_readvariableopI
Esavev2_rnn__decoder_gru_gru_cell_recurrent_kernel_read_readvariableop=
9savev2_rnn__decoder_gru_gru_cell_bias_read_readvariableopM
Isavev2_rnn__decoder_coverage_attention_dense_2_kernel_read_readvariableopK
Gsavev2_rnn__decoder_coverage_attention_dense_2_bias_read_readvariableopM
Isavev2_rnn__decoder_coverage_attention_dense_3_kernel_read_readvariableopK
Gsavev2_rnn__decoder_coverage_attention_dense_3_bias_read_readvariableopM
Isavev2_rnn__decoder_coverage_attention_dense_4_kernel_read_readvariableopK
Gsavev2_rnn__decoder_coverage_attention_dense_4_bias_read_readvariableopM
Isavev2_rnn__decoder_coverage_attention_dense_5_kernel_read_readvariableopK
Gsavev2_rnn__decoder_coverage_attention_dense_5_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?	
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0<savev2_rnn__decoder_embedding_embeddings_read_readvariableop4savev2_rnn__decoder_dense_kernel_read_readvariableop2savev2_rnn__decoder_dense_bias_read_readvariableop6savev2_rnn__decoder_dense_1_kernel_read_readvariableop4savev2_rnn__decoder_dense_1_bias_read_readvariableop;savev2_rnn__decoder_gru_gru_cell_kernel_read_readvariableopEsavev2_rnn__decoder_gru_gru_cell_recurrent_kernel_read_readvariableop9savev2_rnn__decoder_gru_gru_cell_bias_read_readvariableopIsavev2_rnn__decoder_coverage_attention_dense_2_kernel_read_readvariableopGsavev2_rnn__decoder_coverage_attention_dense_2_bias_read_readvariableopIsavev2_rnn__decoder_coverage_attention_dense_3_kernel_read_readvariableopGsavev2_rnn__decoder_coverage_attention_dense_3_bias_read_readvariableopIsavev2_rnn__decoder_coverage_attention_dense_4_kernel_read_readvariableopGsavev2_rnn__decoder_coverage_attention_dense_4_bias_read_readvariableopIsavev2_rnn__decoder_coverage_attention_dense_5_kernel_read_readvariableopGsavev2_rnn__decoder_coverage_attention_dense_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
22
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: :	l?:
??:?:	?l:l:
??:
??:	?:
??:?:
??:?:	?:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	l?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?l: 

_output_shapes
:l:&"
 
_output_shapes
:
??:&"
 
_output_shapes
:
??:%!

_output_shapes
:	?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?:&"
 
_output_shapes
:
??:!

_output_shapes	
:?:%!

_output_shapes
:	?:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: 
?	
?
$__inference_while_cond_1216094_20014
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1216094___redundant_placeholder05
1while_while_cond_1216094___redundant_placeholder15
1while_while_cond_1216094___redundant_placeholder25
1while_while_cond_1216094___redundant_placeholder35
1while_while_cond_1216094___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?1
?
$__inference_while_body_1217817_20753
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?
?
,__inference_rnn__decoder_layer_call_fn_26031
input_1
input_2
input_3
input_4
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_260032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:VR
-
_output_shapes
:???????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?E
?
&__forward_gpu_gru_with_fallback_241683

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_de47ae65-65eb-4600-9177-9a240f882059*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_241548_241684*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
??
?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_23280
inputs_0
inputs_1
inputs_2
inputs_3P
<coverage_attention_dense_2_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_2_biasadd_readvariableop_resource:	?P
<coverage_attention_dense_3_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_3_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_4_tensordot_readvariableop_resource:	?I
:coverage_attention_dense_4_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_5_tensordot_readvariableop_resource:	?H
:coverage_attention_dense_5_biasadd_readvariableop_resource:5
"embedding_embedding_lookup_1217735:	l?4
 gru_read_readvariableop_resource:
??6
"gru_read_1_readvariableop_resource:
??5
"gru_read_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?l5
'dense_1_biasadd_readvariableop_resource:l
identity

identity_1

identity_2??1coverage_attention/dense_2/BiasAdd/ReadVariableOp?3coverage_attention/dense_2/Tensordot/ReadVariableOp?1coverage_attention/dense_3/BiasAdd/ReadVariableOp?3coverage_attention/dense_3/Tensordot/ReadVariableOp?1coverage_attention/dense_4/BiasAdd/ReadVariableOp?3coverage_attention/dense_4/Tensordot/ReadVariableOp?1coverage_attention/dense_5/BiasAdd/ReadVariableOp?3coverage_attention/dense_5/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/Read/ReadVariableOp?gru/Read_1/ReadVariableOp?gru/Read_2/ReadVariableOp?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
!coverage_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!coverage_attention/ExpandDims/dim?
coverage_attention/ExpandDims
ExpandDimsinputs_2*coverage_attention/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/ExpandDims?
#coverage_attention/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#coverage_attention/ExpandDims_1/dim?
coverage_attention/ExpandDims_1
ExpandDimsinputs_3,coverage_attention/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:??????????2!
coverage_attention/ExpandDims_1?
3coverage_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_2/Tensordot/ReadVariableOp?
)coverage_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_2/Tensordot/axes?
)coverage_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_2/Tensordot/free?
*coverage_attention/dense_2/Tensordot/ShapeShapeinputs_1*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/Shape?
2coverage_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/GatherV2/axis?
-coverage_attention/dense_2/Tensordot/GatherV2GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/free:output:0;coverage_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/GatherV2?
4coverage_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_2/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_2/Tensordot/GatherV2_1GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/axes:output:0=coverage_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_2/Tensordot/GatherV2_1?
*coverage_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_2/Tensordot/Const?
)coverage_attention/dense_2/Tensordot/ProdProd6coverage_attention/dense_2/Tensordot/GatherV2:output:03coverage_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_2/Tensordot/Prod?
,coverage_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_2/Tensordot/Const_1?
+coverage_attention/dense_2/Tensordot/Prod_1Prod8coverage_attention/dense_2/Tensordot/GatherV2_1:output:05coverage_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_2/Tensordot/Prod_1?
0coverage_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_2/Tensordot/concat/axis?
+coverage_attention/dense_2/Tensordot/concatConcatV22coverage_attention/dense_2/Tensordot/free:output:02coverage_attention/dense_2/Tensordot/axes:output:09coverage_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_2/Tensordot/concat?
*coverage_attention/dense_2/Tensordot/stackPack2coverage_attention/dense_2/Tensordot/Prod:output:04coverage_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/stack?
.coverage_attention/dense_2/Tensordot/transpose	Transposeinputs_14coverage_attention/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_2/Tensordot/transpose?
,coverage_attention/dense_2/Tensordot/ReshapeReshape2coverage_attention/dense_2/Tensordot/transpose:y:03coverage_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_2/Tensordot/Reshape?
+coverage_attention/dense_2/Tensordot/MatMulMatMul5coverage_attention/dense_2/Tensordot/Reshape:output:0;coverage_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_2/Tensordot/MatMul?
,coverage_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_2/Tensordot/Const_2?
2coverage_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/concat_1/axis?
-coverage_attention/dense_2/Tensordot/concat_1ConcatV26coverage_attention/dense_2/Tensordot/GatherV2:output:05coverage_attention/dense_2/Tensordot/Const_2:output:0;coverage_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/concat_1?
$coverage_attention/dense_2/TensordotReshape5coverage_attention/dense_2/Tensordot/MatMul:product:06coverage_attention/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_2/Tensordot?
1coverage_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_2/BiasAdd/ReadVariableOp?
"coverage_attention/dense_2/BiasAddBiasAdd-coverage_attention/dense_2/Tensordot:output:09coverage_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_2/BiasAdd?
3coverage_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_3/Tensordot/ReadVariableOp?
)coverage_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_3/Tensordot/axes?
)coverage_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_3/Tensordot/free?
*coverage_attention/dense_3/Tensordot/ShapeShape&coverage_attention/ExpandDims:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/Shape?
2coverage_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/GatherV2/axis?
-coverage_attention/dense_3/Tensordot/GatherV2GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/free:output:0;coverage_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/GatherV2?
4coverage_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_3/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_3/Tensordot/GatherV2_1GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/axes:output:0=coverage_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_3/Tensordot/GatherV2_1?
*coverage_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_3/Tensordot/Const?
)coverage_attention/dense_3/Tensordot/ProdProd6coverage_attention/dense_3/Tensordot/GatherV2:output:03coverage_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_3/Tensordot/Prod?
,coverage_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_3/Tensordot/Const_1?
+coverage_attention/dense_3/Tensordot/Prod_1Prod8coverage_attention/dense_3/Tensordot/GatherV2_1:output:05coverage_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_3/Tensordot/Prod_1?
0coverage_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_3/Tensordot/concat/axis?
+coverage_attention/dense_3/Tensordot/concatConcatV22coverage_attention/dense_3/Tensordot/free:output:02coverage_attention/dense_3/Tensordot/axes:output:09coverage_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_3/Tensordot/concat?
*coverage_attention/dense_3/Tensordot/stackPack2coverage_attention/dense_3/Tensordot/Prod:output:04coverage_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/stack?
.coverage_attention/dense_3/Tensordot/transpose	Transpose&coverage_attention/ExpandDims:output:04coverage_attention/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_3/Tensordot/transpose?
,coverage_attention/dense_3/Tensordot/ReshapeReshape2coverage_attention/dense_3/Tensordot/transpose:y:03coverage_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_3/Tensordot/Reshape?
+coverage_attention/dense_3/Tensordot/MatMulMatMul5coverage_attention/dense_3/Tensordot/Reshape:output:0;coverage_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_3/Tensordot/MatMul?
,coverage_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_3/Tensordot/Const_2?
2coverage_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/concat_1/axis?
-coverage_attention/dense_3/Tensordot/concat_1ConcatV26coverage_attention/dense_3/Tensordot/GatherV2:output:05coverage_attention/dense_3/Tensordot/Const_2:output:0;coverage_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/concat_1?
$coverage_attention/dense_3/TensordotReshape5coverage_attention/dense_3/Tensordot/MatMul:product:06coverage_attention/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_3/Tensordot?
1coverage_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_3/BiasAdd/ReadVariableOp?
"coverage_attention/dense_3/BiasAddBiasAdd-coverage_attention/dense_3/Tensordot:output:09coverage_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_3/BiasAdd?
coverage_attention/addAddV2+coverage_attention/dense_2/BiasAdd:output:0+coverage_attention/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add?
3coverage_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_4/Tensordot/ReadVariableOp?
)coverage_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_4/Tensordot/axes?
)coverage_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_4/Tensordot/free?
*coverage_attention/dense_4/Tensordot/ShapeShape(coverage_attention/ExpandDims_1:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/Shape?
2coverage_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/GatherV2/axis?
-coverage_attention/dense_4/Tensordot/GatherV2GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/free:output:0;coverage_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/GatherV2?
4coverage_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_4/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_4/Tensordot/GatherV2_1GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/axes:output:0=coverage_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_4/Tensordot/GatherV2_1?
*coverage_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_4/Tensordot/Const?
)coverage_attention/dense_4/Tensordot/ProdProd6coverage_attention/dense_4/Tensordot/GatherV2:output:03coverage_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_4/Tensordot/Prod?
,coverage_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_4/Tensordot/Const_1?
+coverage_attention/dense_4/Tensordot/Prod_1Prod8coverage_attention/dense_4/Tensordot/GatherV2_1:output:05coverage_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_4/Tensordot/Prod_1?
0coverage_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_4/Tensordot/concat/axis?
+coverage_attention/dense_4/Tensordot/concatConcatV22coverage_attention/dense_4/Tensordot/free:output:02coverage_attention/dense_4/Tensordot/axes:output:09coverage_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_4/Tensordot/concat?
*coverage_attention/dense_4/Tensordot/stackPack2coverage_attention/dense_4/Tensordot/Prod:output:04coverage_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/stack?
.coverage_attention/dense_4/Tensordot/transpose	Transpose(coverage_attention/ExpandDims_1:output:04coverage_attention/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_4/Tensordot/transpose?
,coverage_attention/dense_4/Tensordot/ReshapeReshape2coverage_attention/dense_4/Tensordot/transpose:y:03coverage_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_4/Tensordot/Reshape?
+coverage_attention/dense_4/Tensordot/MatMulMatMul5coverage_attention/dense_4/Tensordot/Reshape:output:0;coverage_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_4/Tensordot/MatMul?
,coverage_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_4/Tensordot/Const_2?
2coverage_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/concat_1/axis?
-coverage_attention/dense_4/Tensordot/concat_1ConcatV26coverage_attention/dense_4/Tensordot/GatherV2:output:05coverage_attention/dense_4/Tensordot/Const_2:output:0;coverage_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/concat_1?
$coverage_attention/dense_4/TensordotReshape5coverage_attention/dense_4/Tensordot/MatMul:product:06coverage_attention/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_4/Tensordot?
1coverage_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_4/BiasAdd/ReadVariableOp?
"coverage_attention/dense_4/BiasAddBiasAdd-coverage_attention/dense_4/Tensordot:output:09coverage_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_4/BiasAdd?
coverage_attention/add_1AddV2coverage_attention/add:z:0+coverage_attention/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add_1?
coverage_attention/TanhTanhcoverage_attention/add_1:z:0*
T0*-
_output_shapes
:???????????2
coverage_attention/Tanh?
3coverage_attention/dense_5/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_5/Tensordot/ReadVariableOp?
)coverage_attention/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_5/Tensordot/axes?
)coverage_attention/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_5/Tensordot/free?
*coverage_attention/dense_5/Tensordot/ShapeShapecoverage_attention/Tanh:y:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/Shape?
2coverage_attention/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/GatherV2/axis?
-coverage_attention/dense_5/Tensordot/GatherV2GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/free:output:0;coverage_attention/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/GatherV2?
4coverage_attention/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_5/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_5/Tensordot/GatherV2_1GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/axes:output:0=coverage_attention/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_5/Tensordot/GatherV2_1?
*coverage_attention/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_5/Tensordot/Const?
)coverage_attention/dense_5/Tensordot/ProdProd6coverage_attention/dense_5/Tensordot/GatherV2:output:03coverage_attention/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_5/Tensordot/Prod?
,coverage_attention/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_5/Tensordot/Const_1?
+coverage_attention/dense_5/Tensordot/Prod_1Prod8coverage_attention/dense_5/Tensordot/GatherV2_1:output:05coverage_attention/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_5/Tensordot/Prod_1?
0coverage_attention/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_5/Tensordot/concat/axis?
+coverage_attention/dense_5/Tensordot/concatConcatV22coverage_attention/dense_5/Tensordot/free:output:02coverage_attention/dense_5/Tensordot/axes:output:09coverage_attention/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_5/Tensordot/concat?
*coverage_attention/dense_5/Tensordot/stackPack2coverage_attention/dense_5/Tensordot/Prod:output:04coverage_attention/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/stack?
.coverage_attention/dense_5/Tensordot/transpose	Transposecoverage_attention/Tanh:y:04coverage_attention/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_5/Tensordot/transpose?
,coverage_attention/dense_5/Tensordot/ReshapeReshape2coverage_attention/dense_5/Tensordot/transpose:y:03coverage_attention/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_5/Tensordot/Reshape?
+coverage_attention/dense_5/Tensordot/MatMulMatMul5coverage_attention/dense_5/Tensordot/Reshape:output:0;coverage_attention/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+coverage_attention/dense_5/Tensordot/MatMul?
,coverage_attention/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,coverage_attention/dense_5/Tensordot/Const_2?
2coverage_attention/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/concat_1/axis?
-coverage_attention/dense_5/Tensordot/concat_1ConcatV26coverage_attention/dense_5/Tensordot/GatherV2:output:05coverage_attention/dense_5/Tensordot/Const_2:output:0;coverage_attention/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/concat_1?
$coverage_attention/dense_5/TensordotReshape5coverage_attention/dense_5/Tensordot/MatMul:product:06coverage_attention/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_5/Tensordot?
1coverage_attention/dense_5/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1coverage_attention/dense_5/BiasAdd/ReadVariableOp?
"coverage_attention/dense_5/BiasAddBiasAdd-coverage_attention/dense_5/Tensordot:output:09coverage_attention/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_5/BiasAddt
coverage_attention/RankConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rankx
coverage_attention/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rank_1v
coverage_attention/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub/y?
coverage_attention/SubSub"coverage_attention/Rank_1:output:0!coverage_attention/Sub/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub?
coverage_attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/range/start?
coverage_attention/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/limit?
coverage_attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/delta?
coverage_attention/rangeRange'coverage_attention/range/start:output:0'coverage_attention/range/limit:output:0'coverage_attention/range/delta:output:0*
_output_shapes
:2
coverage_attention/range?
 coverage_attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/start?
 coverage_attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/delta?
coverage_attention/range_1Range)coverage_attention/range_1/start:output:0coverage_attention/Sub:z:0)coverage_attention/range_1/delta:output:0*
_output_shapes
: 2
coverage_attention/range_1?
"coverage_attention/concat/values_1Packcoverage_attention/Sub:z:0*
N*
T0*
_output_shapes
:2$
"coverage_attention/concat/values_1?
"coverage_attention/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2$
"coverage_attention/concat/values_3?
coverage_attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/concat/axis?
coverage_attention/concatConcatV2!coverage_attention/range:output:0+coverage_attention/concat/values_1:output:0#coverage_attention/range_1:output:0+coverage_attention/concat/values_3:output:0'coverage_attention/concat/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat?
coverage_attention/transpose	Transpose+coverage_attention/dense_5/BiasAdd:output:0"coverage_attention/concat:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/transpose?
coverage_attention/SoftmaxSoftmax coverage_attention/transpose:y:0*
T0*,
_output_shapes
:??????????2
coverage_attention/Softmaxz
coverage_attention/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub_1/y?
coverage_attention/Sub_1Sub"coverage_attention/Rank_1:output:0#coverage_attention/Sub_1/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub_1?
 coverage_attention/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/range_2/start?
 coverage_attention/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/limit?
 coverage_attention/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/delta?
coverage_attention/range_2Range)coverage_attention/range_2/start:output:0)coverage_attention/range_2/limit:output:0)coverage_attention/range_2/delta:output:0*
_output_shapes
:2
coverage_attention/range_2?
 coverage_attention/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/start?
 coverage_attention/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/delta?
coverage_attention/range_3Range)coverage_attention/range_3/start:output:0coverage_attention/Sub_1:z:0)coverage_attention/range_3/delta:output:0*
_output_shapes
: 2
coverage_attention/range_3?
$coverage_attention/concat_1/values_1Packcoverage_attention/Sub_1:z:0*
N*
T0*
_output_shapes
:2&
$coverage_attention/concat_1/values_1?
$coverage_attention/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$coverage_attention/concat_1/values_3?
 coverage_attention/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/concat_1/axis?
coverage_attention/concat_1ConcatV2#coverage_attention/range_2:output:0-coverage_attention/concat_1/values_1:output:0#coverage_attention/range_3:output:0-coverage_attention/concat_1/values_3:output:0)coverage_attention/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat_1?
coverage_attention/transpose_1	Transpose$coverage_attention/Softmax:softmax:0$coverage_attention/concat_1:output:0*
T0*,
_output_shapes
:??????????2 
coverage_attention/transpose_1?
coverage_attention/mulMul"coverage_attention/transpose_1:y:0inputs_1*
T0*-
_output_shapes
:???????????2
coverage_attention/mul?
(coverage_attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(coverage_attention/Sum/reduction_indices?
coverage_attention/SumSumcoverage_attention/mul:z:01coverage_attention/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
coverage_attention/Sum?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1217735inputs_0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1217735*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1217735*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimscoverage_attention/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0.embedding/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatU
	gru/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
	gru/zeros?
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read/ReadVariableOpt
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity?
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read_1/ReadVariableOpz
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity_1?
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru/Identity_2?
gru/PartitionedCallPartitionedCallconcat:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *?
_output_shapes?
?:??????????:??????????:??????????: :??????????:: :
??:?:
??:?: : : : : : : : : : : : : : : : : : : : : : : : : : : : :??????????:* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_230322
gru/PartitionedCall?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshapedense/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?l*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/BiasAdds
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape"coverage_attention/transpose_1:y:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentitydense_1/BiasAdd:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identitygru/PartitionedCall:output:22^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2f
1coverage_attention/dense_2/BiasAdd/ReadVariableOp1coverage_attention/dense_2/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_2/Tensordot/ReadVariableOp3coverage_attention/dense_2/Tensordot/ReadVariableOp2f
1coverage_attention/dense_3/BiasAdd/ReadVariableOp1coverage_attention/dense_3/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_3/Tensordot/ReadVariableOp3coverage_attention/dense_3/Tensordot/ReadVariableOp2f
1coverage_attention/dense_4/BiasAdd/ReadVariableOp1coverage_attention/dense_4/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_4/Tensordot/ReadVariableOp3coverage_attention/dense_4/Tensordot/ReadVariableOp2f
1coverage_attention/dense_5/BiasAdd/ReadVariableOp1coverage_attention/dense_5/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_5/Tensordot/ReadVariableOp3coverage_attention/dense_5/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
?E
?
&__forward_gpu_gru_with_fallback_240109

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_34a5f96a-8519-4744-b1cc-477cff1740bc*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_239974_240110*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?	
?
$__inference_while_cond_1218415_22313
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1218415___redundant_placeholder05
1while_while_cond_1218415___redundant_placeholder15
1while_while_cond_1218415___redundant_placeholder25
1while_while_cond_1218415___redundant_placeholder35
1while_while_cond_1218415___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?

:__inference___backward_gpu_gru_with_fallback_241929_242065
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4?v
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:???????????????????2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:???????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2&
$gradients/transpose_7_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:??????????2 
gradients/Squeeze_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:???????????????????2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_like?
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*W
_output_shapesE
C:???????????????????:??????????: :??*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:??????????2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_1?
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_2?
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_3?
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_4?
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_5?
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_6?
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_7?
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_8?
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_9?
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_10?
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_11?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_1?
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_2?
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_3?
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_4?
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_5?
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_6?
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_7?
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_8?
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_9?
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_10?
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_11?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_12_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_6_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_1_grad/concat?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity_1u

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_2w

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	?2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??????????:???????????????????:??????????: :???????????????????::??????????: ::???????????????????:??????????: :??::??????????: ::::::: : : *<
api_implements*(gru_195ecfd5-1cf0-49c6-b6ea-18b23c1c7cc2*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_242064*
go_backwards( *

time_major( :. *
(
_output_shapes
:??????????:;7
5
_output_shapes#
!:???????????????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :;7
5
_output_shapes#
!:???????????????????: 

_output_shapes
::2.
,
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:???????????????????:2
.
,
_output_shapes
:??????????:

_output_shapes
: :"

_output_shapes

:??: 

_output_shapes
::.*
(
_output_shapes
:??????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?;
?
(__inference_gpu_gru_with_fallback_240380

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:??2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_25916f5e-4f05-435a-9edc-7eb61a2c5449*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
??
?
__forward_standard_gru_38516

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3&
"tensorarrayv2stack_tensorliststack
transpose_1_perm	
while
while_0
while_1
while_2
while_3
while_maximum_iterations
while_4
while_5
while_6
while_7
while_8
while_9
while_10
while_11
while_12
while_13
while_14
while_15
while_16
while_17
while_18
while_19
while_20
while_21
while_22
while_23
while_24
while_25
while_26
while_27
while_28
while_29
while_30
	transpose
transpose_permZ
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeM
ShapeShapetranspose_0:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose_0:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose_0:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
while_31StatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1"while/add_3_0/accumulator:handle:0(while_placeholder_0/accumulator:handle:0Lgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulator:handle:0Ngradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulator:handle:0Lgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulator:handle:0Ngradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulator:handle:0*while_placeholder_2_0/accumulator:handle:0$while/Sigmoid_0/accumulator:handle:0Lgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulator:handle:0Ngradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulator:handle:0!while/Tanh_0/accumulator:handle:0 while/sub_0/accumulator:handle:0Jgradients/while_grad/gradients/while/sub_grad/Shape_0/accumulator:handle:0Lgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulator:handle:0Ngradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulator:handle:0Jgradients/while_grad/gradients/while/add_grad/Shape_0/accumulator:handle:0Lgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulator:handle:0Jgradients/while_grad/gradients/while/mul_grad/Shape_0/accumulator:handle:0Lgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulator:handle:0$while/split_1_2/accumulator:handle:0&while/Sigmoid_1_0/accumulator:handle:0Lgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulator:handle:0Ngradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulator:handle:0@while/TensorArrayV2Read/TensorListGetItem_0/accumulator:handle:0{gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulator:handle:0ugradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength_0/accumulator:handle:0*.
T)
'2%*
_lower_using_switch_merge(*
_num_original_outputs%* 
_read_only_resource_inputs
 *:
body2R0
.__inference_while_body_1217817_20753_rewritten*:
cond2R0
.__inference_while_cond_1217816_22955_rewritten*?
output_shapes|
z: : : : :??????????: : :
??:?:
??:?: : : : : : : : : : : : : : : : : : : : : : : : : : *
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile_31:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1j

Identity_2Identitywhile_31:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3?
'while/add_3_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2)
'while/add_3_0/accumulator/element_shape?
while/add_3_0/accumulatorEmptyTensorList0while/add_3_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/add_3_0/accumulatorQ
ConstConst*
_output_shapes
: *
dtype0*
valueB 2
Const?
while_placeholder_0/accumulatorEmptyTensorListConst:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02!
while_placeholder_0/accumulator?
Qgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/add_3_grad/Shape_0/accumulator?
Sgradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2U
Sgradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulator/element_shape?
Egradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulatorEmptyTensorList\gradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02G
Egradients/while_grad/gradients/while/add_3_grad/Shape_1_0/accumulator?
Qgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/mul_1_grad/Shape_0/accumulator?
Sgradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2U
Sgradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulator/element_shape?
Egradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulatorEmptyTensorList\gradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02G
Egradients/while_grad/gradients/while/mul_1_grad/Shape_1_0/accumulator?
/while_placeholder_2_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   21
/while_placeholder_2_0/accumulator/element_shape?
!while_placeholder_2_0/accumulatorEmptyTensorList8while_placeholder_2_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!while_placeholder_2_0/accumulator?
)while/Sigmoid_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2+
)while/Sigmoid_0/accumulator/element_shape?
while/Sigmoid_0/accumulatorEmptyTensorList2while/Sigmoid_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/Sigmoid_0/accumulator?
Qgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/mul_2_grad/Shape_0/accumulator?
Sgradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2U
Sgradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulator/element_shape?
Egradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulatorEmptyTensorList\gradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02G
Egradients/while_grad/gradients/while/mul_2_grad/Shape_1_0/accumulator?
&while/Tanh_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2(
&while/Tanh_0/accumulator/element_shape?
while/Tanh_0/accumulatorEmptyTensorList/while/Tanh_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/Tanh_0/accumulator?
%while/sub_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2'
%while/sub_0/accumulator/element_shape?
while/sub_0/accumulatorEmptyTensorList.while/sub_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/sub_0/accumulator?
Ogradients/while_grad/gradients/while/sub_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB: 2Q
Ogradients/while_grad/gradients/while/sub_grad/Shape_0/accumulator/element_shape?
Agradients/while_grad/gradients/while/sub_grad/Shape_0/accumulatorEmptyTensorListXgradients/while_grad/gradients/while/sub_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Agradients/while_grad/gradients/while/sub_grad/Shape_0/accumulator?
Qgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/add_2_grad/Shape_0/accumulator?
Sgradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2U
Sgradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulator/element_shape?
Egradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulatorEmptyTensorList\gradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02G
Egradients/while_grad/gradients/while/add_2_grad/Shape_1_0/accumulator?
Ogradients/while_grad/gradients/while/add_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2Q
Ogradients/while_grad/gradients/while/add_grad/Shape_0/accumulator/element_shape?
Agradients/while_grad/gradients/while/add_grad/Shape_0/accumulatorEmptyTensorListXgradients/while_grad/gradients/while/add_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Agradients/while_grad/gradients/while/add_grad/Shape_0/accumulator?
Qgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/add_grad/Shape_1_0/accumulator?
Ogradients/while_grad/gradients/while/mul_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2Q
Ogradients/while_grad/gradients/while/mul_grad/Shape_0/accumulator/element_shape?
Agradients/while_grad/gradients/while/mul_grad/Shape_0/accumulatorEmptyTensorListXgradients/while_grad/gradients/while/mul_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02C
Agradients/while_grad/gradients/while/mul_grad/Shape_0/accumulator?
Qgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/mul_grad/Shape_1_0/accumulator?
)while/split_1_2/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2+
)while/split_1_2/accumulator/element_shape?
while/split_1_2/accumulatorEmptyTensorList2while/split_1_2/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/split_1_2/accumulator?
+while/Sigmoid_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2-
+while/Sigmoid_1_0/accumulator/element_shape?
while/Sigmoid_1_0/accumulatorEmptyTensorList4while/Sigmoid_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
while/Sigmoid_1_0/accumulator?
Qgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2S
Qgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulator/element_shape?
Cgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulatorEmptyTensorListZgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02E
Cgradients/while_grad/gradients/while/add_1_grad/Shape_0/accumulator?
Sgradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB:2U
Sgradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulator/element_shape?
Egradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulatorEmptyTensorList\gradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02G
Egradients/while_grad/gradients/while/add_1_grad/Shape_1_0/accumulator?
Ewhile/TensorArrayV2Read/TensorListGetItem_0/accumulator/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  2G
Ewhile/TensorArrayV2Read/TensorListGetItem_0/accumulator/element_shape?
7while/TensorArrayV2Read/TensorListGetItem_0/accumulatorEmptyTensorListNwhile/TensorArrayV2Read/TensorListGetItem_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type029
7while/TensorArrayV2Read/TensorListGetItem_0/accumulator?
?gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulator/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2?
?gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulator/element_shape?
rgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulatorEmptyTensorList?gradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulator/element_shape:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02t
rgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListElementShape_0/accumulatorU
Const_1Const*
_output_shapes
: *
dtype0*
valueB 2	
Const_1?
lgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength_0/accumulatorEmptyTensorListConst_1:output:0!while/maximum_iterations:output:0*
_output_shapes
: *
element_dtype0*

shape_type02n
lgradients/while_grad/gradients/while/TensorArrayV2Read/TensorListGetItem_grad/TensorListLength_0/accumulator"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"Q
"tensorarrayv2stack_tensorliststack+TensorArrayV2Stack/TensorListStack:tensor:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0")
transpose_permtranspose/perm:output:0"
whilewhile_31:output:6"
while_0while_31:output:7"
while_1while_31:output:8"
while_10while_31:output:16"
while_11while_31:output:17"
while_12while_31:output:18"
while_13while_31:output:19"
while_14while_31:output:20"
while_15while_31:output:21"
while_16while_31:output:22"
while_17while_31:output:23"
while_18while_31:output:24"
while_19while_31:output:25"
while_2while_31:output:9"
while_20while_31:output:26"
while_21while_31:output:27"
while_22while_31:output:28"
while_23while_31:output:29"
while_24while_31:output:30"
while_25while_31:output:31"
while_26while_31:output:32"
while_27while_31:output:33"
while_28while_31:output:34"
while_29while_31:output:35"
while_3while_31:output:10"
while_30while_31:output:36"
while_4while_31:output:0"
while_5while_31:output:11"
while_6while_31:output:12"
while_7while_31:output:13"
while_8while_31:output:14"
while_9while_31:output:15"=
while_maximum_iterations!while/maximum_iterations:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?*K
backward_function_name1/__inference___backward_standard_gru_37867_38517:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
ٝ
?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_25802
input_1
input_2
input_3
input_4P
<coverage_attention_dense_2_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_2_biasadd_readvariableop_resource:	?P
<coverage_attention_dense_3_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_3_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_4_tensordot_readvariableop_resource:	?I
:coverage_attention_dense_4_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_5_tensordot_readvariableop_resource:	?H
:coverage_attention_dense_5_biasadd_readvariableop_resource:5
"embedding_embedding_lookup_1218933:	l?4
 gru_read_readvariableop_resource:
??6
"gru_read_1_readvariableop_resource:
??5
"gru_read_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?l5
'dense_1_biasadd_readvariableop_resource:l
identity

identity_1

identity_2??1coverage_attention/dense_2/BiasAdd/ReadVariableOp?3coverage_attention/dense_2/Tensordot/ReadVariableOp?1coverage_attention/dense_3/BiasAdd/ReadVariableOp?3coverage_attention/dense_3/Tensordot/ReadVariableOp?1coverage_attention/dense_4/BiasAdd/ReadVariableOp?3coverage_attention/dense_4/Tensordot/ReadVariableOp?1coverage_attention/dense_5/BiasAdd/ReadVariableOp?3coverage_attention/dense_5/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/Read/ReadVariableOp?gru/Read_1/ReadVariableOp?gru/Read_2/ReadVariableOp?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
!coverage_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!coverage_attention/ExpandDims/dim?
coverage_attention/ExpandDims
ExpandDimsinput_3*coverage_attention/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/ExpandDims?
#coverage_attention/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#coverage_attention/ExpandDims_1/dim?
coverage_attention/ExpandDims_1
ExpandDimsinput_4,coverage_attention/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:??????????2!
coverage_attention/ExpandDims_1?
3coverage_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_2/Tensordot/ReadVariableOp?
)coverage_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_2/Tensordot/axes?
)coverage_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_2/Tensordot/free?
*coverage_attention/dense_2/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/Shape?
2coverage_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/GatherV2/axis?
-coverage_attention/dense_2/Tensordot/GatherV2GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/free:output:0;coverage_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/GatherV2?
4coverage_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_2/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_2/Tensordot/GatherV2_1GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/axes:output:0=coverage_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_2/Tensordot/GatherV2_1?
*coverage_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_2/Tensordot/Const?
)coverage_attention/dense_2/Tensordot/ProdProd6coverage_attention/dense_2/Tensordot/GatherV2:output:03coverage_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_2/Tensordot/Prod?
,coverage_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_2/Tensordot/Const_1?
+coverage_attention/dense_2/Tensordot/Prod_1Prod8coverage_attention/dense_2/Tensordot/GatherV2_1:output:05coverage_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_2/Tensordot/Prod_1?
0coverage_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_2/Tensordot/concat/axis?
+coverage_attention/dense_2/Tensordot/concatConcatV22coverage_attention/dense_2/Tensordot/free:output:02coverage_attention/dense_2/Tensordot/axes:output:09coverage_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_2/Tensordot/concat?
*coverage_attention/dense_2/Tensordot/stackPack2coverage_attention/dense_2/Tensordot/Prod:output:04coverage_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/stack?
.coverage_attention/dense_2/Tensordot/transpose	Transposeinput_24coverage_attention/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_2/Tensordot/transpose?
,coverage_attention/dense_2/Tensordot/ReshapeReshape2coverage_attention/dense_2/Tensordot/transpose:y:03coverage_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_2/Tensordot/Reshape?
+coverage_attention/dense_2/Tensordot/MatMulMatMul5coverage_attention/dense_2/Tensordot/Reshape:output:0;coverage_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_2/Tensordot/MatMul?
,coverage_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_2/Tensordot/Const_2?
2coverage_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/concat_1/axis?
-coverage_attention/dense_2/Tensordot/concat_1ConcatV26coverage_attention/dense_2/Tensordot/GatherV2:output:05coverage_attention/dense_2/Tensordot/Const_2:output:0;coverage_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/concat_1?
$coverage_attention/dense_2/TensordotReshape5coverage_attention/dense_2/Tensordot/MatMul:product:06coverage_attention/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_2/Tensordot?
1coverage_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_2/BiasAdd/ReadVariableOp?
"coverage_attention/dense_2/BiasAddBiasAdd-coverage_attention/dense_2/Tensordot:output:09coverage_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_2/BiasAdd?
3coverage_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_3/Tensordot/ReadVariableOp?
)coverage_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_3/Tensordot/axes?
)coverage_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_3/Tensordot/free?
*coverage_attention/dense_3/Tensordot/ShapeShape&coverage_attention/ExpandDims:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/Shape?
2coverage_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/GatherV2/axis?
-coverage_attention/dense_3/Tensordot/GatherV2GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/free:output:0;coverage_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/GatherV2?
4coverage_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_3/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_3/Tensordot/GatherV2_1GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/axes:output:0=coverage_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_3/Tensordot/GatherV2_1?
*coverage_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_3/Tensordot/Const?
)coverage_attention/dense_3/Tensordot/ProdProd6coverage_attention/dense_3/Tensordot/GatherV2:output:03coverage_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_3/Tensordot/Prod?
,coverage_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_3/Tensordot/Const_1?
+coverage_attention/dense_3/Tensordot/Prod_1Prod8coverage_attention/dense_3/Tensordot/GatherV2_1:output:05coverage_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_3/Tensordot/Prod_1?
0coverage_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_3/Tensordot/concat/axis?
+coverage_attention/dense_3/Tensordot/concatConcatV22coverage_attention/dense_3/Tensordot/free:output:02coverage_attention/dense_3/Tensordot/axes:output:09coverage_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_3/Tensordot/concat?
*coverage_attention/dense_3/Tensordot/stackPack2coverage_attention/dense_3/Tensordot/Prod:output:04coverage_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/stack?
.coverage_attention/dense_3/Tensordot/transpose	Transpose&coverage_attention/ExpandDims:output:04coverage_attention/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_3/Tensordot/transpose?
,coverage_attention/dense_3/Tensordot/ReshapeReshape2coverage_attention/dense_3/Tensordot/transpose:y:03coverage_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_3/Tensordot/Reshape?
+coverage_attention/dense_3/Tensordot/MatMulMatMul5coverage_attention/dense_3/Tensordot/Reshape:output:0;coverage_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_3/Tensordot/MatMul?
,coverage_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_3/Tensordot/Const_2?
2coverage_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/concat_1/axis?
-coverage_attention/dense_3/Tensordot/concat_1ConcatV26coverage_attention/dense_3/Tensordot/GatherV2:output:05coverage_attention/dense_3/Tensordot/Const_2:output:0;coverage_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/concat_1?
$coverage_attention/dense_3/TensordotReshape5coverage_attention/dense_3/Tensordot/MatMul:product:06coverage_attention/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_3/Tensordot?
1coverage_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_3/BiasAdd/ReadVariableOp?
"coverage_attention/dense_3/BiasAddBiasAdd-coverage_attention/dense_3/Tensordot:output:09coverage_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_3/BiasAdd?
coverage_attention/addAddV2+coverage_attention/dense_2/BiasAdd:output:0+coverage_attention/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add?
3coverage_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_4/Tensordot/ReadVariableOp?
)coverage_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_4/Tensordot/axes?
)coverage_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_4/Tensordot/free?
*coverage_attention/dense_4/Tensordot/ShapeShape(coverage_attention/ExpandDims_1:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/Shape?
2coverage_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/GatherV2/axis?
-coverage_attention/dense_4/Tensordot/GatherV2GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/free:output:0;coverage_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/GatherV2?
4coverage_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_4/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_4/Tensordot/GatherV2_1GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/axes:output:0=coverage_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_4/Tensordot/GatherV2_1?
*coverage_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_4/Tensordot/Const?
)coverage_attention/dense_4/Tensordot/ProdProd6coverage_attention/dense_4/Tensordot/GatherV2:output:03coverage_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_4/Tensordot/Prod?
,coverage_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_4/Tensordot/Const_1?
+coverage_attention/dense_4/Tensordot/Prod_1Prod8coverage_attention/dense_4/Tensordot/GatherV2_1:output:05coverage_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_4/Tensordot/Prod_1?
0coverage_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_4/Tensordot/concat/axis?
+coverage_attention/dense_4/Tensordot/concatConcatV22coverage_attention/dense_4/Tensordot/free:output:02coverage_attention/dense_4/Tensordot/axes:output:09coverage_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_4/Tensordot/concat?
*coverage_attention/dense_4/Tensordot/stackPack2coverage_attention/dense_4/Tensordot/Prod:output:04coverage_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/stack?
.coverage_attention/dense_4/Tensordot/transpose	Transpose(coverage_attention/ExpandDims_1:output:04coverage_attention/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_4/Tensordot/transpose?
,coverage_attention/dense_4/Tensordot/ReshapeReshape2coverage_attention/dense_4/Tensordot/transpose:y:03coverage_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_4/Tensordot/Reshape?
+coverage_attention/dense_4/Tensordot/MatMulMatMul5coverage_attention/dense_4/Tensordot/Reshape:output:0;coverage_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_4/Tensordot/MatMul?
,coverage_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_4/Tensordot/Const_2?
2coverage_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/concat_1/axis?
-coverage_attention/dense_4/Tensordot/concat_1ConcatV26coverage_attention/dense_4/Tensordot/GatherV2:output:05coverage_attention/dense_4/Tensordot/Const_2:output:0;coverage_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/concat_1?
$coverage_attention/dense_4/TensordotReshape5coverage_attention/dense_4/Tensordot/MatMul:product:06coverage_attention/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_4/Tensordot?
1coverage_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_4/BiasAdd/ReadVariableOp?
"coverage_attention/dense_4/BiasAddBiasAdd-coverage_attention/dense_4/Tensordot:output:09coverage_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_4/BiasAdd?
coverage_attention/add_1AddV2coverage_attention/add:z:0+coverage_attention/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add_1?
coverage_attention/TanhTanhcoverage_attention/add_1:z:0*
T0*-
_output_shapes
:???????????2
coverage_attention/Tanh?
3coverage_attention/dense_5/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_5/Tensordot/ReadVariableOp?
)coverage_attention/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_5/Tensordot/axes?
)coverage_attention/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_5/Tensordot/free?
*coverage_attention/dense_5/Tensordot/ShapeShapecoverage_attention/Tanh:y:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/Shape?
2coverage_attention/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/GatherV2/axis?
-coverage_attention/dense_5/Tensordot/GatherV2GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/free:output:0;coverage_attention/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/GatherV2?
4coverage_attention/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_5/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_5/Tensordot/GatherV2_1GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/axes:output:0=coverage_attention/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_5/Tensordot/GatherV2_1?
*coverage_attention/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_5/Tensordot/Const?
)coverage_attention/dense_5/Tensordot/ProdProd6coverage_attention/dense_5/Tensordot/GatherV2:output:03coverage_attention/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_5/Tensordot/Prod?
,coverage_attention/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_5/Tensordot/Const_1?
+coverage_attention/dense_5/Tensordot/Prod_1Prod8coverage_attention/dense_5/Tensordot/GatherV2_1:output:05coverage_attention/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_5/Tensordot/Prod_1?
0coverage_attention/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_5/Tensordot/concat/axis?
+coverage_attention/dense_5/Tensordot/concatConcatV22coverage_attention/dense_5/Tensordot/free:output:02coverage_attention/dense_5/Tensordot/axes:output:09coverage_attention/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_5/Tensordot/concat?
*coverage_attention/dense_5/Tensordot/stackPack2coverage_attention/dense_5/Tensordot/Prod:output:04coverage_attention/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/stack?
.coverage_attention/dense_5/Tensordot/transpose	Transposecoverage_attention/Tanh:y:04coverage_attention/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_5/Tensordot/transpose?
,coverage_attention/dense_5/Tensordot/ReshapeReshape2coverage_attention/dense_5/Tensordot/transpose:y:03coverage_attention/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_5/Tensordot/Reshape?
+coverage_attention/dense_5/Tensordot/MatMulMatMul5coverage_attention/dense_5/Tensordot/Reshape:output:0;coverage_attention/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+coverage_attention/dense_5/Tensordot/MatMul?
,coverage_attention/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,coverage_attention/dense_5/Tensordot/Const_2?
2coverage_attention/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/concat_1/axis?
-coverage_attention/dense_5/Tensordot/concat_1ConcatV26coverage_attention/dense_5/Tensordot/GatherV2:output:05coverage_attention/dense_5/Tensordot/Const_2:output:0;coverage_attention/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/concat_1?
$coverage_attention/dense_5/TensordotReshape5coverage_attention/dense_5/Tensordot/MatMul:product:06coverage_attention/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_5/Tensordot?
1coverage_attention/dense_5/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1coverage_attention/dense_5/BiasAdd/ReadVariableOp?
"coverage_attention/dense_5/BiasAddBiasAdd-coverage_attention/dense_5/Tensordot:output:09coverage_attention/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_5/BiasAddt
coverage_attention/RankConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rankx
coverage_attention/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rank_1v
coverage_attention/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub/y?
coverage_attention/SubSub"coverage_attention/Rank_1:output:0!coverage_attention/Sub/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub?
coverage_attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/range/start?
coverage_attention/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/limit?
coverage_attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/delta?
coverage_attention/rangeRange'coverage_attention/range/start:output:0'coverage_attention/range/limit:output:0'coverage_attention/range/delta:output:0*
_output_shapes
:2
coverage_attention/range?
 coverage_attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/start?
 coverage_attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/delta?
coverage_attention/range_1Range)coverage_attention/range_1/start:output:0coverage_attention/Sub:z:0)coverage_attention/range_1/delta:output:0*
_output_shapes
: 2
coverage_attention/range_1?
"coverage_attention/concat/values_1Packcoverage_attention/Sub:z:0*
N*
T0*
_output_shapes
:2$
"coverage_attention/concat/values_1?
"coverage_attention/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2$
"coverage_attention/concat/values_3?
coverage_attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/concat/axis?
coverage_attention/concatConcatV2!coverage_attention/range:output:0+coverage_attention/concat/values_1:output:0#coverage_attention/range_1:output:0+coverage_attention/concat/values_3:output:0'coverage_attention/concat/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat?
coverage_attention/transpose	Transpose+coverage_attention/dense_5/BiasAdd:output:0"coverage_attention/concat:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/transpose?
coverage_attention/SoftmaxSoftmax coverage_attention/transpose:y:0*
T0*,
_output_shapes
:??????????2
coverage_attention/Softmaxz
coverage_attention/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub_1/y?
coverage_attention/Sub_1Sub"coverage_attention/Rank_1:output:0#coverage_attention/Sub_1/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub_1?
 coverage_attention/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/range_2/start?
 coverage_attention/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/limit?
 coverage_attention/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/delta?
coverage_attention/range_2Range)coverage_attention/range_2/start:output:0)coverage_attention/range_2/limit:output:0)coverage_attention/range_2/delta:output:0*
_output_shapes
:2
coverage_attention/range_2?
 coverage_attention/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/start?
 coverage_attention/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/delta?
coverage_attention/range_3Range)coverage_attention/range_3/start:output:0coverage_attention/Sub_1:z:0)coverage_attention/range_3/delta:output:0*
_output_shapes
: 2
coverage_attention/range_3?
$coverage_attention/concat_1/values_1Packcoverage_attention/Sub_1:z:0*
N*
T0*
_output_shapes
:2&
$coverage_attention/concat_1/values_1?
$coverage_attention/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$coverage_attention/concat_1/values_3?
 coverage_attention/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/concat_1/axis?
coverage_attention/concat_1ConcatV2#coverage_attention/range_2:output:0-coverage_attention/concat_1/values_1:output:0#coverage_attention/range_3:output:0-coverage_attention/concat_1/values_3:output:0)coverage_attention/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat_1?
coverage_attention/transpose_1	Transpose$coverage_attention/Softmax:softmax:0$coverage_attention/concat_1:output:0*
T0*,
_output_shapes
:??????????2 
coverage_attention/transpose_1?
coverage_attention/mulMul"coverage_attention/transpose_1:y:0input_2*
T0*-
_output_shapes
:???????????2
coverage_attention/mul?
(coverage_attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(coverage_attention/Sum/reduction_indices?
coverage_attention/SumSumcoverage_attention/mul:z:01coverage_attention/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
coverage_attention/Sum?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1218933input_1*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1218933*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1218933*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimscoverage_attention/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0.embedding/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatU
	gru/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
	gru/zeros?
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read/ReadVariableOpt
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity?
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read_1/ReadVariableOpz
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity_1?
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru/Identity_2?
gru/PartitionedCallPartitionedCallconcat:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:??????????:??????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_255542
gru/PartitionedCall?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshapedense/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?l*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/BiasAdds
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape"coverage_attention/transpose_1:y:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentitydense_1/BiasAdd:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identitygru/PartitionedCall:output:22^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2f
1coverage_attention/dense_2/BiasAdd/ReadVariableOp1coverage_attention/dense_2/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_2/Tensordot/ReadVariableOp3coverage_attention/dense_2/Tensordot/ReadVariableOp2f
1coverage_attention/dense_3/BiasAdd/ReadVariableOp1coverage_attention/dense_3/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_3/Tensordot/ReadVariableOp3coverage_attention/dense_3/Tensordot/ReadVariableOp2f
1coverage_attention/dense_4/BiasAdd/ReadVariableOp1coverage_attention/dense_4/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_4/Tensordot/ReadVariableOp3coverage_attention/dense_4/Tensordot/ReadVariableOp2f
1coverage_attention/dense_5/BiasAdd/ReadVariableOp1coverage_attention/dense_5/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_5/Tensordot/ReadVariableOp3coverage_attention/dense_5/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:VR
-
_output_shapes
:???????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?C
?
__inference_standard_gru_21713

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1219614_21636*0
cond(R&
$__inference_while_cond_1219613_19130*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?;
?
(__inference_gpu_gru_with_fallback_241928

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:??2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_195ecfd5-1cf0-49c6-b6ea-18b23c1c7cc2*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?J
?
"__inference__traced_restore_242320
file_prefixE
2assignvariableop_rnn__decoder_embedding_embeddings:	l?@
,assignvariableop_1_rnn__decoder_dense_kernel:
??9
*assignvariableop_2_rnn__decoder_dense_bias:	?A
.assignvariableop_3_rnn__decoder_dense_1_kernel:	?l:
,assignvariableop_4_rnn__decoder_dense_1_bias:lG
3assignvariableop_5_rnn__decoder_gru_gru_cell_kernel:
??Q
=assignvariableop_6_rnn__decoder_gru_gru_cell_recurrent_kernel:
??D
1assignvariableop_7_rnn__decoder_gru_gru_cell_bias:	?U
Aassignvariableop_8_rnn__decoder_coverage_attention_dense_2_kernel:
??N
?assignvariableop_9_rnn__decoder_coverage_attention_dense_2_bias:	?V
Bassignvariableop_10_rnn__decoder_coverage_attention_dense_3_kernel:
??O
@assignvariableop_11_rnn__decoder_coverage_attention_dense_3_bias:	?U
Bassignvariableop_12_rnn__decoder_coverage_attention_dense_4_kernel:	?O
@assignvariableop_13_rnn__decoder_coverage_attention_dense_4_bias:	?U
Bassignvariableop_14_rnn__decoder_coverage_attention_dense_5_kernel:	?N
@assignvariableop_15_rnn__decoder_coverage_attention_dense_5_bias:
identity_17??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B/embedding/embeddings/.ATTRIBUTES/VARIABLE_VALUEB%fc1/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc1/bias/.ATTRIBUTES/VARIABLE_VALUEB%fc2/kernel/.ATTRIBUTES/VARIABLE_VALUEB#fc2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOp2assignvariableop_rnn__decoder_embedding_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOp,assignvariableop_1_rnn__decoder_dense_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOp*assignvariableop_2_rnn__decoder_dense_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOp.assignvariableop_3_rnn__decoder_dense_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOp,assignvariableop_4_rnn__decoder_dense_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOp3assignvariableop_5_rnn__decoder_gru_gru_cell_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOp=assignvariableop_6_rnn__decoder_gru_gru_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOp1assignvariableop_7_rnn__decoder_gru_gru_cell_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpAassignvariableop_8_rnn__decoder_coverage_attention_dense_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOp?assignvariableop_9_rnn__decoder_coverage_attention_dense_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpBassignvariableop_10_rnn__decoder_coverage_attention_dense_3_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOp@assignvariableop_11_rnn__decoder_coverage_attention_dense_3_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpBassignvariableop_12_rnn__decoder_coverage_attention_dense_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOp@assignvariableop_13_rnn__decoder_coverage_attention_dense_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOpBassignvariableop_14_rnn__decoder_coverage_attention_dense_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp@assignvariableop_15_rnn__decoder_coverage_attention_dense_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_159
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_16?
Identity_17IdentityIdentity_16:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_17"#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?|
?
M__inference_coverage_attention_layer_call_and_return_conditional_losses_22923
input_1
input_2
input_3#
dense_2_1215712:
??
dense_2_1215714:	?#
dense_3_1215754:
??
dense_3_1215756:	?"
dense_4_1215797:	?
dense_4_1215799:	?"
dense_5_1215841:	?
dense_5_1215843:
identity

identity_1??dense_2/StatefulPartitionedCall?dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim

ExpandDims
ExpandDimsinput_2ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimso
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
ExpandDims_1/dim?
ExpandDims_1
ExpandDimsinput_3ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:??????????2
ExpandDims_1?
dense_2/StatefulPartitionedCallStatefulPartitionedCallinput_1dense_2_1215712dense_2_1215714*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_2_layer_call_and_return_conditional_losses_200502!
dense_2/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallExpandDims:output:0dense_3_1215754dense_3_1215756*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_3_layer_call_and_return_conditional_losses_190362!
dense_3/StatefulPartitionedCall?
addAddV2(dense_2/StatefulPartitionedCall:output:0(dense_3/StatefulPartitionedCall:output:0*
T0*-
_output_shapes
:???????????2
add?
dense_4/StatefulPartitionedCallStatefulPartitionedCallExpandDims_1:output:0dense_4_1215797dense_4_1215799*
Tin
2*
Tout
2*
_collective_manager_ids
 *-
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_4_layer_call_and_return_conditional_losses_228322!
dense_4/StatefulPartitionedCall?
add_1AddV2add:z:0(dense_4/StatefulPartitionedCall:output:0*
T0*-
_output_shapes
:???????????2
add_1W
TanhTanh	add_1:z:0*
T0*-
_output_shapes
:???????????2
Tanh?
dense_5/StatefulPartitionedCallStatefulPartitionedCallTanh:y:0dense_5_1215841dense_5_1215843*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_5_layer_call_and_return_conditional_losses_219972!
dense_5/StatefulPartitionedCallN
RankConst*
_output_shapes
: *
dtype0*
value	B :2
RankR
Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
Rank_1P
Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
Sub/yS
SubSubRank_1:output:0Sub/y:output:0*
T0*
_output_shapes
: 2
Sub\
range/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range/start\
range/limitConst*
_output_shapes
: *
dtype0*
value	B :2
range/limit\
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range/deltau
rangeRangerange/start:output:0range/limit:output:0range/delta:output:0*
_output_shapes
:2
range`
range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/start`
range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_1/deltan
range_1Rangerange_1/start:output:0Sub:z:0range_1/delta:output:0*
_output_shapes
: 2	
range_1a
concat/values_1PackSub:z:0*
N*
T0*
_output_shapes
:2
concat/values_1l
concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2
concat/values_3\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2range:output:0concat/values_1:output:0range_1:output:0concat/values_3:output:0concat/axis:output:0*
N*
T0*
_output_shapes
:2
concat?
	transpose	Transpose(dense_5/StatefulPartitionedCall:output:0concat:output:0*
T0*,
_output_shapes
:??????????2
	transposec
SoftmaxSoftmaxtranspose:y:0*
T0*,
_output_shapes
:??????????2	
SoftmaxT
Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
Sub_1/yY
Sub_1SubRank_1:output:0Sub_1/y:output:0*
T0*
_output_shapes
: 2
Sub_1`
range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2
range_2/start`
range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/limit`
range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_2/delta
range_2Rangerange_2/start:output:0range_2/limit:output:0range_2/delta:output:0*
_output_shapes
:2	
range_2`
range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2
range_3/start`
range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2
range_3/deltap
range_3Rangerange_3/start:output:0	Sub_1:z:0range_3/delta:output:0*
_output_shapes
: 2	
range_3g
concat_1/values_1Pack	Sub_1:z:0*
N*
T0*
_output_shapes
:2
concat_1/values_1p
concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2
concat_1/values_3`
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat_1/axis?
concat_1ConcatV2range_2:output:0concat_1/values_1:output:0range_3:output:0concat_1/values_3:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes
:2

concat_1?
transpose_1	TransposeSoftmax:softmax:0concat_1:output:0*
T0*,
_output_shapes
:??????????2
transpose_1c
mulMultranspose_1:y:0input_1*
T0*-
_output_shapes
:???????????2
mulp
Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2
Sum/reduction_indicesm
SumSummul:z:0Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
Sum?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_2_1215712* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_3_1215754* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_4_1215797*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_5_1215841*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentitySum:output:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identitytranspose_1:y:0 ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall ^dense_5/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:???????????:??????????:??????????: : : : : : : : 2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:V R
-
_output_shapes
:???????????
!
_user_specified_name	input_1:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?1
?
$__inference_while_body_1216642_25272
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
ٝ
?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_21961
input_1
input_2
input_3
input_4P
<coverage_attention_dense_2_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_2_biasadd_readvariableop_resource:	?P
<coverage_attention_dense_3_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_3_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_4_tensordot_readvariableop_resource:	?I
:coverage_attention_dense_4_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_5_tensordot_readvariableop_resource:	?H
:coverage_attention_dense_5_biasadd_readvariableop_resource:5
"embedding_embedding_lookup_1219532:	l?4
 gru_read_readvariableop_resource:
??6
"gru_read_1_readvariableop_resource:
??5
"gru_read_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?l5
'dense_1_biasadd_readvariableop_resource:l
identity

identity_1

identity_2??1coverage_attention/dense_2/BiasAdd/ReadVariableOp?3coverage_attention/dense_2/Tensordot/ReadVariableOp?1coverage_attention/dense_3/BiasAdd/ReadVariableOp?3coverage_attention/dense_3/Tensordot/ReadVariableOp?1coverage_attention/dense_4/BiasAdd/ReadVariableOp?3coverage_attention/dense_4/Tensordot/ReadVariableOp?1coverage_attention/dense_5/BiasAdd/ReadVariableOp?3coverage_attention/dense_5/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/Read/ReadVariableOp?gru/Read_1/ReadVariableOp?gru/Read_2/ReadVariableOp?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
!coverage_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!coverage_attention/ExpandDims/dim?
coverage_attention/ExpandDims
ExpandDimsinput_3*coverage_attention/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/ExpandDims?
#coverage_attention/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#coverage_attention/ExpandDims_1/dim?
coverage_attention/ExpandDims_1
ExpandDimsinput_4,coverage_attention/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:??????????2!
coverage_attention/ExpandDims_1?
3coverage_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_2/Tensordot/ReadVariableOp?
)coverage_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_2/Tensordot/axes?
)coverage_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_2/Tensordot/free?
*coverage_attention/dense_2/Tensordot/ShapeShapeinput_2*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/Shape?
2coverage_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/GatherV2/axis?
-coverage_attention/dense_2/Tensordot/GatherV2GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/free:output:0;coverage_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/GatherV2?
4coverage_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_2/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_2/Tensordot/GatherV2_1GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/axes:output:0=coverage_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_2/Tensordot/GatherV2_1?
*coverage_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_2/Tensordot/Const?
)coverage_attention/dense_2/Tensordot/ProdProd6coverage_attention/dense_2/Tensordot/GatherV2:output:03coverage_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_2/Tensordot/Prod?
,coverage_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_2/Tensordot/Const_1?
+coverage_attention/dense_2/Tensordot/Prod_1Prod8coverage_attention/dense_2/Tensordot/GatherV2_1:output:05coverage_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_2/Tensordot/Prod_1?
0coverage_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_2/Tensordot/concat/axis?
+coverage_attention/dense_2/Tensordot/concatConcatV22coverage_attention/dense_2/Tensordot/free:output:02coverage_attention/dense_2/Tensordot/axes:output:09coverage_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_2/Tensordot/concat?
*coverage_attention/dense_2/Tensordot/stackPack2coverage_attention/dense_2/Tensordot/Prod:output:04coverage_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/stack?
.coverage_attention/dense_2/Tensordot/transpose	Transposeinput_24coverage_attention/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_2/Tensordot/transpose?
,coverage_attention/dense_2/Tensordot/ReshapeReshape2coverage_attention/dense_2/Tensordot/transpose:y:03coverage_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_2/Tensordot/Reshape?
+coverage_attention/dense_2/Tensordot/MatMulMatMul5coverage_attention/dense_2/Tensordot/Reshape:output:0;coverage_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_2/Tensordot/MatMul?
,coverage_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_2/Tensordot/Const_2?
2coverage_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/concat_1/axis?
-coverage_attention/dense_2/Tensordot/concat_1ConcatV26coverage_attention/dense_2/Tensordot/GatherV2:output:05coverage_attention/dense_2/Tensordot/Const_2:output:0;coverage_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/concat_1?
$coverage_attention/dense_2/TensordotReshape5coverage_attention/dense_2/Tensordot/MatMul:product:06coverage_attention/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_2/Tensordot?
1coverage_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_2/BiasAdd/ReadVariableOp?
"coverage_attention/dense_2/BiasAddBiasAdd-coverage_attention/dense_2/Tensordot:output:09coverage_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_2/BiasAdd?
3coverage_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_3/Tensordot/ReadVariableOp?
)coverage_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_3/Tensordot/axes?
)coverage_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_3/Tensordot/free?
*coverage_attention/dense_3/Tensordot/ShapeShape&coverage_attention/ExpandDims:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/Shape?
2coverage_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/GatherV2/axis?
-coverage_attention/dense_3/Tensordot/GatherV2GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/free:output:0;coverage_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/GatherV2?
4coverage_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_3/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_3/Tensordot/GatherV2_1GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/axes:output:0=coverage_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_3/Tensordot/GatherV2_1?
*coverage_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_3/Tensordot/Const?
)coverage_attention/dense_3/Tensordot/ProdProd6coverage_attention/dense_3/Tensordot/GatherV2:output:03coverage_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_3/Tensordot/Prod?
,coverage_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_3/Tensordot/Const_1?
+coverage_attention/dense_3/Tensordot/Prod_1Prod8coverage_attention/dense_3/Tensordot/GatherV2_1:output:05coverage_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_3/Tensordot/Prod_1?
0coverage_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_3/Tensordot/concat/axis?
+coverage_attention/dense_3/Tensordot/concatConcatV22coverage_attention/dense_3/Tensordot/free:output:02coverage_attention/dense_3/Tensordot/axes:output:09coverage_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_3/Tensordot/concat?
*coverage_attention/dense_3/Tensordot/stackPack2coverage_attention/dense_3/Tensordot/Prod:output:04coverage_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/stack?
.coverage_attention/dense_3/Tensordot/transpose	Transpose&coverage_attention/ExpandDims:output:04coverage_attention/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_3/Tensordot/transpose?
,coverage_attention/dense_3/Tensordot/ReshapeReshape2coverage_attention/dense_3/Tensordot/transpose:y:03coverage_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_3/Tensordot/Reshape?
+coverage_attention/dense_3/Tensordot/MatMulMatMul5coverage_attention/dense_3/Tensordot/Reshape:output:0;coverage_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_3/Tensordot/MatMul?
,coverage_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_3/Tensordot/Const_2?
2coverage_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/concat_1/axis?
-coverage_attention/dense_3/Tensordot/concat_1ConcatV26coverage_attention/dense_3/Tensordot/GatherV2:output:05coverage_attention/dense_3/Tensordot/Const_2:output:0;coverage_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/concat_1?
$coverage_attention/dense_3/TensordotReshape5coverage_attention/dense_3/Tensordot/MatMul:product:06coverage_attention/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_3/Tensordot?
1coverage_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_3/BiasAdd/ReadVariableOp?
"coverage_attention/dense_3/BiasAddBiasAdd-coverage_attention/dense_3/Tensordot:output:09coverage_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_3/BiasAdd?
coverage_attention/addAddV2+coverage_attention/dense_2/BiasAdd:output:0+coverage_attention/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add?
3coverage_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_4/Tensordot/ReadVariableOp?
)coverage_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_4/Tensordot/axes?
)coverage_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_4/Tensordot/free?
*coverage_attention/dense_4/Tensordot/ShapeShape(coverage_attention/ExpandDims_1:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/Shape?
2coverage_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/GatherV2/axis?
-coverage_attention/dense_4/Tensordot/GatherV2GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/free:output:0;coverage_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/GatherV2?
4coverage_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_4/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_4/Tensordot/GatherV2_1GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/axes:output:0=coverage_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_4/Tensordot/GatherV2_1?
*coverage_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_4/Tensordot/Const?
)coverage_attention/dense_4/Tensordot/ProdProd6coverage_attention/dense_4/Tensordot/GatherV2:output:03coverage_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_4/Tensordot/Prod?
,coverage_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_4/Tensordot/Const_1?
+coverage_attention/dense_4/Tensordot/Prod_1Prod8coverage_attention/dense_4/Tensordot/GatherV2_1:output:05coverage_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_4/Tensordot/Prod_1?
0coverage_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_4/Tensordot/concat/axis?
+coverage_attention/dense_4/Tensordot/concatConcatV22coverage_attention/dense_4/Tensordot/free:output:02coverage_attention/dense_4/Tensordot/axes:output:09coverage_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_4/Tensordot/concat?
*coverage_attention/dense_4/Tensordot/stackPack2coverage_attention/dense_4/Tensordot/Prod:output:04coverage_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/stack?
.coverage_attention/dense_4/Tensordot/transpose	Transpose(coverage_attention/ExpandDims_1:output:04coverage_attention/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_4/Tensordot/transpose?
,coverage_attention/dense_4/Tensordot/ReshapeReshape2coverage_attention/dense_4/Tensordot/transpose:y:03coverage_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_4/Tensordot/Reshape?
+coverage_attention/dense_4/Tensordot/MatMulMatMul5coverage_attention/dense_4/Tensordot/Reshape:output:0;coverage_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_4/Tensordot/MatMul?
,coverage_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_4/Tensordot/Const_2?
2coverage_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/concat_1/axis?
-coverage_attention/dense_4/Tensordot/concat_1ConcatV26coverage_attention/dense_4/Tensordot/GatherV2:output:05coverage_attention/dense_4/Tensordot/Const_2:output:0;coverage_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/concat_1?
$coverage_attention/dense_4/TensordotReshape5coverage_attention/dense_4/Tensordot/MatMul:product:06coverage_attention/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_4/Tensordot?
1coverage_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_4/BiasAdd/ReadVariableOp?
"coverage_attention/dense_4/BiasAddBiasAdd-coverage_attention/dense_4/Tensordot:output:09coverage_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_4/BiasAdd?
coverage_attention/add_1AddV2coverage_attention/add:z:0+coverage_attention/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add_1?
coverage_attention/TanhTanhcoverage_attention/add_1:z:0*
T0*-
_output_shapes
:???????????2
coverage_attention/Tanh?
3coverage_attention/dense_5/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_5/Tensordot/ReadVariableOp?
)coverage_attention/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_5/Tensordot/axes?
)coverage_attention/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_5/Tensordot/free?
*coverage_attention/dense_5/Tensordot/ShapeShapecoverage_attention/Tanh:y:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/Shape?
2coverage_attention/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/GatherV2/axis?
-coverage_attention/dense_5/Tensordot/GatherV2GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/free:output:0;coverage_attention/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/GatherV2?
4coverage_attention/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_5/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_5/Tensordot/GatherV2_1GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/axes:output:0=coverage_attention/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_5/Tensordot/GatherV2_1?
*coverage_attention/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_5/Tensordot/Const?
)coverage_attention/dense_5/Tensordot/ProdProd6coverage_attention/dense_5/Tensordot/GatherV2:output:03coverage_attention/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_5/Tensordot/Prod?
,coverage_attention/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_5/Tensordot/Const_1?
+coverage_attention/dense_5/Tensordot/Prod_1Prod8coverage_attention/dense_5/Tensordot/GatherV2_1:output:05coverage_attention/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_5/Tensordot/Prod_1?
0coverage_attention/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_5/Tensordot/concat/axis?
+coverage_attention/dense_5/Tensordot/concatConcatV22coverage_attention/dense_5/Tensordot/free:output:02coverage_attention/dense_5/Tensordot/axes:output:09coverage_attention/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_5/Tensordot/concat?
*coverage_attention/dense_5/Tensordot/stackPack2coverage_attention/dense_5/Tensordot/Prod:output:04coverage_attention/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/stack?
.coverage_attention/dense_5/Tensordot/transpose	Transposecoverage_attention/Tanh:y:04coverage_attention/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_5/Tensordot/transpose?
,coverage_attention/dense_5/Tensordot/ReshapeReshape2coverage_attention/dense_5/Tensordot/transpose:y:03coverage_attention/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_5/Tensordot/Reshape?
+coverage_attention/dense_5/Tensordot/MatMulMatMul5coverage_attention/dense_5/Tensordot/Reshape:output:0;coverage_attention/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+coverage_attention/dense_5/Tensordot/MatMul?
,coverage_attention/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,coverage_attention/dense_5/Tensordot/Const_2?
2coverage_attention/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/concat_1/axis?
-coverage_attention/dense_5/Tensordot/concat_1ConcatV26coverage_attention/dense_5/Tensordot/GatherV2:output:05coverage_attention/dense_5/Tensordot/Const_2:output:0;coverage_attention/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/concat_1?
$coverage_attention/dense_5/TensordotReshape5coverage_attention/dense_5/Tensordot/MatMul:product:06coverage_attention/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_5/Tensordot?
1coverage_attention/dense_5/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1coverage_attention/dense_5/BiasAdd/ReadVariableOp?
"coverage_attention/dense_5/BiasAddBiasAdd-coverage_attention/dense_5/Tensordot:output:09coverage_attention/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_5/BiasAddt
coverage_attention/RankConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rankx
coverage_attention/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rank_1v
coverage_attention/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub/y?
coverage_attention/SubSub"coverage_attention/Rank_1:output:0!coverage_attention/Sub/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub?
coverage_attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/range/start?
coverage_attention/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/limit?
coverage_attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/delta?
coverage_attention/rangeRange'coverage_attention/range/start:output:0'coverage_attention/range/limit:output:0'coverage_attention/range/delta:output:0*
_output_shapes
:2
coverage_attention/range?
 coverage_attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/start?
 coverage_attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/delta?
coverage_attention/range_1Range)coverage_attention/range_1/start:output:0coverage_attention/Sub:z:0)coverage_attention/range_1/delta:output:0*
_output_shapes
: 2
coverage_attention/range_1?
"coverage_attention/concat/values_1Packcoverage_attention/Sub:z:0*
N*
T0*
_output_shapes
:2$
"coverage_attention/concat/values_1?
"coverage_attention/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2$
"coverage_attention/concat/values_3?
coverage_attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/concat/axis?
coverage_attention/concatConcatV2!coverage_attention/range:output:0+coverage_attention/concat/values_1:output:0#coverage_attention/range_1:output:0+coverage_attention/concat/values_3:output:0'coverage_attention/concat/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat?
coverage_attention/transpose	Transpose+coverage_attention/dense_5/BiasAdd:output:0"coverage_attention/concat:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/transpose?
coverage_attention/SoftmaxSoftmax coverage_attention/transpose:y:0*
T0*,
_output_shapes
:??????????2
coverage_attention/Softmaxz
coverage_attention/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub_1/y?
coverage_attention/Sub_1Sub"coverage_attention/Rank_1:output:0#coverage_attention/Sub_1/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub_1?
 coverage_attention/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/range_2/start?
 coverage_attention/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/limit?
 coverage_attention/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/delta?
coverage_attention/range_2Range)coverage_attention/range_2/start:output:0)coverage_attention/range_2/limit:output:0)coverage_attention/range_2/delta:output:0*
_output_shapes
:2
coverage_attention/range_2?
 coverage_attention/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/start?
 coverage_attention/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/delta?
coverage_attention/range_3Range)coverage_attention/range_3/start:output:0coverage_attention/Sub_1:z:0)coverage_attention/range_3/delta:output:0*
_output_shapes
: 2
coverage_attention/range_3?
$coverage_attention/concat_1/values_1Packcoverage_attention/Sub_1:z:0*
N*
T0*
_output_shapes
:2&
$coverage_attention/concat_1/values_1?
$coverage_attention/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$coverage_attention/concat_1/values_3?
 coverage_attention/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/concat_1/axis?
coverage_attention/concat_1ConcatV2#coverage_attention/range_2:output:0-coverage_attention/concat_1/values_1:output:0#coverage_attention/range_3:output:0-coverage_attention/concat_1/values_3:output:0)coverage_attention/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat_1?
coverage_attention/transpose_1	Transpose$coverage_attention/Softmax:softmax:0$coverage_attention/concat_1:output:0*
T0*,
_output_shapes
:??????????2 
coverage_attention/transpose_1?
coverage_attention/mulMul"coverage_attention/transpose_1:y:0input_2*
T0*-
_output_shapes
:???????????2
coverage_attention/mul?
(coverage_attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(coverage_attention/Sum/reduction_indices?
coverage_attention/SumSumcoverage_attention/mul:z:01coverage_attention/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
coverage_attention/Sum?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1219532input_1*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1219532*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1219532*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimscoverage_attention/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0.embedding/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatU
	gru/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
	gru/zeros?
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read/ReadVariableOpt
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity?
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read_1/ReadVariableOpz
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity_1?
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru/Identity_2?
gru/PartitionedCallPartitionedCallconcat:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:??????????:??????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_217132
gru/PartitionedCall?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshapedense/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?l*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/BiasAdds
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape"coverage_attention/transpose_1:y:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentitydense_1/BiasAdd:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identitygru/PartitionedCall:output:22^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2f
1coverage_attention/dense_2/BiasAdd/ReadVariableOp1coverage_attention/dense_2/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_2/Tensordot/ReadVariableOp3coverage_attention/dense_2/Tensordot/ReadVariableOp2f
1coverage_attention/dense_3/BiasAdd/ReadVariableOp1coverage_attention/dense_3/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_3/Tensordot/ReadVariableOp3coverage_attention/dense_3/Tensordot/ReadVariableOp2f
1coverage_attention/dense_4/BiasAdd/ReadVariableOp1coverage_attention/dense_4/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_4/Tensordot/ReadVariableOp3coverage_attention/dense_4/Tensordot/ReadVariableOp2f
1coverage_attention/dense_5/BiasAdd/ReadVariableOp1coverage_attention/dense_5/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_5/Tensordot/ReadVariableOp3coverage_attention/dense_5/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:VR
-
_output_shapes
:???????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_4
?	
?
$__inference_while_cond_1216641_19145
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1216641___redundant_placeholder05
1while_while_cond_1216641___redundant_placeholder15
1while_while_cond_1216641___redundant_placeholder25
1while_while_cond_1216641___redundant_placeholder35
1while_while_cond_1216641___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?E
?
&__forward_gpu_gru_with_fallback_242064

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_195ecfd5-1cf0-49c6-b6ea-18b23c1c7cc2*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_241929_242065*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?
?
?__inference_gru_layer_call_and_return_conditional_losses_240520

inputs0
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????:???????????????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_gru_2403042
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?1
?
$__inference_while_body_1219614_21636
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?1
?
while_body_241382
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?
?
,__inference_rnn__decoder_layer_call_fn_26059
inputs_0
inputs_1
inputs_2
inputs_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_260032
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
?E
?
__inference_standard_gru_239897

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *
bodyR
while_body_239808*
condR
while_cond_239807*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_34a5f96a-8519-4744-b1cc-477cff1740bc*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?;
?
(__inference_gpu_gru_with_fallback_239973

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:??2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_34a5f96a-8519-4744-b1cc-477cff1740bc*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?r
?

G__inference_rnn__decoder_layer_call_and_return_conditional_losses_25883

inputs
inputs_1
inputs_2
inputs_3.
coverage_attention_1217021:
??)
coverage_attention_1217023:	?.
coverage_attention_1217025:
??)
coverage_attention_1217027:	?-
coverage_attention_1217029:	?)
coverage_attention_1217031:	?-
coverage_attention_1217033:	?(
coverage_attention_1217035:$
embedding_1217039:	l?
gru_1217046:
??
gru_1217048:
??
gru_1217050:	?!
dense_1217054:
??
dense_1217056:	?"
dense_1_1217061:	?l
dense_1_1217063:l
identity

identity_1

identity_2??*coverage_attention/StatefulPartitionedCall?dense/StatefulPartitionedCall?dense_1/StatefulPartitionedCall?!embedding/StatefulPartitionedCall?gru/StatefulPartitionedCall?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
*coverage_attention/StatefulPartitionedCallStatefulPartitionedCallinputs_1inputs_2inputs_3coverage_attention_1217021coverage_attention_1217023coverage_attention_1217025coverage_attention_1217027coverage_attention_1217029coverage_attention_1217031coverage_attention_1217033coverage_attention_1217035*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:??????????:??????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_coverage_attention_layer_call_and_return_conditional_losses_229232,
*coverage_attention/StatefulPartitionedCall?
!embedding/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_1217039*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *M
fHRF
D__inference_embedding_layer_call_and_return_conditional_losses_226462#
!embedding/StatefulPartitionedCallb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDims3coverage_attention/StatefulPartitionedCall:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0*embedding/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concat?
gru/StatefulPartitionedCallStatefulPartitionedCallconcat:output:0gru_1217046gru_1217048gru_1217050*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:??????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_gru_layer_call_and_return_conditional_losses_253802
gru/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCall$gru/StatefulPartitionedCall:output:0dense_1217054dense_1217056*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_215702
dense/StatefulPartitionedCallo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshape&dense/StatefulPartitionedCall:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/StatefulPartitionedCallStatefulPartitionedCallReshape:output:0dense_1_1217061dense_1_1217063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????l*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_258122!
dense_1/StatefulPartitionedCalls
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape3coverage_attention/StatefulPartitionedCall:output:1Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1217021* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1217025* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1217029*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpcoverage_attention_1217033*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity$gru/StatefulPartitionedCall:output:1+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:0+^coverage_attention/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall"^embedding/StatefulPartitionedCall^gru/StatefulPartitionedCallQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2X
*coverage_attention/StatefulPartitionedCall*coverage_attention/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2F
!embedding/StatefulPartitionedCall!embedding/StatefulPartitionedCall2:
gru/StatefulPartitionedCallgru/StatefulPartitionedCall2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:UQ
-
_output_shapes
:???????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_239728
inputs_0
inputs_1
inputs_2
inputs_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0inputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_2396582
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
?E
?
&__forward_gpu_gru_with_fallback_240516

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
cudnnrnn
transpose_7_perm

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dim?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/permO
transpose_0	Transposeinputstranspose/perm:output:0*
T02
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim?

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T02
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output:0"!

cudnnrnn_0CudnnRNN:output_h:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_25916f5e-4f05-435a-9edc-7eb61a2c5449*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_240381_240517*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?/
?
B__inference_dense_5_layer_call_and_return_conditional_losses_21997

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
Tensordot/MatMulp
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?C
?
__inference_standard_gru_23406

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1216095_23329*0
cond(R&
$__inference_while_cond_1216094_20014*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?
?
?__inference_gru_layer_call_and_return_conditional_losses_242068
inputs_00
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????:???????????????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_gru_2418522
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?C
?
__inference_standard_gru_25554

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1219015_24875*0
cond(R&
$__inference_while_cond_1219014_25477*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?	
?
while_cond_240214
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_240214___redundant_placeholder04
0while_while_cond_240214___redundant_placeholder14
0while_while_cond_240214___redundant_placeholder24
0while_while_cond_240214___redundant_placeholder34
0while_while_cond_240214___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?;
?
(__inference_gpu_gru_with_fallback_241547

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3?u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeb
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 2
ExpandDims/dim~

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimsd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2
splith
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*8
_output_shapes&
$:
??:
??:
??*
	num_split2	
split_1q
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Reshape/shapea
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:?2	
Reshapeh
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_2/split_dim?
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*>
_output_shapes,
*:?:?:?:?:?:?*
	num_split2	
split_2a
ConstConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
Constu
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_1/perm}
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_1i
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_1u
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_2/perm}
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_2i
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_2u
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_3/perm}
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_3i
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_3u
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_4/perm
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_4i
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_4u
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_5/perm
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_5i
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_5u
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       2
transpose_6/perm
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0* 
_output_shapes
:
??2
transpose_6i
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:??2
	Reshape_6i
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_7i
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_8i
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:?2
	Reshape_9k

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:?2

Reshape_10k

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:?2

Reshape_11k

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:?2

Reshape_12\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
concat/axis?
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:??2
concati
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    2
CudnnRNN/input_c?
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*S
_output_shapesA
?:???????????????????:??????????: :*
rnn_modegru2

CudnnRNN}
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slicey
transpose_7/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_7/perm?
transpose_7	TransposeCudnnRNN:output:0transpose_7/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_7|
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:??????????*
squeeze_dims
 2	
Squeezef
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @2	
runtimek
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_7:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1i

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_de47ae65-65eb-4600-9177-9a240f882059*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?	
?
while_cond_239807
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_239807___redundant_placeholder04
0while_while_cond_239807___redundant_placeholder14
0while_while_cond_239807___redundant_placeholder24
0while_while_cond_239807___redundant_placeholder34
0while_while_cond_239807___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?	
?
$__inference_while_cond_1217816_22955
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1217816___redundant_placeholder05
1while_while_cond_1217816___redundant_placeholder15
1while_while_cond_1217816___redundant_placeholder25
1while_while_cond_1217816___redundant_placeholder35
1while_while_cond_1217816___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
,__inference_rnn__decoder_layer_call_fn_25939
input_1
input_2
input_3
input_4
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3input_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_258832
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
'
_output_shapes
:?????????
!
_user_specified_name	input_1:VR
-
_output_shapes
:???????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_4
??
?

:__inference___backward_gpu_gru_with_fallback_239974_240110
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4?v
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:???????????????????2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:???????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2&
$gradients/transpose_7_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:??????????2 
gradients/Squeeze_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:???????????????????2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_like?
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*W
_output_shapesE
C:???????????????????:??????????: :??*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:??????????2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_1?
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_2?
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_3?
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_4?
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_5?
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_6?
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_7?
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_8?
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_9?
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_10?
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_11?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_1?
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_2?
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_3?
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_4?
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_5?
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_6?
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_7?
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_8?
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_9?
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_10?
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_11?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_12_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_6_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_1_grad/concat?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity_1u

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_2w

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	?2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??????????:???????????????????:??????????: :???????????????????::??????????: ::???????????????????:??????????: :??::??????????: ::::::: : : *<
api_implements*(gru_34a5f96a-8519-4744-b1cc-477cff1740bc*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_240109*
go_backwards( *

time_major( :. *
(
_output_shapes
:??????????:;7
5
_output_shapes#
!:???????????????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :;7
5
_output_shapes#
!:???????????????????: 

_output_shapes
::2.
,
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:???????????????????:2
.
,
_output_shapes
:??????????:

_output_shapes
: :"

_output_shapes

:??: 

_output_shapes
::.*
(
_output_shapes
:??????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_22638
inputs_0
inputs_1
inputs_2
inputs_3P
<coverage_attention_dense_2_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_2_biasadd_readvariableop_resource:	?P
<coverage_attention_dense_3_tensordot_readvariableop_resource:
??I
:coverage_attention_dense_3_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_4_tensordot_readvariableop_resource:	?I
:coverage_attention_dense_4_biasadd_readvariableop_resource:	?O
<coverage_attention_dense_5_tensordot_readvariableop_resource:	?H
:coverage_attention_dense_5_biasadd_readvariableop_resource:5
"embedding_embedding_lookup_1218334:	l?4
 gru_read_readvariableop_resource:
??6
"gru_read_1_readvariableop_resource:
??5
"gru_read_2_readvariableop_resource:	?;
'dense_tensordot_readvariableop_resource:
??4
%dense_biasadd_readvariableop_resource:	?9
&dense_1_matmul_readvariableop_resource:	?l5
'dense_1_biasadd_readvariableop_resource:l
identity

identity_1

identity_2??1coverage_attention/dense_2/BiasAdd/ReadVariableOp?3coverage_attention/dense_2/Tensordot/ReadVariableOp?1coverage_attention/dense_3/BiasAdd/ReadVariableOp?3coverage_attention/dense_3/Tensordot/ReadVariableOp?1coverage_attention/dense_4/BiasAdd/ReadVariableOp?3coverage_attention/dense_4/Tensordot/ReadVariableOp?1coverage_attention/dense_5/BiasAdd/ReadVariableOp?3coverage_attention/dense_5/Tensordot/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/Tensordot/ReadVariableOp?dense_1/BiasAdd/ReadVariableOp?dense_1/MatMul/ReadVariableOp?embedding/embedding_lookup?gru/Read/ReadVariableOp?gru/Read_1/ReadVariableOp?gru/Read_2/ReadVariableOp?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
!coverage_attention/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!coverage_attention/ExpandDims/dim?
coverage_attention/ExpandDims
ExpandDimsinputs_2*coverage_attention/ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/ExpandDims?
#coverage_attention/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????2%
#coverage_attention/ExpandDims_1/dim?
coverage_attention/ExpandDims_1
ExpandDimsinputs_3,coverage_attention/ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:??????????2!
coverage_attention/ExpandDims_1?
3coverage_attention/dense_2/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_2/Tensordot/ReadVariableOp?
)coverage_attention/dense_2/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_2/Tensordot/axes?
)coverage_attention/dense_2/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_2/Tensordot/free?
*coverage_attention/dense_2/Tensordot/ShapeShapeinputs_1*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/Shape?
2coverage_attention/dense_2/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/GatherV2/axis?
-coverage_attention/dense_2/Tensordot/GatherV2GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/free:output:0;coverage_attention/dense_2/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/GatherV2?
4coverage_attention/dense_2/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_2/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_2/Tensordot/GatherV2_1GatherV23coverage_attention/dense_2/Tensordot/Shape:output:02coverage_attention/dense_2/Tensordot/axes:output:0=coverage_attention/dense_2/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_2/Tensordot/GatherV2_1?
*coverage_attention/dense_2/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_2/Tensordot/Const?
)coverage_attention/dense_2/Tensordot/ProdProd6coverage_attention/dense_2/Tensordot/GatherV2:output:03coverage_attention/dense_2/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_2/Tensordot/Prod?
,coverage_attention/dense_2/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_2/Tensordot/Const_1?
+coverage_attention/dense_2/Tensordot/Prod_1Prod8coverage_attention/dense_2/Tensordot/GatherV2_1:output:05coverage_attention/dense_2/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_2/Tensordot/Prod_1?
0coverage_attention/dense_2/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_2/Tensordot/concat/axis?
+coverage_attention/dense_2/Tensordot/concatConcatV22coverage_attention/dense_2/Tensordot/free:output:02coverage_attention/dense_2/Tensordot/axes:output:09coverage_attention/dense_2/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_2/Tensordot/concat?
*coverage_attention/dense_2/Tensordot/stackPack2coverage_attention/dense_2/Tensordot/Prod:output:04coverage_attention/dense_2/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_2/Tensordot/stack?
.coverage_attention/dense_2/Tensordot/transpose	Transposeinputs_14coverage_attention/dense_2/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_2/Tensordot/transpose?
,coverage_attention/dense_2/Tensordot/ReshapeReshape2coverage_attention/dense_2/Tensordot/transpose:y:03coverage_attention/dense_2/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_2/Tensordot/Reshape?
+coverage_attention/dense_2/Tensordot/MatMulMatMul5coverage_attention/dense_2/Tensordot/Reshape:output:0;coverage_attention/dense_2/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_2/Tensordot/MatMul?
,coverage_attention/dense_2/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_2/Tensordot/Const_2?
2coverage_attention/dense_2/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_2/Tensordot/concat_1/axis?
-coverage_attention/dense_2/Tensordot/concat_1ConcatV26coverage_attention/dense_2/Tensordot/GatherV2:output:05coverage_attention/dense_2/Tensordot/Const_2:output:0;coverage_attention/dense_2/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_2/Tensordot/concat_1?
$coverage_attention/dense_2/TensordotReshape5coverage_attention/dense_2/Tensordot/MatMul:product:06coverage_attention/dense_2/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_2/Tensordot?
1coverage_attention/dense_2/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_2/BiasAdd/ReadVariableOp?
"coverage_attention/dense_2/BiasAddBiasAdd-coverage_attention/dense_2/Tensordot:output:09coverage_attention/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_2/BiasAdd?
3coverage_attention/dense_3/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype025
3coverage_attention/dense_3/Tensordot/ReadVariableOp?
)coverage_attention/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_3/Tensordot/axes?
)coverage_attention/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_3/Tensordot/free?
*coverage_attention/dense_3/Tensordot/ShapeShape&coverage_attention/ExpandDims:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/Shape?
2coverage_attention/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/GatherV2/axis?
-coverage_attention/dense_3/Tensordot/GatherV2GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/free:output:0;coverage_attention/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/GatherV2?
4coverage_attention/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_3/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_3/Tensordot/GatherV2_1GatherV23coverage_attention/dense_3/Tensordot/Shape:output:02coverage_attention/dense_3/Tensordot/axes:output:0=coverage_attention/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_3/Tensordot/GatherV2_1?
*coverage_attention/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_3/Tensordot/Const?
)coverage_attention/dense_3/Tensordot/ProdProd6coverage_attention/dense_3/Tensordot/GatherV2:output:03coverage_attention/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_3/Tensordot/Prod?
,coverage_attention/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_3/Tensordot/Const_1?
+coverage_attention/dense_3/Tensordot/Prod_1Prod8coverage_attention/dense_3/Tensordot/GatherV2_1:output:05coverage_attention/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_3/Tensordot/Prod_1?
0coverage_attention/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_3/Tensordot/concat/axis?
+coverage_attention/dense_3/Tensordot/concatConcatV22coverage_attention/dense_3/Tensordot/free:output:02coverage_attention/dense_3/Tensordot/axes:output:09coverage_attention/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_3/Tensordot/concat?
*coverage_attention/dense_3/Tensordot/stackPack2coverage_attention/dense_3/Tensordot/Prod:output:04coverage_attention/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_3/Tensordot/stack?
.coverage_attention/dense_3/Tensordot/transpose	Transpose&coverage_attention/ExpandDims:output:04coverage_attention/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_3/Tensordot/transpose?
,coverage_attention/dense_3/Tensordot/ReshapeReshape2coverage_attention/dense_3/Tensordot/transpose:y:03coverage_attention/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_3/Tensordot/Reshape?
+coverage_attention/dense_3/Tensordot/MatMulMatMul5coverage_attention/dense_3/Tensordot/Reshape:output:0;coverage_attention/dense_3/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_3/Tensordot/MatMul?
,coverage_attention/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_3/Tensordot/Const_2?
2coverage_attention/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_3/Tensordot/concat_1/axis?
-coverage_attention/dense_3/Tensordot/concat_1ConcatV26coverage_attention/dense_3/Tensordot/GatherV2:output:05coverage_attention/dense_3/Tensordot/Const_2:output:0;coverage_attention/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_3/Tensordot/concat_1?
$coverage_attention/dense_3/TensordotReshape5coverage_attention/dense_3/Tensordot/MatMul:product:06coverage_attention/dense_3/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_3/Tensordot?
1coverage_attention/dense_3/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_3_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_3/BiasAdd/ReadVariableOp?
"coverage_attention/dense_3/BiasAddBiasAdd-coverage_attention/dense_3/Tensordot:output:09coverage_attention/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_3/BiasAdd?
coverage_attention/addAddV2+coverage_attention/dense_2/BiasAdd:output:0+coverage_attention/dense_3/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add?
3coverage_attention/dense_4/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_4/Tensordot/ReadVariableOp?
)coverage_attention/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_4/Tensordot/axes?
)coverage_attention/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_4/Tensordot/free?
*coverage_attention/dense_4/Tensordot/ShapeShape(coverage_attention/ExpandDims_1:output:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/Shape?
2coverage_attention/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/GatherV2/axis?
-coverage_attention/dense_4/Tensordot/GatherV2GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/free:output:0;coverage_attention/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/GatherV2?
4coverage_attention/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_4/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_4/Tensordot/GatherV2_1GatherV23coverage_attention/dense_4/Tensordot/Shape:output:02coverage_attention/dense_4/Tensordot/axes:output:0=coverage_attention/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_4/Tensordot/GatherV2_1?
*coverage_attention/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_4/Tensordot/Const?
)coverage_attention/dense_4/Tensordot/ProdProd6coverage_attention/dense_4/Tensordot/GatherV2:output:03coverage_attention/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_4/Tensordot/Prod?
,coverage_attention/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_4/Tensordot/Const_1?
+coverage_attention/dense_4/Tensordot/Prod_1Prod8coverage_attention/dense_4/Tensordot/GatherV2_1:output:05coverage_attention/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_4/Tensordot/Prod_1?
0coverage_attention/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_4/Tensordot/concat/axis?
+coverage_attention/dense_4/Tensordot/concatConcatV22coverage_attention/dense_4/Tensordot/free:output:02coverage_attention/dense_4/Tensordot/axes:output:09coverage_attention/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_4/Tensordot/concat?
*coverage_attention/dense_4/Tensordot/stackPack2coverage_attention/dense_4/Tensordot/Prod:output:04coverage_attention/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_4/Tensordot/stack?
.coverage_attention/dense_4/Tensordot/transpose	Transpose(coverage_attention/ExpandDims_1:output:04coverage_attention/dense_4/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????20
.coverage_attention/dense_4/Tensordot/transpose?
,coverage_attention/dense_4/Tensordot/ReshapeReshape2coverage_attention/dense_4/Tensordot/transpose:y:03coverage_attention/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_4/Tensordot/Reshape?
+coverage_attention/dense_4/Tensordot/MatMulMatMul5coverage_attention/dense_4/Tensordot/Reshape:output:0;coverage_attention/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2-
+coverage_attention/dense_4/Tensordot/MatMul?
,coverage_attention/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2.
,coverage_attention/dense_4/Tensordot/Const_2?
2coverage_attention/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_4/Tensordot/concat_1/axis?
-coverage_attention/dense_4/Tensordot/concat_1ConcatV26coverage_attention/dense_4/Tensordot/GatherV2:output:05coverage_attention/dense_4/Tensordot/Const_2:output:0;coverage_attention/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_4/Tensordot/concat_1?
$coverage_attention/dense_4/TensordotReshape5coverage_attention/dense_4/Tensordot/MatMul:product:06coverage_attention/dense_4/Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2&
$coverage_attention/dense_4/Tensordot?
1coverage_attention/dense_4/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype023
1coverage_attention/dense_4/BiasAdd/ReadVariableOp?
"coverage_attention/dense_4/BiasAddBiasAdd-coverage_attention/dense_4/Tensordot:output:09coverage_attention/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2$
"coverage_attention/dense_4/BiasAdd?
coverage_attention/add_1AddV2coverage_attention/add:z:0+coverage_attention/dense_4/BiasAdd:output:0*
T0*-
_output_shapes
:???????????2
coverage_attention/add_1?
coverage_attention/TanhTanhcoverage_attention/add_1:z:0*
T0*-
_output_shapes
:???????????2
coverage_attention/Tanh?
3coverage_attention/dense_5/Tensordot/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype025
3coverage_attention/dense_5/Tensordot/ReadVariableOp?
)coverage_attention/dense_5/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2+
)coverage_attention/dense_5/Tensordot/axes?
)coverage_attention/dense_5/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2+
)coverage_attention/dense_5/Tensordot/free?
*coverage_attention/dense_5/Tensordot/ShapeShapecoverage_attention/Tanh:y:0*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/Shape?
2coverage_attention/dense_5/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/GatherV2/axis?
-coverage_attention/dense_5/Tensordot/GatherV2GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/free:output:0;coverage_attention/dense_5/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/GatherV2?
4coverage_attention/dense_5/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 26
4coverage_attention/dense_5/Tensordot/GatherV2_1/axis?
/coverage_attention/dense_5/Tensordot/GatherV2_1GatherV23coverage_attention/dense_5/Tensordot/Shape:output:02coverage_attention/dense_5/Tensordot/axes:output:0=coverage_attention/dense_5/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:21
/coverage_attention/dense_5/Tensordot/GatherV2_1?
*coverage_attention/dense_5/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2,
*coverage_attention/dense_5/Tensordot/Const?
)coverage_attention/dense_5/Tensordot/ProdProd6coverage_attention/dense_5/Tensordot/GatherV2:output:03coverage_attention/dense_5/Tensordot/Const:output:0*
T0*
_output_shapes
: 2+
)coverage_attention/dense_5/Tensordot/Prod?
,coverage_attention/dense_5/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2.
,coverage_attention/dense_5/Tensordot/Const_1?
+coverage_attention/dense_5/Tensordot/Prod_1Prod8coverage_attention/dense_5/Tensordot/GatherV2_1:output:05coverage_attention/dense_5/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2-
+coverage_attention/dense_5/Tensordot/Prod_1?
0coverage_attention/dense_5/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 22
0coverage_attention/dense_5/Tensordot/concat/axis?
+coverage_attention/dense_5/Tensordot/concatConcatV22coverage_attention/dense_5/Tensordot/free:output:02coverage_attention/dense_5/Tensordot/axes:output:09coverage_attention/dense_5/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2-
+coverage_attention/dense_5/Tensordot/concat?
*coverage_attention/dense_5/Tensordot/stackPack2coverage_attention/dense_5/Tensordot/Prod:output:04coverage_attention/dense_5/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2,
*coverage_attention/dense_5/Tensordot/stack?
.coverage_attention/dense_5/Tensordot/transpose	Transposecoverage_attention/Tanh:y:04coverage_attention/dense_5/Tensordot/concat:output:0*
T0*-
_output_shapes
:???????????20
.coverage_attention/dense_5/Tensordot/transpose?
,coverage_attention/dense_5/Tensordot/ReshapeReshape2coverage_attention/dense_5/Tensordot/transpose:y:03coverage_attention/dense_5/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2.
,coverage_attention/dense_5/Tensordot/Reshape?
+coverage_attention/dense_5/Tensordot/MatMulMatMul5coverage_attention/dense_5/Tensordot/Reshape:output:0;coverage_attention/dense_5/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2-
+coverage_attention/dense_5/Tensordot/MatMul?
,coverage_attention/dense_5/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:2.
,coverage_attention/dense_5/Tensordot/Const_2?
2coverage_attention/dense_5/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 24
2coverage_attention/dense_5/Tensordot/concat_1/axis?
-coverage_attention/dense_5/Tensordot/concat_1ConcatV26coverage_attention/dense_5/Tensordot/GatherV2:output:05coverage_attention/dense_5/Tensordot/Const_2:output:0;coverage_attention/dense_5/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2/
-coverage_attention/dense_5/Tensordot/concat_1?
$coverage_attention/dense_5/TensordotReshape5coverage_attention/dense_5/Tensordot/MatMul:product:06coverage_attention/dense_5/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2&
$coverage_attention/dense_5/Tensordot?
1coverage_attention/dense_5/BiasAdd/ReadVariableOpReadVariableOp:coverage_attention_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype023
1coverage_attention/dense_5/BiasAdd/ReadVariableOp?
"coverage_attention/dense_5/BiasAddBiasAdd-coverage_attention/dense_5/Tensordot:output:09coverage_attention/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2$
"coverage_attention/dense_5/BiasAddt
coverage_attention/RankConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rankx
coverage_attention/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Rank_1v
coverage_attention/Sub/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub/y?
coverage_attention/SubSub"coverage_attention/Rank_1:output:0!coverage_attention/Sub/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub?
coverage_attention/range/startConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/range/start?
coverage_attention/range/limitConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/limit?
coverage_attention/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :2 
coverage_attention/range/delta?
coverage_attention/rangeRange'coverage_attention/range/start:output:0'coverage_attention/range/limit:output:0'coverage_attention/range/delta:output:0*
_output_shapes
:2
coverage_attention/range?
 coverage_attention/range_1/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/start?
 coverage_attention/range_1/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_1/delta?
coverage_attention/range_1Range)coverage_attention/range_1/start:output:0coverage_attention/Sub:z:0)coverage_attention/range_1/delta:output:0*
_output_shapes
: 2
coverage_attention/range_1?
"coverage_attention/concat/values_1Packcoverage_attention/Sub:z:0*
N*
T0*
_output_shapes
:2$
"coverage_attention/concat/values_1?
"coverage_attention/concat/values_3Const*
_output_shapes
:*
dtype0*
valueB:2$
"coverage_attention/concat/values_3?
coverage_attention/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2 
coverage_attention/concat/axis?
coverage_attention/concatConcatV2!coverage_attention/range:output:0+coverage_attention/concat/values_1:output:0#coverage_attention/range_1:output:0+coverage_attention/concat/values_3:output:0'coverage_attention/concat/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat?
coverage_attention/transpose	Transpose+coverage_attention/dense_5/BiasAdd:output:0"coverage_attention/concat:output:0*
T0*,
_output_shapes
:??????????2
coverage_attention/transpose?
coverage_attention/SoftmaxSoftmax coverage_attention/transpose:y:0*
T0*,
_output_shapes
:??????????2
coverage_attention/Softmaxz
coverage_attention/Sub_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
coverage_attention/Sub_1/y?
coverage_attention/Sub_1Sub"coverage_attention/Rank_1:output:0#coverage_attention/Sub_1/y:output:0*
T0*
_output_shapes
: 2
coverage_attention/Sub_1?
 coverage_attention/range_2/startConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/range_2/start?
 coverage_attention/range_2/limitConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/limit?
 coverage_attention/range_2/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_2/delta?
coverage_attention/range_2Range)coverage_attention/range_2/start:output:0)coverage_attention/range_2/limit:output:0)coverage_attention/range_2/delta:output:0*
_output_shapes
:2
coverage_attention/range_2?
 coverage_attention/range_3/startConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/start?
 coverage_attention/range_3/deltaConst*
_output_shapes
: *
dtype0*
value	B :2"
 coverage_attention/range_3/delta?
coverage_attention/range_3Range)coverage_attention/range_3/start:output:0coverage_attention/Sub_1:z:0)coverage_attention/range_3/delta:output:0*
_output_shapes
: 2
coverage_attention/range_3?
$coverage_attention/concat_1/values_1Packcoverage_attention/Sub_1:z:0*
N*
T0*
_output_shapes
:2&
$coverage_attention/concat_1/values_1?
$coverage_attention/concat_1/values_3Const*
_output_shapes
:*
dtype0*
valueB:2&
$coverage_attention/concat_1/values_3?
 coverage_attention/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2"
 coverage_attention/concat_1/axis?
coverage_attention/concat_1ConcatV2#coverage_attention/range_2:output:0-coverage_attention/concat_1/values_1:output:0#coverage_attention/range_3:output:0-coverage_attention/concat_1/values_3:output:0)coverage_attention/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
coverage_attention/concat_1?
coverage_attention/transpose_1	Transpose$coverage_attention/Softmax:softmax:0$coverage_attention/concat_1:output:0*
T0*,
_output_shapes
:??????????2 
coverage_attention/transpose_1?
coverage_attention/mulMul"coverage_attention/transpose_1:y:0inputs_1*
T0*-
_output_shapes
:???????????2
coverage_attention/mul?
(coverage_attention/Sum/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :2*
(coverage_attention/Sum/reduction_indices?
coverage_attention/SumSumcoverage_attention/mul:z:01coverage_attention/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????2
coverage_attention/Sum?
embedding/embedding_lookupResourceGather"embedding_embedding_lookup_1218334inputs_0*
Tindices0*5
_class+
)'loc:@embedding/embedding_lookup/1218334*,
_output_shapes
:??????????*
dtype02
embedding/embedding_lookup?
#embedding/embedding_lookup/IdentityIdentity#embedding/embedding_lookup:output:0*
T0*5
_class+
)'loc:@embedding/embedding_lookup/1218334*,
_output_shapes
:??????????2%
#embedding/embedding_lookup/Identity?
%embedding/embedding_lookup/Identity_1Identity,embedding/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2'
%embedding/embedding_lookup/Identity_1b
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B :2
ExpandDims/dim?

ExpandDims
ExpandDimscoverage_attention/Sum:output:0ExpandDims/dim:output:0*
T0*,
_output_shapes
:??????????2

ExpandDimse
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
concat/axis?
concatConcatV2ExpandDims:output:0.embedding/embedding_lookup/Identity_1:output:0concat/axis:output:0*
N*
T0*,
_output_shapes
:??????????2
concatU
	gru/ShapeShapeconcat:output:0*
T0*
_output_shapes
:2
	gru/Shape|
gru/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
gru/strided_slice/stack?
gru/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_1?
gru/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
gru/strided_slice/stack_2?
gru/strided_sliceStridedSlicegru/Shape:output:0 gru/strided_slice/stack:output:0"gru/strided_slice/stack_1:output:0"gru/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
gru/strided_slicee
gru/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/mul/y|
gru/zeros/mulMulgru/strided_slice:output:0gru/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/mulg
gru/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/Less/yw
gru/zeros/LessLessgru/zeros/mul:z:0gru/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
gru/zeros/Lessk
gru/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
gru/zeros/packed/1?
gru/zeros/packedPackgru/strided_slice:output:0gru/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
gru/zeros/packedg
gru/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
gru/zeros/Const?
	gru/zerosFillgru/zeros/packed:output:0gru/zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
	gru/zeros?
gru/Read/ReadVariableOpReadVariableOp gru_read_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read/ReadVariableOpt
gru/IdentityIdentitygru/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity?
gru/Read_1/ReadVariableOpReadVariableOp"gru_read_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
gru/Read_1/ReadVariableOpz
gru/Identity_1Identity!gru/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2
gru/Identity_1?
gru/Read_2/ReadVariableOpReadVariableOp"gru_read_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
gru/Read_2/ReadVariableOpy
gru/Identity_2Identity!gru/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2
gru/Identity_2?
gru/PartitionedCallPartitionedCallconcat:output:0gru/zeros:output:0gru/Identity:output:0gru/Identity_1:output:0gru/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:??????????:??????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_223902
gru/PartitionedCall?
dense/Tensordot/ReadVariableOpReadVariableOp'dense_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02 
dense/Tensordot/ReadVariableOpv
dense/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
dense/Tensordot/axes}
dense/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
dense/Tensordot/freez
dense/Tensordot/ShapeShapegru/PartitionedCall:output:1*
T0*
_output_shapes
:2
dense/Tensordot/Shape?
dense/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/GatherV2/axis?
dense/Tensordot/GatherV2GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/free:output:0&dense/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2?
dense/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2!
dense/Tensordot/GatherV2_1/axis?
dense/Tensordot/GatherV2_1GatherV2dense/Tensordot/Shape:output:0dense/Tensordot/axes:output:0(dense/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
dense/Tensordot/GatherV2_1x
dense/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const?
dense/Tensordot/ProdProd!dense/Tensordot/GatherV2:output:0dense/Tensordot/Const:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod|
dense/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
dense/Tensordot/Const_1?
dense/Tensordot/Prod_1Prod#dense/Tensordot/GatherV2_1:output:0 dense/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
dense/Tensordot/Prod_1|
dense/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat/axis?
dense/Tensordot/concatConcatV2dense/Tensordot/free:output:0dense/Tensordot/axes:output:0$dense/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat?
dense/Tensordot/stackPackdense/Tensordot/Prod:output:0dense/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/stack?
dense/Tensordot/transpose	Transposegru/PartitionedCall:output:1dense/Tensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot/transpose?
dense/Tensordot/ReshapeReshapedense/Tensordot/transpose:y:0dense/Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
dense/Tensordot/Reshape?
dense/Tensordot/MatMulMatMul dense/Tensordot/Reshape:output:0&dense/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
dense/Tensordot/MatMul}
dense/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
dense/Tensordot/Const_2?
dense/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
dense/Tensordot/concat_1/axis?
dense/Tensordot/concat_1ConcatV2!dense/Tensordot/GatherV2:output:0 dense/Tensordot/Const_2:output:0&dense/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
dense/Tensordot/concat_1?
dense/TensordotReshape dense/Tensordot/MatMul:product:0!dense/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
dense/Tensordot?
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
dense/BiasAdd/ReadVariableOp?
dense/BiasAddBiasAdddense/Tensordot:output:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2
dense/BiasAddo
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
Reshape/shape?
ReshapeReshapedense/BiasAdd:output:0Reshape/shape:output:0*
T0*(
_output_shapes
:??????????2	
Reshape?
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	?l*
dtype02
dense_1/MatMul/ReadVariableOp?
dense_1/MatMulMatMulReshape:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/MatMul?
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:l*
dtype02 
dense_1/BiasAdd/ReadVariableOp?
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????l2
dense_1/BiasAdds
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB"?????   2
Reshape_1/shape?
	Reshape_1Reshape"coverage_attention/transpose_1:y:0Reshape_1/shape:output:0*
T0*(
_output_shapes
:??????????2
	Reshape_1?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_2_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_3_tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/mul?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp<coverage_attention_dense_5_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype02R
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2C
Arnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/mul?
IdentityIdentitydense_1/BiasAdd:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identitygru/PartitionedCall:output:22^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2IdentityReshape_1:output:02^coverage_attention/dense_2/BiasAdd/ReadVariableOp4^coverage_attention/dense_2/Tensordot/ReadVariableOp2^coverage_attention/dense_3/BiasAdd/ReadVariableOp4^coverage_attention/dense_3/Tensordot/ReadVariableOp2^coverage_attention/dense_4/BiasAdd/ReadVariableOp4^coverage_attention/dense_4/Tensordot/ReadVariableOp2^coverage_attention/dense_5/BiasAdd/ReadVariableOp4^coverage_attention/dense_5/Tensordot/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/Tensordot/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^embedding/embedding_lookup^gru/Read/ReadVariableOp^gru/Read_1/ReadVariableOp^gru/Read_2/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 2f
1coverage_attention/dense_2/BiasAdd/ReadVariableOp1coverage_attention/dense_2/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_2/Tensordot/ReadVariableOp3coverage_attention/dense_2/Tensordot/ReadVariableOp2f
1coverage_attention/dense_3/BiasAdd/ReadVariableOp1coverage_attention/dense_3/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_3/Tensordot/ReadVariableOp3coverage_attention/dense_3/Tensordot/ReadVariableOp2f
1coverage_attention/dense_4/BiasAdd/ReadVariableOp1coverage_attention/dense_4/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_4/Tensordot/ReadVariableOp3coverage_attention/dense_4/Tensordot/ReadVariableOp2f
1coverage_attention/dense_5/BiasAdd/ReadVariableOp1coverage_attention/dense_5/BiasAdd/ReadVariableOp2j
3coverage_attention/dense_5/Tensordot/ReadVariableOp3coverage_attention/dense_5/Tensordot/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2@
dense/Tensordot/ReadVariableOpdense/Tensordot/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp28
embedding/embedding_lookupembedding/embedding_lookup22
gru/Read/ReadVariableOpgru/Read/ReadVariableOp26
gru/Read_1/ReadVariableOpgru/Read_1/ReadVariableOp26
gru/Read_2/ReadVariableOpgru/Read_2/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_4/kernel/Regularizer/Square/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_5/kernel/Regularizer/Square/ReadVariableOp:Q M
'
_output_shapes
:?????????
"
_user_specified_name
inputs/0:WS
-
_output_shapes
:???????????
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:??????????
"
_user_specified_name
inputs/3
?	
?
$__inference_while_cond_1219613_19130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1219613___redundant_placeholder05
1while_while_cond_1219613___redundant_placeholder15
1while_while_cond_1219613___redundant_placeholder25
1while_while_cond_1219613___redundant_placeholder35
1while_while_cond_1219613___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?
?
)__inference_restored_function_body_239619

inputs
inputs_1
inputs_2
inputs_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
	unknown_7:	l?
	unknown_8:
??
	unknown_9:
??

unknown_10:	?

unknown_11:
??

unknown_12:	?

unknown_13:	?l

unknown_14:l
identity

identity_1

identity_2??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*O
_output_shapes=
;:?????????l:??????????:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *P
fKRI
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_232802
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????l2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1?

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*?
_input_shapesv
t:?????????:???????????:??????????:??????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs:UQ
-
_output_shapes
:???????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?/
?
B__inference_dense_3_layer_call_and_return_conditional_losses_19036

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:??????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????2	
BiasAdd?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_3/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
?__inference_gru_layer_call_and_return_conditional_losses_240113

inputs0
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????:???????????????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_gru_2398972
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs
?/
?
B__inference_dense_2_layer_call_and_return_conditional_losses_20050

inputs5
!tensordot_readvariableop_resource:
??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp?Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Tensordot/ReadVariableOpj
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:2
Tensordot/axesq
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       2
Tensordot/freeX
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:2
Tensordot/Shapet
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2/axis?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2x
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/GatherV2_1/axis?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:2
Tensordot/GatherV2_1l
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const?
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: 2
Tensordot/Prodp
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: 2
Tensordot/Const_1?
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: 2
Tensordot/Prod_1p
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat/axis?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat?
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:2
Tensordot/stack?
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*-
_output_shapes
:???????????2
Tensordot/transpose?
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:??????????????????2
Tensordot/Reshape?
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
Tensordot/MatMulq
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?2
Tensordot/Const_2t
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 2
Tensordot/concat_1/axis?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:2
Tensordot/concat_1?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*-
_output_shapes
:???????????2
	Tensordot?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*-
_output_shapes
:???????????2	
BiasAdd?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource* 
_output_shapes
:
??*
dtype02R
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp?
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SquareSquareXrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2C
Arnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/SumSumErnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square:y:0Irnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum?
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *??82B
@rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x?
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mulMulIrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul/x:output:0Grnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2@
>rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/mul?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOpQ^rnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp*
T0*-
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2?
Prnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOpPrnn__decoder/coverage_attention/dense_2/kernel/Regularizer/Square/ReadVariableOp:U Q
-
_output_shapes
:???????????
 
_user_specified_nameinputs
?E
?
__inference_standard_gru_241852

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *
bodyR
while_body_241763*
condR
while_cond_241762*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_195ecfd5-1cf0-49c6-b6ea-18b23c1c7cc2*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?
?
D__inference_embedding_layer_call_and_return_conditional_losses_22646

inputs+
embedding_lookup_1216006:	l?
identity??embedding_lookup?
embedding_lookupResourceGatherembedding_lookup_1216006inputs*
Tindices0*+
_class!
loc:@embedding_lookup/1216006*,
_output_shapes
:??????????*
dtype02
embedding_lookup?
embedding_lookup/IdentityIdentityembedding_lookup:output:0*
T0*+
_class!
loc:@embedding_lookup/1216006*,
_output_shapes
:??????????2
embedding_lookup/Identity?
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:??????????2
embedding_lookup/Identity_1?
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*(
_input_shapes
:?????????: 2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
>__inference_gru_layer_call_and_return_conditional_losses_25380

inputs0
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputszeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *V
_output_shapesD
B:??????????:??????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference_standard_gru_253492
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*,
_output_shapes
:??????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:??????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
$__inference_while_cond_1219014_25477
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice5
1while_while_cond_1219014___redundant_placeholder05
1while_while_cond_1219014___redundant_placeholder15
1while_while_cond_1219014___redundant_placeholder25
1while_while_cond_1219014___redundant_placeholder35
1while_while_cond_1219014___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
??
?

:__inference___backward_gpu_gru_with_fallback_241548_241684
placeholder
placeholder_1
placeholder_2
placeholder_3/
+gradients_strided_slice_grad_shape_cudnnrnnA
=gradients_transpose_7_grad_invertpermutation_transpose_7_perm)
%gradients_squeeze_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4?v
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_0?
gradients/grad_ys_1Identityplaceholder_1*
T0*5
_output_shapes#
!:???????????????????2
gradients/grad_ys_1x
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:??????????2
gradients/grad_ys_2f
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: 2
gradients/grad_ys_3?
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:2$
"gradients/strided_slice_grad/Shape?
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
?????????25
3gradients/strided_slice_grad/StridedSliceGrad/begin?
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 23
1gradients/strided_slice_grad/StridedSliceGrad/end?
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:27
5gradients/strided_slice_grad/StridedSliceGrad/strides?
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/grad_ys_0:output:0*
Index0*
T0*5
_output_shapes#
!:???????????????????*
shrink_axis_mask2/
-gradients/strided_slice_grad/StridedSliceGrad?
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:2.
,gradients/transpose_7_grad/InvertPermutation?
$gradients/transpose_7_grad/transpose	Transposegradients/grad_ys_1:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2&
$gradients/transpose_7_grad/transpose?
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:2
gradients/Squeeze_grad/Shape?
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:??????????2 
gradients/Squeeze_grad/Reshape?
gradients/AddNAddN6gradients/strided_slice_grad/StridedSliceGrad:output:0(gradients/transpose_7_grad/transpose:y:0*
N*
T0*@
_class6
42loc:@gradients/strided_slice_grad/StridedSliceGrad*5
_output_shapes#
!:???????????????????2
gradients/AddNy
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: 2
gradients/zeros_like?
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:2
gradients/zeros_like_1?
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnngradients/AddN:sum:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*W
_output_shapesE
C:???????????????????:??????????: :??*
rnn_modegru2*
(gradients/CudnnRNN_grad/CudnnRNNBackprop?
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:2,
*gradients/transpose_grad/InvertPermutation?
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:???????????????????2$
"gradients/transpose_grad/transpose?
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:2!
gradients/ExpandDims_grad/Shape?
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:??????????2#
!gradients/ExpandDims_grad/Reshapez
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :2
gradients/concat_grad/Rank?
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: 2
gradients/concat_grad/mod?
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape?
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_1?
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_2?
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_3?
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_4?
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:??2
gradients/concat_grad/Shape_5?
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_6?
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_7?
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_8?
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:?2
gradients/concat_grad/Shape_9?
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_10?
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/concat_grad/Shape_11?
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::2$
"gradients/concat_grad/ConcatOffset?
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice?
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_1?
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_2?
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_3?
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_4?
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:??2
gradients/concat_grad/Slice_5?
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_6?
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_7?
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_8?
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:?2
gradients/concat_grad/Slice_9?
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_10?
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:?2 
gradients/concat_grad/Slice_11?
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_1_grad/Shape?
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_1_grad/Reshape?
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_2_grad/Shape?
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_2_grad/Reshape?
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   ?  2 
gradients/Reshape_3_grad/Shape?
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_3_grad/Reshape?
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_4_grad/Shape?
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_4_grad/Reshape?
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_5_grad/Shape?
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_5_grad/Reshape?
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2 
gradients/Reshape_6_grad/Shape?
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
??2"
 gradients/Reshape_6_grad/Reshape?
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_7_grad/Shape?
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_7_grad/Reshape?
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_8_grad/Shape?
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_8_grad/Reshape?
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2 
gradients/Reshape_9_grad/Shape?
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:?2"
 gradients/Reshape_9_grad/Reshape?
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_10_grad/Shape?
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_10_grad/Reshape?
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_11_grad/Shape?
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_11_grad/Reshape?
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:?2!
gradients/Reshape_12_grad/Shape?
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:?2#
!gradients/Reshape_12_grad/Reshape?
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:2.
,gradients/transpose_1_grad/InvertPermutation?
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_1_grad/transpose?
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:2.
,gradients/transpose_2_grad/InvertPermutation?
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_2_grad/transpose?
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:2.
,gradients/transpose_3_grad/InvertPermutation?
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_3_grad/transpose?
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:2.
,gradients/transpose_4_grad/InvertPermutation?
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_4_grad/transpose?
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:2.
,gradients/transpose_5_grad/InvertPermutation?
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_5_grad/transpose?
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:2.
,gradients/transpose_6_grad/InvertPermutation?
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
??2&
$gradients/transpose_6_grad/transpose?
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:?2
gradients/split_2_grad/concat?
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_grad/concat?
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
??2
gradients/split_1_grad/concat?
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      2
gradients/Reshape_grad/Shape?
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	?2 
gradients/Reshape_grad/Reshape?
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:??????????2

Identity_1u

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_2w

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
??2

Identity_3w

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	?2

Identity_4"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:??????????:???????????????????:??????????: :???????????????????::??????????: ::???????????????????:??????????: :??::??????????: ::::::: : : *<
api_implements*(gru_de47ae65-65eb-4600-9177-9a240f882059*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_241683*
go_backwards( *

time_major( :. *
(
_output_shapes
:??????????:;7
5
_output_shapes#
!:???????????????????:.*
(
_output_shapes
:??????????:

_output_shapes
: :;7
5
_output_shapes#
!:???????????????????: 

_output_shapes
::2.
,
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:???????????????????:2
.
,
_output_shapes
:??????????:

_output_shapes
: :"

_output_shapes

:??: 

_output_shapes
::.*
(
_output_shapes
:??????????:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
$__inference_gru_layer_call_fn_242094
inputs_0
unknown:
??
	unknown_0:
??
	unknown_1:	?
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *I
_output_shapes7
5:???????????????????:??????????*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_gru_layer_call_and_return_conditional_losses_2405202
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*5
_output_shapes#
!:???????????????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?C
?
__inference_standard_gru_22390

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:??????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *0
body(R&
$__inference_while_body_1218416_20352*0
cond(R&
$__inference_while_cond_1218415_22313*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:??????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:??????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityl

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:??????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*b
_input_shapesQ
O:??????????:??????????:
??:
??:	?:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?E
?
__inference_standard_gru_240304

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Z
unstackUnpackbias*
T0*"
_output_shapes
:?:?*	
num2	
unstacku
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm?
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
	transposeK
ShapeShapetranspose:y:0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice?
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
TensorArrayV2/element_shape?
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2?
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  27
5TensorArrayUnstack/TensorListFromTensor/element_shape?
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2?
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_1o
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:??????????2
MatMult
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:??????????2	
BiasAddd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim?
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
splitk
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:??????????2

MatMul_1z
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:??????????2
	BiasAdd_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split_1/split_dim?
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2	
split_1h
addAddV2split:output:0split_1:output:0*
T0*(
_output_shapes
:??????????2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:??????????2	
Sigmoidl
add_1AddV2split:output:1split_1:output:1*
T0*(
_output_shapes
:??????????2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:??????????2
	Sigmoid_1e
mulMulSigmoid_1:y:0split_1:output:2*
T0*(
_output_shapes
:??????????2
mulc
add_2AddV2split:output:2mul:z:0*
T0*(
_output_shapes
:??????????2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:??????????2
Tanh]
mul_1MulSigmoid:y:0init_h*
T0*(
_output_shapes
:??????????2
mul_1S
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
sub/xa
subSubsub/x:output:0Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
sub[
mul_2Mulsub:z:0Tanh:y:0*
T0*(
_output_shapes
:??????????2
mul_2`
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*(
_output_shapes
:??????????2
add_3?
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   2
TensorArrayV2_1/element_shape?
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
?????????2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter?
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*Z
_output_shapesH
F: : : : :??????????: : :
??:?:
??:?* 
_read_only_resource_inputs
 *
bodyR
while_body_240215*
condR
while_cond_240214*Y
output_shapesH
F: : : : :??????????: : :
??:?:
??:?*
parallel_iterations 2
while?
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"????   22
0TensorArrayV2Stack/TensorListStack/element_shape?
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:???????????????????*
element_dtype02$
"TensorArrayV2Stack/TensorListStack?
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
?????????2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2?
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:??????????*
shrink_axis_mask2
strided_slice_2y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm?
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:???????????????????2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  ??2	
runtimem
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:??????????2

Identityu

Identity_1Identitytranspose_1:y:0*
T0*5
_output_shapes#
!:???????????????????2

Identity_1g

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:??????????2

Identity_2W

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: 2

Identity_3"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*k
_input_shapesZ
X:???????????????????:??????????:
??:
??:	?*<
api_implements*(gru_25916f5e-4f05-435a-9edc-7eb61a2c5449*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:???????????????????
 
_user_specified_nameinputs:PL
(
_output_shapes
:??????????
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
??
 
_user_specified_namekernel:RN
 
_output_shapes
:
??
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	?

_user_specified_namebias
?
?
2__inference_coverage_attention_layer_call_fn_22940
input_1
input_2
input_3
unknown:
??
	unknown_0:	?
	unknown_1:
??
	unknown_2:	?
	unknown_3:	?
	unknown_4:	?
	unknown_5:	?
	unknown_6:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1input_2input_3unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2*
Tout
2*
_collective_manager_ids
 *@
_output_shapes.
,:??????????:??????????**
_read_only_resource_inputs

	
*0
config_proto 

CPU

GPU2*0J 8? *V
fQRO
M__inference_coverage_attention_layer_call_and_return_conditional_losses_229232
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*,
_output_shapes
:??????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*d
_input_shapesS
Q:???????????:??????????:??????????: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:V R
-
_output_shapes
:???????????
!
_user_specified_name	input_1:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_2:QM
(
_output_shapes
:??????????
!
_user_specified_name	input_3
?	
?
while_cond_241762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_241762___redundant_placeholder04
0while_while_cond_241762___redundant_placeholder14
0while_while_cond_241762___redundant_placeholder24
0while_while_cond_241762___redundant_placeholder34
0while_while_cond_241762___redundant_placeholder4
while_identity
n

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2: : : : :??????????: :::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
?1
?
while_body_240215
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?
?
?
?__inference_gru_layer_call_and_return_conditional_losses_241687
inputs_00
read_readvariableop_resource:
??2
read_1_readvariableop_resource:
??1
read_2_readvariableop_resource:	?

identity_3

identity_4??Read/ReadVariableOp?Read_1/ReadVariableOp?Read_2/ReadVariableOpF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :?2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :?2
zeros/packed/1?
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:??????????2
zeros?
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read/ReadVariableOph
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity?
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
??*
dtype02
Read_1/ReadVariableOpn

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
??2

Identity_1?
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	?*
dtype02
Read_2/ReadVariableOpm

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	?2

Identity_2?
PartitionedCallPartitionedCallinputs_0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *_
_output_shapesM
K:??????????:???????????????????:??????????: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference_standard_gru_2414712
PartitionedCall?

Identity_3IdentityPartitionedCall:output:1^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*5
_output_shapes#
!:???????????????????2

Identity_3?

Identity_4IdentityPartitionedCall:output:2^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity_4"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':???????????????????: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:_ [
5
_output_shapes#
!:???????????????????
"
_user_specified_name
inputs/0
?1
?
$__inference_while_body_1219015_24875
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstack?
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"?????  29
7while/TensorArrayV2Read/TensorListGetItem/element_shape?
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:??????????*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem?
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul?
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAddp
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split/split_dim?
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split?
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:??????????2
while/MatMul_1?
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:??????????2
while/BiasAdd_1t
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
while/split_1/split_dim?
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*P
_output_shapes>
<:??????????:??????????:??????????*
	num_split2
while/split_1?
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*(
_output_shapes
:??????????2
	while/addk
while/SigmoidSigmoidwhile/add:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid?
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*(
_output_shapes
:??????????2
while/add_1q
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*(
_output_shapes
:??????????2
while/Sigmoid_1}
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*(
_output_shapes
:??????????2
	while/mul{
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*(
_output_shapes
:??????????2
while/add_2d

while/TanhTanhwhile/add_2:z:0*
T0*(
_output_shapes
:??????????2

while/Tanh|
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*(
_output_shapes
:??????????2
while/mul_1_
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??2
while/sub/xy
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*(
_output_shapes
:??????????2
	while/subs
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*(
_output_shapes
:??????????2
while/mul_2x
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*(
_output_shapes
:??????????2
while/add_3?
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/add_3:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem`
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_4/yo
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: 2
while/add_4`
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_5/yv
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: 2
while/add_5^
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: 2
while/Identityq
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: 2
while/Identity_1b
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: 2
while/Identity_2?
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: 2
while/Identity_3t
while/Identity_4Identitywhile/add_3:z:0*
T0*(
_output_shapes
:??????????2
while/Identity_4"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"?
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*Y
_input_shapesH
F: : : : :??????????: : :
??:?:
??:?: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:??????????:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
??:!

_output_shapes	
:?:&	"
 
_output_shapes
:
??:!


_output_shapes	
:?"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
=
inputs/01
serving_default_inputs/0:0?????????
C
inputs/17
serving_default_inputs/1:0???????????
>
inputs/22
serving_default_inputs/2:0??????????
>
inputs/32
serving_default_inputs/3:0??????????<
output_10
StatefulPartitionedCall:0?????????l=
output_21
StatefulPartitionedCall:1??????????=
output_31
StatefulPartitionedCall:2??????????tensorflow/serving/predict:??
?

	embedding
gru
fc1
fc2
	attention

signatures
#_self_saveable_object_factories
	variables
	regularization_losses

trainable_variables
	keras_api
?_default_save_signature
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"name": "rnn__decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "RNN_Decoder", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 1]}, "int32", "inputs/0"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 160, 128]}, "float32", "inputs/1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256]}, "float32", "inputs/2"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 160]}, "float32", "inputs/3"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "RNN_Decoder"}}
?

embeddings
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "embedding", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "stateful": false, "must_restore_from_config": false, "class_name": "Embedding", "config": {"name": "embedding", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, null]}, "dtype": "float32", "input_dim": 108, "output_dim": 256, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}, "shared_object_id": 0}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": null}, "shared_object_id": 1, "build_input_shape": {"class_name": "TensorShape", "items": [8, 1]}}
?
cell

state_spec
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?

_tf_keras_rnn_layer?
{"name": "gru", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRU", "config": {"name": "gru", "trainable": true, "dtype": "float32", "return_sequences": true, "return_state": true, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "shared_object_id": 6, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 384]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 7}], "build_input_shape": {"class_name": "TensorShape", "items": [8, 1, 384]}}
?

kernel
bias
#_self_saveable_object_factories
	variables
regularization_losses
trainable_variables
	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 8}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 9}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 10, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 11}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 1, 256]}}
?

 kernel
!bias
#"_self_saveable_object_factories
#	variables
$regularization_losses
%trainable_variables
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 108, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 12}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 13}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 15}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 256]}}
?
'W1
(W2
)Uf
*V
#+_self_saveable_object_factories
,	variables
-regularization_losses
.trainable_variables
/	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_model?{"name": "coverage_attention", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "CoverageAttention", "config": {"layer was saved without config": true}, "is_graph_network": false, "save_spec": [{"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 160, 128]}, "float32", "input_1"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 256]}, "float32", "input_2"]}, {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 160]}, "float32", "input_3"]}], "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "CoverageAttention"}}
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
0
01
12
23
4
5
 6
!7
38
49
510
611
712
813
914
:15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
0
01
12
23
4
5
 6
!7
38
49
510
611
712
813
914
:15"
trackable_list_wrapper
?
;metrics
	variables

<layers
=layer_regularization_losses
	regularization_losses
>layer_metrics

trainable_variables
?non_trainable_variables
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2	l?2!rnn__decoder/embedding/embeddings
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
?
@metrics
	variables

Alayers
Blayer_regularization_losses
regularization_losses
Clayer_metrics
trainable_variables
Dnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

0kernel
1recurrent_kernel
2bias
#E_self_saveable_object_factories
F	variables
Gregularization_losses
Htrainable_variables
I	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "gru_cell", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "GRUCell", "config": {"name": "gru_cell", "trainable": true, "dtype": "float32", "units": 256, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "recurrent_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 3}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 4}, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.0, "recurrent_dropout": 0.0, "implementation": 2, "reset_after": true}, "shared_object_id": 5}
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
?
Jmetrics
	variables

Klayers
Llayer_regularization_losses
regularization_losses
Mlayer_metrics
trainable_variables

Nstates
Onon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
-:+
??2rnn__decoder/dense/kernel
&:$?2rnn__decoder/dense/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
?
Pmetrics
	variables

Qlayers
Rlayer_regularization_losses
regularization_losses
Slayer_metrics
trainable_variables
Tnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
.:,	?l2rnn__decoder/dense_1/kernel
':%l2rnn__decoder/dense_1/bias
 "
trackable_dict_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
?
Umetrics
#	variables

Vlayers
Wlayer_regularization_losses
$regularization_losses
Xlayer_metrics
%trainable_variables
Ynon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?	

3kernel
4bias
#Z_self_saveable_object_factories
[	variables
\regularization_losses
]trainable_variables
^	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 16}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 17}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 18}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 19, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 20}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 160, 128]}}
?	

5kernel
6bias
#__self_saveable_object_factories
`	variables
aregularization_losses
btrainable_variables
c	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_3", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 23}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 24, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 25}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 1, 256]}}
?	

7kernel
8bias
#d_self_saveable_object_factories
e	variables
fregularization_losses
gtrainable_variables
h	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_4", "trainable": true, "dtype": "float32", "units": 256, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 26}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 27}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 28}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1}}, "shared_object_id": 30}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 160, 1]}}
?	

9kernel
:bias
#i_self_saveable_object_factories
j	variables
kregularization_losses
ltrainable_variables
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "dense_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "dense_5", "trainable": true, "dtype": "float32", "units": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 31}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 32}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 9.999999747378752e-05}, "shared_object_id": 33}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "shared_object_id": 34, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 256}}, "shared_object_id": 35}, "build_input_shape": {"class_name": "TensorShape", "items": [8, 160, 256]}}
 "
trackable_dict_wrapper
X
30
41
52
63
74
85
96
:7"
trackable_list_wrapper
@
?0
?1
?2
?3"
trackable_list_wrapper
X
30
41
52
63
74
85
96
:7"
trackable_list_wrapper
?
nmetrics
,	variables

olayers
player_regularization_losses
-regularization_losses
qlayer_metrics
.trainable_variables
rnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
4:2
??2 rnn__decoder/gru/gru_cell/kernel
>:<
??2*rnn__decoder/gru/gru_cell/recurrent_kernel
1:/	?2rnn__decoder/gru/gru_cell/bias
B:@
??2.rnn__decoder/coverage_attention/dense_2/kernel
;:9?2,rnn__decoder/coverage_attention/dense_2/bias
B:@
??2.rnn__decoder/coverage_attention/dense_3/kernel
;:9?2,rnn__decoder/coverage_attention/dense_3/bias
A:?	?2.rnn__decoder/coverage_attention/dense_4/kernel
;:9?2,rnn__decoder/coverage_attention/dense_4/bias
A:?	?2.rnn__decoder/coverage_attention/dense_5/kernel
::82,rnn__decoder/coverage_attention/dense_5/bias
 "
trackable_list_wrapper
C
0
1
2
3
4"
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
trackable_dict_wrapper
5
00
11
22"
trackable_list_wrapper
 "
trackable_list_wrapper
5
00
11
22"
trackable_list_wrapper
?
smetrics
F	variables

tlayers
ulayer_regularization_losses
Gregularization_losses
vlayer_metrics
Htrainable_variables
wnon_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
'
0"
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
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
?
xmetrics
[	variables

ylayers
zlayer_regularization_losses
\regularization_losses
{layer_metrics
]trainable_variables
|non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
50
61"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
50
61"
trackable_list_wrapper
?
}metrics
`	variables

~layers
layer_regularization_losses
aregularization_losses
?layer_metrics
btrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
70
81"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
?
?metrics
e	variables
?layers
 ?layer_regularization_losses
fregularization_losses
?layer_metrics
gtrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
.
90
:1"
trackable_list_wrapper
(
?0"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
?
?metrics
j	variables
?layers
 ?layer_regularization_losses
kregularization_losses
?layer_metrics
ltrainable_variables
?non_trainable_variables
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
<
'0
(1
)2
*3"
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
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
?0"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
?2?
!__inference__wrapped_model_239658?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
?2?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_23280
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_22638
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_25802
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_21961?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
,__inference_rnn__decoder_layer_call_fn_26031
,__inference_rnn__decoder_layer_call_fn_26059
,__inference_rnn__decoder_layer_call_fn_25911
,__inference_rnn__decoder_layer_call_fn_25939?
???
FullArgSpec!
args?
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
?__inference_gru_layer_call_and_return_conditional_losses_241687
?__inference_gru_layer_call_and_return_conditional_losses_242068?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
$__inference_gru_layer_call_fn_242081
$__inference_gru_layer_call_fn_242094?
???
FullArgSpecB
args:?7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults?

 
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
M__inference_coverage_attention_layer_call_and_return_conditional_losses_22923?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *y?v
t?q
'?$
input_1???????????
"?
input_2??????????
"?
input_3??????????
?2?
2__inference_coverage_attention_layer_call_fn_22940?
???
FullArgSpec
args?
jx
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *y?v
t?q
'?$
input_1???????????
"?
input_2??????????
"?
input_3??????????
?B?
$__inference_signature_wrapper_239728inputs/0inputs/1inputs/2inputs/3"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec3
args+?(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
__inference_loss_fn_0_242153?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_1_242164?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_2_242175?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference_loss_fn_3_242186?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? ?
!__inference__wrapped_model_239658?3456789:012 !???
???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
? "???
.
output_1"?
output_1?????????l
/
output_2#? 
output_2??????????
/
output_3#? 
output_3???????????
M__inference_coverage_attention_layer_call_and_return_conditional_losses_22923?3456789:???
y?v
t?q
'?$
input_1???????????
"?
input_2??????????
"?
input_3??????????
? "Q?N
G?D
?
0/0??????????
"?
0/1??????????
? ?
2__inference_coverage_attention_layer_call_fn_22940?3456789:???
y?v
t?q
'?$
input_1???????????
"?
input_2??????????
"?
input_3??????????
? "C?@
?
0??????????
 ?
1???????????
?__inference_gru_layer_call_and_return_conditional_losses_241687?012P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
?__inference_gru_layer_call_and_return_conditional_losses_242068?012P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "Z?W
P?M
+?(
0/0???????????????????
?
0/1??????????
? ?
$__inference_gru_layer_call_fn_242081?012P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p 

 
? "L?I
)?&
0???????????????????
?
1???????????
$__inference_gru_layer_call_fn_242094?012P?M
F?C
5?2
0?-
inputs/0???????????????????

 
p

 
? "L?I
)?&
0???????????????????
?
1??????????;
__inference_loss_fn_0_2421533?

? 
? "? ;
__inference_loss_fn_1_2421645?

? 
? "? ;
__inference_loss_fn_2_2421757?

? 
? "? ;
__inference_loss_fn_3_2421869?

? 
? "? ?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_21961?3456789:012 !???
???
???
!?
input_1?????????
'?$
input_2???????????
"?
input_3??????????
"?
input_4??????????
p
? "l?i
b?_
?
0/0?????????l
?
0/1??????????
?
0/2??????????
? ?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_22638?3456789:012 !???
???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
p
? "l?i
b?_
?
0/0?????????l
?
0/1??????????
?
0/2??????????
? ?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_23280?3456789:012 !???
???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
p 
? "l?i
b?_
?
0/0?????????l
?
0/1??????????
?
0/2??????????
? ?
G__inference_rnn__decoder_layer_call_and_return_conditional_losses_25802?3456789:012 !???
???
???
!?
input_1?????????
'?$
input_2???????????
"?
input_3??????????
"?
input_4??????????
p 
? "l?i
b?_
?
0/0?????????l
?
0/1??????????
?
0/2??????????
? ?
,__inference_rnn__decoder_layer_call_fn_25911?3456789:012 !???
???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
p
? "\?Y
?
0?????????l
?
1??????????
?
2???????????
,__inference_rnn__decoder_layer_call_fn_25939?3456789:012 !???
???
???
!?
input_1?????????
'?$
input_2???????????
"?
input_3??????????
"?
input_4??????????
p
? "\?Y
?
0?????????l
?
1??????????
?
2???????????
,__inference_rnn__decoder_layer_call_fn_26031?3456789:012 !???
???
???
!?
input_1?????????
'?$
input_2???????????
"?
input_3??????????
"?
input_4??????????
p 
? "\?Y
?
0?????????l
?
1??????????
?
2???????????
,__inference_rnn__decoder_layer_call_fn_26059?3456789:012 !???
???
???
"?
inputs/0?????????
(?%
inputs/1???????????
#? 
inputs/2??????????
#? 
inputs/3??????????
p 
? "\?Y
?
0?????????l
?
1??????????
?
2???????????
$__inference_signature_wrapper_239728?3456789:012 !???
? 
???
.
inputs/0"?
inputs/0?????????
4
inputs/1(?%
inputs/1???????????
/
inputs/2#? 
inputs/2??????????
/
inputs/3#? 
inputs/3??????????"???
.
output_1"?
output_1?????????l
/
output_2#? 
output_2??????????
/
output_3#? 
output_3??????????