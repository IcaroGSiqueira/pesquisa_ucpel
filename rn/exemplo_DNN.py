from keras.datasets import cifar10, fashion_mnist
from keras.models import Sequential, load_model
from keras.layers.core import Flatten
from keras.layers.core import Dense
from keras.layers import Dense,Dropout,Flatten,Conv2D,MaxPooling2D 

import matplotlib.pyplot as plt
import numpy as np 
from keras.utils import np_utils


def build_model_DNN(largura, altura, prof, num_classes):
	model = Sequential()
	input_shape = (largura, altura, prof)

	model.add(Conv2D(64, (3,3), activation='relu', input_shape=input_shape))
	model.add(Conv2D(64, (3,3),  activation='relu'))
	model.add(Conv2D(64, (3,3),  activation='relu'))
	model.add(Flatten())

	model.add(Dense(num_classes, activation='softmax'))
	print(model.summary())
	return model





### CIPHAR10
(imgs_tr, y_tr), (imgs_te, y_te) = cifar10.load_data()
nomes = ["aviao","carro","passaro","gato","veado","cachorro","sapo","cavalo","navio","onibus"]
num_classes = len(nomes) #10 para CIPHAR10
largura = 32
altura = 32
canais = 3

# para que as redes possam convergir mais rapido, vamos escalar as imagens para [0..1]
imgs_tr = imgs_tr.astype("float32") / 255.0
imgs_te = imgs_te.astype("float32") / 255.0

# one-hot encode the training and testing labels
y_tr = np_utils.to_categorical(y_tr, 10)
y_te = np_utils.to_categorical(y_te, 10)


# vamos dar um nome ao modelo com base no dataset e no numero de epocas
num_epocas = 5
nome_modelo = "modelo_CIPHAR_DNN_%dep.h5" % (num_epocas)

try:
	# se jah temos esse modelo treinado
	model = load_model(nome_modelo)
except:
	# eh sempre bom criar uma funcao separada para montar o modelo
	model = build_model_DNN(largura, altura, canais, num_classes)

	# aqui a gente prepara todo o ambiente de treino, definindo
	# optimizador do backprop -- SGD por exemplo
	# funcao perda -- categorical_crossentropy para classificacao
	# metricas de desempenho -- vamos usar accuracy
	model.compile(optimizer = 'sgd', loss = 'categorical_crossentropy',  metrics=['accuracy'])

	# treinamento de fato -- demora
	model.fit(imgs_tr, y_tr, epochs = num_epocas)

	# ja que demora, podemos salvar (formato h5)
	model.save(nome_modelo)



# avalia o modelo com as imagens de teste
test_acc = model.evaluate(imgs_te, y_te)
print('loss/accuracy no teste', test_acc)

for img, classe in zip(imgs_te[:10], y_te):
	#plt.imshow(img.reshape(largura, altura), cmap = 'gray')
	plt.imshow(img)
	img = np.expand_dims(img, axis=0)

	classe_idx = np.argmax(classe)
	y_pred = model.predict_classes(img)[0]

	if y_pred == classe_idx:
		cor = 'lightgreen'
	else:
		cor = 'lightcoral'

	plt.text(0, 0, 'Pred: '+nomes[y_pred], fontsize = 12 , bbox = dict(fc = cor, ec = 'k'))
	plt.text(0, 3, 'Real: '+nomes[classe_idx], fontsize = 12 , bbox = dict(fc = 'gold', ec = 'k'))

	plt.show()