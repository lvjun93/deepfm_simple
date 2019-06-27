#encoding=utf8
import pandas as pd


def load_data():
    train_data = {}
    file_path = 'tiny_train_input.csv'
    data = pd.read_csv(file_path,sep='\t', header=None)
    #print 'data:',data
    print 'data.shape:',data.shape
    data.columns = ['c' + str(i) for i in range(data.shape[1])]
    #print 'data:',data
    label = data.c0.values
    #print 'data.c0.values:',data.c0.values
    label = label.reshape(len(label), 1)
    #print 'label:',label
    #print 'label.shape:',label.shape
    train_data['y_train'] = label
    co_feature = pd.DataFrame()
    ca_feature = pd.DataFrame()
    ca_col = []
    co_col = []
    feat_dict = {}
    cnt = 1
    for i in range(1, data.shape[1]):
        target = data.iloc[:, i]
        #print target
        col = target.name
        l = len(set(target))  # 列里面不同元素的数量
        print 'col:',col,l
        if l > 10:
            # 正态分布
            target = (target - target.mean()) / target.std()
            #print "target", target
            co_feature = pd.concat([co_feature, target], axis=1)  # 所有连续变量正态分布转换后的df
            #print 'co_feature:',co_feature
            feat_dict[col] = cnt  # 列名映射为索引
            cnt += 1
            co_col.append(col)
            #print 'co_col:',co_col,'============'
        else:
            us = target.unique()
            #print(us),"==========="
            feat_dict[col] = dict(zip(us, range(cnt, len(us) + cnt)))  # 类别型变量里的类别映射为索引
            ca_feature = pd.concat([ca_feature, target], axis=1)
            cnt += len(us)
            ca_col.append(col)
            #print "ca_col:",ca_col
    #print "feat_dict:",feat_dict
    '''feat_dict: {'c3': {0.0: 4, 1.0: 3}, 'c2': 2, 'c1': 1, 'c4': {0.0: 5, 1.0: 6}}'''
    feat_dim = cnt
    #print "feat_dim = cnt = ",cnt
    feature_value = pd.concat([co_feature, ca_feature], axis=1)
    #print "feature_value:",feature_value
    feature_index = feature_value.copy()
    #print "feature_index:",feature_index

    for i in feature_index.columns:
        if i in co_col:
            # 连续型变量
            feature_index[i] = feat_dict[i]  # 连续型变量元素转化为对应列的索引值
            #print "i:",i,"feat_dict[i]:",feat_dict[i]
        else:
            # 类别型变量
            #print(feat_dict[i])
            feature_index[i] = feature_index[i].map(feat_dict[i])  # 类别型变量元素转化为对应元素的索引值
            feature_value[i] = 1.

    print "feature_index:",feature_index
    print "feature_value:",feature_value
    # feature_index是特征的一个序号，主要用于通过embedding_lookup选择我们的embedding
    train_data['xi'] = feature_index.values.tolist()
    # feature_value是对应的特征值，如果是离散特征的话，就是1，如果不是离散特征的话，就保留原来的特征值。
    train_data['xv'] = feature_value.values.tolist()
    print "train_data['xi']:",train_data['xi']
    print "train_data['xv']:",train_data['xv']
    train_data['feat_dim'] = feat_dim

    return train_data


if __name__ == '__main__':
    load_data()
