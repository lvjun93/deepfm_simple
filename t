data.shape: (12, 6)
col: c1 12
col: c2 12
col: c3 2
col: c4 2
col: c5 8
feature_index:     c1  c2  c3  c4  c5
0    1   2   3   5   7
1    1   2   4   6   8
2    1   2   3   5   9
3    1   2   4   6  10
4    1   2   3   5  11
5    1   2   4   6  12
6    1   2   3   5   7
7    1   2   4   6  13
8    1   2   3   5  14
9    1   2   4   6   7
10   1   2   3   5   8
11   1   2   4   6   9
feature_value:           c1        c2   c3   c4   c5
0  -1.365182  0.010318  1.0  1.0  1.0
1  -1.158347 -0.764528  1.0  1.0  1.0
2  -0.537841 -0.812164  1.0  1.0  1.0
3  -1.191441 -0.787345  1.0  1.0  1.0
4   0.372235 -0.812490  1.0  1.0  1.0
5   0.806589 -0.392006  1.0  1.0  1.0
6   0.454969 -0.393077  1.0  1.0  1.0
7   1.207849 -0.321692  1.0  1.0  1.0
8   1.613247  1.188420  1.0  1.0  1.0
9  -0.848094  0.269221  1.0  1.0  1.0
10  0.099212  0.263959  1.0  1.0  1.0
11  0.546804  2.551385  1.0  1.0  1.0
train_data['xi']: [[1, 2, 3, 5, 7], [1, 2, 4, 6, 8], [1, 2, 3, 5, 9], [1, 2, 4, 6, 10], [1, 2, 3, 5, 11], [1, 2, 4, 6, 12], [1, 2, 3, 5, 7], [1, 2, 4, 6, 13], [1, 2, 3, 5, 14], [1, 2, 4, 6, 7], [1, 2, 3, 5, 8], [1, 2, 4, 6, 9]]
train_data['xv']: [[-1.3651822128772686, 0.010318089337322728, 1.0, 1.0, 1.0], [-1.1583468692768542, -0.7645281231021762, 1.0, 1.0, 1.0], [-0.5378408384756111, -0.812164401667417, 1.0, 1.0, 1.0], [-1.1914405242529205, -0.7873451089252144, 1.0, 1.0, 1.0], [0.37223467336621174, -0.8124903586077461, 1.0, 1.0, 1.0], [0.8065888949270817, -0.39200590558318626, 1.0, 1.0, 1.0], [0.4549688108063775, -0.3930769069585535, 1.0, 1.0, 1.0], [1.207849461511886, -0.32169233702647704, 1.0, 1.0, 1.0], [1.6132467349686979, 1.188419602241128, 1.0, 1.0, 1.0], [-0.8480938538762327, 0.2692210305130209, 1.0, 1.0, 1.0], [0.09921201981366458, 0.2639591541905651, 1.0, 1.0, 1.0], [0.5468037033649615, 2.551385265588733, 1.0, 1.0, 1.0]]
args.feature_sizes: 15 特征加和维度
args.field_size: 5 每个样本特征维度
('embedding_part:', <tf.Tensor 'Mul:0' shape=(?, 5, 256) dtype=float32>)
('first_order:', <tf.Tensor 'Sum:0' shape=(?, 5) dtype=float32>)
('sum_square_second_order:', <tf.Tensor 'Square:0' shape=(?, 256) dtype=float32>)
('square_sum_second_order:', <tf.Tensor 'Sum_2:0' shape=(?, 256) dtype=float32>)
('second_order:', <tf.Tensor 'mul:0' shape=(?, 256) dtype=float32>)
('fm_part:', <tf.Tensor 'concat:0' shape=(?, 261) dtype=float32>)
('deep_embedding:', <tf.Tensor 'Reshape_2:0' shape=(?, 1280) dtype=float32>)
('output:', <tf.Tensor 'Add_3:0' shape=(?, 1) dtype=float32>)
('trainable_params:', [<tf.Variable 'feature_weight:0' shape=(15, 256) dtype=float32_ref>, <tf.Variable 'feature_first:0' shape=(15, 1) dtype=float32_ref>, <tf.Variable 'Variable:0' shape=(1280, 512) dtype=float32_ref>, <tf.Variable 'Variable_1:0' shape=(1, 512) dtype=float32_ref>, <tf.Variable 'Variable_2:0' shape=(512, 256) dtype=float32_ref>, <tf.Variable 'Variable_3:0' shape=(1, 256) dtype=float32_ref>, <tf.Variable 'Variable_4:0' shape=(256, 128) dtype=float32_ref>, <tf.Variable 'Variable_5:0' shape=(1, 128) dtype=float32_ref>, <tf.Variable 'Variable_6:0' shape=(389, 1) dtype=float32_ref>, <tf.Variable 'Variable_7:0' shape=() dtype=float32_ref>])
time all:6
epoch 0:
the times of training is 0, and the loss is 7.20156
epoch 1:
the times of training is 0, and the loss is 7.19745
epoch 2:
the times of training is 0, and the loss is 7.19333
