# Week summary


## Week 2: Programming Exercise 1: Linear Regression

Linear regression on population data. You calculate a cost function and gradient descent function to calculate the coefficients. You see how the cost function varies with the fit coefficients. You end up making a plot of your prediction.

## Week 3: Programming Exercise 2: Logistic Regression

Binary logistic regression on exam data. Calculate a sigmoid function (used for cost), cost function, predict function, and regulatized cost function. fminunc is used to calculate fit variables $\theta$ (by minimizing the cost function). You draw a boundary line for the two predictors and make a prediction on whether or not people will get admitted or not. The probability of accceptance is the sigmoid function $h(z)$ evaluated at $ h( \theta * x )$. The probability is from 0 to 1. If it's higher than 0.5, you say they are admitted with a probability of x, where x is the predict value. This is how you test your prediction against actual data.

There was a bonus regularization exercise. They create a nonlinear (polynomial) model with some number of fit coefficients. You write the cost function and gradient discent for them. The $\lambda$ regulatization parameter is an input parameter. You can vary $\lambda$ to see overfitting (small $\lambda$) and underfitting (high $\lambda$ ).

## Week 4: Programming Exercise 3: Mult-class Classification and Neural Networks

## Week 5: Programming Exercise 4: Neural Networks Learning

## Week 6: Programming Exercise 5: Regularized Linear Regression and Bias vs. Variance

First, looking at high bias (underfitting) and high variance (overfitting) trade off. You plot some data (single predicter and response). The data is clearly non-linear. You plot a straight line to it (you are underfitting). It's crap. You examine bias-variance tradeoff. To do this, you plot a learning curve. The learning curve plots the training and validation set errors as a function of training set size. When computing the fit parameters, you do it with the n-subset of parameters and calculate the RSS errors. For the cross validation set, however, you use the fit parameters and calculate the errors over the entire validation data set. The error for the training and validation converge quickly and are high, suggesting large bias (more data doesn't help).

Next, you do this for polynomial regresion. You start with a high degree polynomial to fit the model (you are overfitting). You create a learning curve and see that there is a gap between train and validation curve, suggesting large variance.

Finally, you vary the regularization parameter. You plot the training and validation error vs the regularization parameter $\lambda$ to do this, you find the fit parameters with $\lambda$ on the training set. Then, you measure the cost this those fit parameters (set $\lambda = 0$ in the fit) for the training and validation set. $\lambda$ should be selected based on the minimum of the validation curve.

## Week 7: Programming Exercise 6: Support Vector Machines

Use SVM to classify data first using a linear kernal. You can do regularization with SVM using $C$ which is like $1/\lambda$. Next using the Gaussian Kernel, you can fit non-linear boundaries. For this, you have $\sigma$ and $C$ as inputs.

Next, you do a spam classifier. You parse an email and turn the words in indicies of a vocabulary list. Your feature vector is zeros/ones of words that are in the vocabulary list.

## Week 8: Programming Exercise 7: K-means Clustering and Principal Component Analysis

## Week 9: Programming Exercise 8: Amonmaly Dection and Recommmender Systems

