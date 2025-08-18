<p>New to machine learning? Dive into logistic regression in machine learning with us, a foundational technique in predictive modeling that bridges the gap between simple linear models and complex neural networks in deep learning. In this article, we will talk about the  logistic regression using Python, explore its role as a linear model, discuss its application alongside neural networks, and understand how regularization techniques enhance its predictive power. Whether you’re a beginner or looking to deepen your understanding, join us as we explore the intersection of regression with Python, deep learning, linear models, neural networks, and regularization.</p>



<p><strong>This article was published as a part of the&nbsp;<a href="https://www.analyticsvidhya.com/datahack/blogathon" target="_blank" rel="noopener noreferrer">Data Science Blogathon</a></strong>.</p>



<div class="wp-block-yoast-seo-table-of-contents yoast-table-of-contents"><div class="accordion" id="accordionContent"><div class="accordion-item border-0 rounded-4 bg-light"><h2 class="accordion-header"><button class="accordion-button rounded-3 shadow-none text-blue bg-light border-0 py-4 fs-20 fw-light" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Table of contents</button></h2><div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionContent" style=""><div class="accordion-body pt-0"><ol><li><a href="#h-what-is-logistic-regression-in-machine-learning" data-level="2">What is Logistic Regression in Machine Learning?</a></li><li><a href="#h-types-of-logistic-regression" data-level="2">Types of Logistic Regression</a><ul><li><a href="#h-binary-logistic-regression" data-level="3">Binary Logistic Regression</a></li><li><a href="#h-multinomial-logistic-regression" data-level="3">Multinomial Logistic Regression</a></li><li><a href="#h-ordinal-logistic-regression" data-level="3">Ordinal Logistic Regression</a></li></ul></li><li><a href="#h-why-do-we-use-logistic-regression-rather-than-linear-regression" data-level="2">Why do we use Logistic Regression rather than Linear Regression?</a></li><li><a href="#h-how-does-logistic-regression-work" data-level="2">How does Logistic Regression work?</a><ul><li><a href="#h-logistic-function" data-level="3">Logistic Function</a></li></ul></li><li><a href="#h-differences-between-linear-and-logistic-regression" data-level="2">Differences Between Linear and Logistic Regression</a></li><li><a href="#h-key-properties-of-the-logistic-regression-equation" data-level="2">Key properties of the logistic regression equation</a></li><li><a href="#h-cost-function-in-logistic-regression" data-level="2">Cost Function in Logistic Regression</a></li><li><a href="#h-logistic-regression-example" data-level="2">Logistic Regression Example</a></li><li><a href="#h-what-is-the-use-of-maximum-likelihood-estimator" data-level="2">What is the use of Maximum Likelihood Estimator?</a></li><li><a href="#h-gradient-descent-optimization" data-level="2">Gradient Descent Optimization</a></li><li><a href="#h-derivation-of-cost-function" data-level="2">Derivation of Cost Function</a><ul><li><a href="#h-step-1-use-chain-rule-and-break-the-partial-derivative-of-log-likelihood" data-level="3">Step-1: Use chain rule and break the partial derivative of log-likelihood</a></li><li><a href="#h-step-2-find-derivative-of-log-likelihood-w-r-t-p" data-level="3">Step-2: Find derivative of log-likelihood w.r.t p</a></li><li><a href="#h-step-3-find-derivative-of-nbsp-p-nbsp-w-r-t-nbsp-z" data-level="3">Step-3: Find derivative of&nbsp;‘p’&nbsp;w.r.t&nbsp;‘z’</a></li><li><a href="#h-step-4-find-derivate-of-z-w-r-t-nbsp-θ" data-level="3">Step-4: Find derivate of z w.r.t&nbsp;θ</a></li><li><a href="#h-step-5-put-all-the-derivatives-in-equation-1" data-level="3">Step-5: Put all the derivatives in equation 1</a></li></ul></li><li><a href="#faq" data-level="2">Frequently Asked Questions</a></li></ol></div></div>



<h2 class="wp-block-heading" id="h-what-is-logistic-regression-in-machine-learning">What is Logistic Regression in Machine Learning?</h2>



<p>Logistic regression is the appropriate regression analysis to conduct when the dependent variable is dichotomous (binary). Like all regression analyses, it is a predictive analysis. It is used to describe data and to explain the relationship between one dependent binary variable and one or more nominal, ordinal, interval or ratio-level independent variables.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img fetchpriority="high" decoding="async" width="872" height="473" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/Untitled-1-Recovered_9-copy-scaled-1-1.webp" alt="logisitic regression model" class="wp-image-197371" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/Untitled-1-Recovered_9-copy-scaled-1-1.webp 872w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/Untitled-1-Recovered_9-copy-scaled-1-1-300x163.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/Untitled-1-Recovered_9-copy-scaled-1-1-768x417.webp 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/Untitled-1-Recovered_9-copy-scaled-1-1-150x81.webp 150w" sizes="(max-width: 872px) 100vw, 872px" loading="lazy"></figure></div>


<p>I found this definition on google and now we’ll try to understand it. Logistic Regression is another statistical analysis method borrowed by Machine Learning. It is used when our dependent variable is dichotomous or binary. It just means a variable that has only 2 outputs, for example, A person will survive this accident or not, The student will pass this exam or not. The outcome can either be yes or no (2 outputs). This regression technique is similar to linear regression and can be used to predict the Probabilities for classification problems.</p>



<h2 class="wp-block-heading" id="h-types-of-logistic-regression">Types of Logistic Regression</h2>



<p>Let us explore types of logistic regression. </p>



<h3 class="wp-block-heading" id="h-binary-logistic-regression">Binary Logistic Regression</h3>



<p>It is used to predict the probability of a binary outcome, such as yes or no, true or false, or 0 or 1. For example, it could be used to predict whether a customer will churn or not, whether a patient has a disease or not, or whether a loan will be repaid or not<strong>.</strong></p>



<h3 class="wp-block-heading" id="h-multinomial-logistic-regression">Multinomial Logistic Regression</h3>



<p>Multinomial logistic regression is used to predict the probability of one of three or more possible outcomes, such as the type of product a customer will buy, the rating a customer will give a product, or the political party a person will vote for.</p>



<h3 class="wp-block-heading" id="h-ordinal-logistic-regression">Ordinal Logistic Regression</h3>



<p>It is used to predict the probability of an outcome that falls into a predetermined order, such as the level of customer satisfaction, the severity of a disease, or the stage of cancer.</p>



<h2 class="wp-block-heading" id="h-why-do-we-use-logistic-regression-rather-than-linear-regression">Why do we use Logistic Regression rather than Linear Regression?</h2>



<p>If you have this doubt, then you’re in the right place, my friend. After reading the definition ,we now know that it is only used when our dependent variable is binary and in linear regression this dependent variable is continuous.</p>



<p>The second problem is that if we add an outlier in our dataset, the best fit line in linear regression shifts to fit that point.</p>



<p>Now, if we use linear regression to find the best fit line which aims at minimizing the distance between the predicted value and actual value, the line will be like this:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img decoding="async" width="563" height="275" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/450163.webp" alt="graph for tumor size" class="wp-image-189955" style="width:872px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/450163.webp 563w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/450163-300x147.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/450163-150x73.webp 150w" sizes="(max-width: 563px) 100vw, 563px" loading="lazy"></figure></div>


<p>Here the threshold value is 0.5, which means if the value of h(x) is greater than 0.5 then we predict malignant tumor (1) and if it is less than 0.5 then we predict benign tumor (0). Everything seems okay here but now let’s change it a bit, we add some outliers in our dataset, now this best fit line will shift to that point. Hence the line will be somewhat like this:</p>



<figure class="wp-block-image size-full is-resized"><img decoding="async" width="942" height="275" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/323344.webp" alt="best fit line will shift to that point" class="wp-image-189956" style="width:872px" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/323344.webp 942w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/323344-300x88.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/323344-768x224.webp 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/323344-150x44.webp 150w" sizes="(max-width: 942px) 100vw, 942px" loading="lazy"></figure>



<p>Do you see any problem here? The blue line represents the old threshold, and the yellow line represents the new threshold, which is maybe 0.2. To keep our predictions right, we had to lower our threshold value. Hence, we can say that linear regression is prone to outliers. Now, if h(x)h(x)h(x) is greater than 0.2, only this regression will give correct outputs. Another problem with linear regression is that the predicted values may be out of range. We know that probability can be between 0 and 1, but if we use linear regression, this probability may exceed 1 or go below 0. To overcome these problems, we use Logistic Regression, which converts this straight best-fit line in linear regression to an S-curve using the sigmoid function, which will always give values between 0 and 1. How this works and the math behind it will be covered in a later section.</p>



<h2 class="wp-block-heading">Assumptions of Logistic regression</h2>



<p>Logistic regression is a statistical method commonly used to analyze data with binary outcomes (yes/no, 1/0) and identify the relationship between those outcomes and independent variables. Here are some key assumptions for logistic regression:</p>



<h4 class="wp-block-heading" id="h-data-specific">Data Specific</h4>



<ul class="wp-block-list">
<li><strong>Binary Dependent Variable:</strong> It is designed for binary dependent variables. If your outcome has more than two categories, you might need a multinomial logistic regression or other classification techniques.</li>



<li><strong>Independent Observations:</strong> The data points should be independent of each other. This means no repeated measurements or clustering within the data.</li>
</ul>



<h4 class="wp-block-heading" id="h-relationship-between-variables">Relationship Between Variables</h4>



<ul class="wp-block-list">
<li><strong>Linearity in the Logit:</strong> The relationship between the independent variables and the logit of the dependent variable (ln(p / (1-p))) is assumed to be linear. This doesn’t necessarily mean the outcome itself has a linear relationship with the independent variables, but the log-odds do.</li>



<li><strong>No Multicollinearity:</strong> Independent variables shouldn’t be highly correlated with each other. Multicollinearity can cause instability in the model and make it difficult to interpret the coefficients.</li>
</ul>



<h4 class="wp-block-heading" id="h-other">Other</h4>



<ul class="wp-block-list">
<li><strong>Absence of Outliers:</strong> While not a strict requirement, outliers can significantly influence the model. It’s important to check for and address any outliers that might distort the results.</li>



<li><strong>Adequate Sample Size:</strong> These are typically requires a reasonably large sample size to ensure reliable parameter estimates. There are different rules of thumb, but a common guideline is to have at least 10 observations for each independent variable in the model.pen_spark</li>
</ul>



<h2 class="wp-block-heading" id="h-how-does-logistic-regression-work">How does Logistic Regression work?</h2>



<ul class="wp-block-list">
<li><strong>Prepare the data: T</strong>he data should be in a format where each row represents a single observation and each column represents a different variable. The target variable (the variable you want to predict) should be binary (yes/no, true/false, 0/1).</li>



<li><strong>Train the model: </strong>We teach the model by showing it the training data. This involves finding the values of the model parameters that minimize the error in the training data.</li>



<li><strong>Evaluate the model: </strong>The model is evaluated on the held-out test data to assess its performance on unseen data.</li>



<li><strong>Use the model to make predictions:</strong> After the model has been trained and assessed, it can be used to forecast outcomes on new data.</li>
</ul>



<h3 class="wp-block-heading" id="h-logistic-function">Logistic Function</h3>



<p>You must be wondering how logistic regression squeezes the output of linear regression between 0 and 1. </p>



<p>&nbsp;Well, there’s a little bit of math included behind this and it is pretty interesting trust me.</p>



<p>Let’s start by mentioning the formula of logistic function:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="200" height="74" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/642295-1.webp" alt="Logistic Regression formula" class="wp-image-189958" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/642295-1.webp 200w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/642295-1-150x56.webp 150w" sizes="auto, (max-width: 200px) 100vw, 200px"></figure></div>


<p>How similar it is too linear regression? If you haven’t read my article on Linear Regression, then please have a look at it for a better understanding.</p>



<h4 class="wp-block-heading" id="h-best-fit-equation-in-linear-regression">Best Fit Equation in Linear Regression</h4>



<p>&nbsp;We all know the equation of the best fit line in <a href="https://github.com/karthickai/Linear-Regression" target="_blank" rel="noopener noreferrer">linear regression</a> is:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="137" height="39" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/560286.webp" alt="fit linear regression" class="wp-image-189959"></figure></div>


<p>Let’s say instead of y we are taking probabilities (P). But there is an issue here, the value of (P) will exceed 1 or go below 0 and we know that range of Probability is (0-1). To overcome this issue we take <i><b>“odds”</b></i> of P:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="194" height="120" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/827707.webp" alt="odds a" class="wp-image-189960" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/827707.webp 194w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/827707-150x93.webp 150w" sizes="auto, (max-width: 194px) 100vw, 194px"></figure></div>


<p>Do you think we are done here? No, we are not. We know that odds can always be positive which means the range will always be (0,+∞ ). Odds are nothing but the ratio of the probability of success and probability of failure. Now the question comes out of so many other options to transform this why did we only take <b style="font-style: italic;">‘odds’</b>? Because odds are probably the easiest way to do this, that’s it.</p>



<p>The problem here is that the range is restricted and we don’t want a restricted range because if we do so then our correlation will decrease. By restricting the range we are actually decreasing the number of data points and of course, if we decrease our data points, our correlation will decrease. It is difficult to model a variable that has a restricted range. To control this we take the <i><b>log of odds</b> </i>which has a range from (-<span style="font-size: 14px; text-align: left;">∞,+</span><span style="font-size: 14px; text-align: left;">∞</span>).</p>



<figure class="wp-block-image is-resized"><img loading="lazy" decoding="async" width="220" height="65" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2021/08/16.png" alt="log(p/1-p)" class="wp-image-83055" style="width:224px;height:auto"></figure>



<p>If you understood what I did here then you have done 80% of the maths. Now we just want a function of P because we want to predict probability right? not log of odds. To do so we will multiply by <i><b>exponent</b></i> on both sides and then solve for P.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="395" height="277" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9466620.webp" alt="logistic regression exponent" class="wp-image-189961" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9466620.webp 395w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9466620-300x210.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9466620-150x105.webp 150w" sizes="auto, (max-width: 395px) 100vw, 395px"></figure></div>

<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="370" height="344" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7514721.webp" alt="2nd exponent logistic regression" class="wp-image-189962" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7514721.webp 370w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7514721-300x279.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7514721-150x139.webp 150w" sizes="auto, (max-width: 370px) 100vw, 370px"></figure></div>

<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="498" height="137" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/3649122.webp" alt="dividing" class="wp-image-189963" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/3649122.webp 498w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/3649122-300x83.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/3649122-150x41.webp 150w" sizes="auto, (max-width: 498px) 100vw, 498px"></figure></div>


<p>Now we have our logistic function, also called a sigmoid function. The graph of a sigmoid function is as shown below. It squeezes a straight line into an S-curve.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="725" height="327" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/711091.webp" alt="linear vs logistic regression" class="wp-image-189964" style="width:872px" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/711091.webp 725w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/711091-300x135.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/711091-150x68.webp 150w" sizes="auto, (max-width: 725px) 100vw, 725px"></figure></div>


<h2 class="wp-block-heading" id="h-differences-between-linear-and-logistic-regression">Differences Between Linear and Logistic Regression</h2>



<p>Linear regression and logistic regression, while both workhorses in machine learning, serve distinct purposes. The core difference lies in their target predictions. Linear regression excels at predicting continuous values along a spectrum. Imagine predicting house prices based on size and location – the resulting output would be a specific dollar amount, a continuous value on the price scale.</p>



<p>On the other hand, deals with categories. It doesn’t predict a specific value but rather the likelihood of something belonging to a particular class. For instance, classifying emails as spam (category 1) or not spam (category 0). The output here would be a probability between 0 (not likely spam) and 1 (very likely spam). This probability is then used to assign an email to a definitive category (spam or not spam) based on a chosen threshold.</p>



<p>In simpler terms, linear regression answers “how much” questions, providing a specific value on a continuous scale. Logistic regression tackles “yes or no” scenarios, giving the probability of something belonging to a certain category.</p>



<h2 class="wp-block-heading" id="h-key-properties-of-the-logistic-regression-equation">Key properties of the logistic regression equation</h2>



<ul class="wp-block-list">
<li><strong>Sigmoid Function</strong>: The <a href="https://www.analyticsvidhya.com/blog/2021/10/building-an-end-to-end-logistic-regression-model/" target="_blank" rel="noopener noreferrer">logistic regression model</a>, when explained, uses a special “S” shaped curve to predict probabilities. It ensures that the predicted probabilities stay between 0 and 1, which makes sense for probabilities.</li>



<li><strong>Straightforward Relationship</strong>: Even though this model might seem complex, the relationship between our inputs (like age, height, etc.) and the outcome (like yes/no) is pretty simple to understand. It’s like drawing a straight line, but with a curve instead.</li>



<li><strong>Coefficients</strong>: These are just numbers that tell us how much each input affects the outcome in the logistic regression model. For example, if age is a predictor, the coefficient tells us how much the outcome changes for every one year increase in age.</li>



<li><strong>Best Guess</strong>: We figure out the best coefficients for this model by looking at the data we have and tweaking them until our predictions match the real outcomes as closely as possible.</li>



<li><strong>Basic Assumptions</strong>: In this mainly  explained, we assume that our observations are independent, meaning one doesn’t affect the other. We also assume that there’s not too much overlap between our predictors (like age and height), and the relationship between our predictors and the outcome is kind of like a straight line.</li>



<li><strong>Probabilities, Not Certainties</strong>: Instead of saying “yes” or “no” directly, this gives us probabilities, like saying there’s a 70% chance it’s a “yes” in the logistic regression model. We can then decide on a cutoff point to make our final decision.</li>



<li><strong>Checking Our Work</strong>: It explained, we have some tools to make sure our predictions are good, like accuracy, precision, recall, and a curve called the ROC curve. These help us see how well our model is doing its job.</li>
</ul>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="872" height="473" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/key-assumptions-of-logistic-regression-scaled-1-6703bceddc5e3.webp" alt="Key assumptions for implementing logisitic regression" class="wp-image-197368" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/key-assumptions-of-logistic-regression-scaled-1-6703bceddc5e3.webp 872w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/key-assumptions-of-logistic-regression-scaled-1-6703bceddc5e3-300x163.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/key-assumptions-of-logistic-regression-scaled-1-6703bceddc5e3-768x417.webp 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/key-assumptions-of-logistic-regression-scaled-1-6703bceddc5e3-150x81.webp 150w" sizes="auto, (max-width: 872px) 100vw, 872px"></figure></div>


<h2 class="wp-block-heading" id="h-cost-function-in-logistic-regression">Cost Function in Logistic Regression</h2>



<p>In linear regression, we use the <a href="https://www.analyticsvidhya.com/blog/2024/07/mean-squared-error/" target="_blank" rel="noopener noreferrer">Mean squared error</a> which was the difference between y_predicted and y_actual and this is&nbsp;derived from the maximum likelihood estimator. The graph of the cost function in linear regression is like this:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="1191" height="519" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-348.png" alt="graph of the cost function in linear regression" class="wp-image-170795" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-348.png 1191w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-348-300x131.png 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-348-768x335.png 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-348-150x65.png 150w" sizes="auto, (max-width: 1191px) 100vw, 1191px"></figure></div>


<p>In logistic regression Yi is a non-linear function (<i>Ŷ</i>=1​/1+ e<sup>-z</sup>). If we use this in the above MSE equation then it will give a non-convex graph with many local minima as shown.</p>



<figure class="wp-block-image size-full is-resized"><img loading="lazy" decoding="async" width="759" height="237" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-349.png" alt="non-linear function" class="wp-image-170797" style="width:872px" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-349.png 759w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-349-300x94.png 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/05/image-349-150x47.png 150w" sizes="auto, (max-width: 759px) 100vw, 759px"></figure>



<p>The problem here is that this cost function will give results with local minima, which is a big problem because then we’ll miss out on our global minima and our error will increase.</p>



<p>In order to solve this problem, we derive a different cost function for logistic regression called <i><b>log loss</b></i> which is also derived from the&nbsp;<i>maximum likelihood estimation</i> method.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="417" height="70" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8452812.webp" alt="log loss forumla" class="wp-image-189967" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8452812.webp 417w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8452812-300x50.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8452812-150x25.webp 150w" sizes="auto, (max-width: 417px) 100vw, 417px"></figure></div>


<p>In the next section, we’ll talk a little bit about the maximum likelihood estimator and what it is used for. We’ll also try to see the math behind this log loss function.</p>



<h2 class="wp-block-heading" id="h-logistic-regression-example">Logistic Regression Example</h2>



<p>This predicts yes/no outcomes (like email open). It analyzes data (age, email history) to estimate the chance (0-1) of an event. A sigmoid function turns this into a probability. We can then set a threshold (e.g. 0.5) to classify (open/not open). It’s useful because it’s easy to understand and interpret.sharemore_vert</p>



<h2 class="wp-block-heading" id="h-what-is-the-use-of-maximum-likelihood-estimator">What is the use of Maximum Likelihood Estimator?</h2>



<p>The primary objective of Maximum Likelihood Estimation (MLE) in machine learning, particularly in the context of logistic regression, is to identify parameter values that maximize the likelihood function. This function represents the joint probability density function (pdf) of our sample observations. In essence, it involves multiplying the conditional probabilities for observing each example given the distribution parameters. In the realm of logistic regression in machine learning, this process aims to discover parameter values such that, when plugged into the model for P(x), it produces a value close to one for individuals with a malignant tumor and close to zero for those with a benign tumor.</p>



<p>Let’s start by defining our likelihood function. We now know that the labels are binary which means they can be either yes/no or pass/fail etc. We can also say we have two outcomes success and failure. This means we can interpret each label as Bernoulli random variable.</p>



<h4 class="wp-block-heading" id="h-random-experiment">Random Experiment</h4>



<p>A random experiment whose outcomes are of two types, success S and failure F, occurring with probabilities p and q respectively is called a Bernoulli trial. If for this experiment a random variable X is defined such that it takes value 1 when S occurs and 0 if F occurs, then X follows a Bernoulli Distribution.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="118" height="55" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/2213412.webp" alt="" class="wp-image-189968" style="width:144px;height:auto"></figure></div>


<p><strong>Where P is our sigmoid function</strong></p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="486" height="52" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/1717618.webp" alt="sigmoid" class="wp-image-189969" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/1717618.webp 486w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/1717618-300x32.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/1717618-150x16.webp 150w" sizes="auto, (max-width: 486px) 100vw, 486px"></figure></div>


<p>where&nbsp;<b style="font-size: 14px; text-align: left;">σ(</b><span style="font-size: 14px; text-align: left;">θ^T*x^i</span><b style="font-size: 14px; text-align: left;">) </b><span style="font-size: 14px; text-align: left;">is the sigmoid function.&nbsp;</span>Now for n observations,</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="310" height="61" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9615612.webp" alt="n observations" class="wp-image-189970" style="width:376px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9615612.webp 310w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9615612-300x59.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/9615612-150x30.webp 150w" sizes="auto, (max-width: 310px) 100vw, 310px"></figure></div>


<p>We need a value for theta which will maximize this likelihood function. To make our calculations easier we multiply the log on both sides. The function we get is also called the log-likelihood function or sum of the log conditional probability</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="494" height="64" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/4487512.webp" alt="log likelihood" class="wp-image-189971" style="width:602px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/4487512.webp 494w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/4487512-300x39.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/4487512-150x19.webp 150w" sizes="auto, (max-width: 494px) 100vw, 494px"></figure></div>


<p>In machine learning, it is conventional to minimize a loss(error) function via gradient descent, rather than maximize an objective function via gradient ascent. If we maximize this above function then we’ll have to deal with gradient ascent to avoid this we take negative of this log so that we use gradient descent. We’ll talk more about gradient descent in a later section and then you’ll have more clarity. Also, remember,</p>



<blockquote class="wp-block-quote is-layout-flow wp-block-quote-is-layout-flow">
<p><em><strong>max[log(x)] = min[-log(x)]</strong></em></p>
</blockquote>



<p>The negative of this function is our&nbsp;<em><strong>cost function</strong></em>&nbsp;and what do we want with our cost function? That it should have a minimum value. It is common practice to minimize a cost function for optimization problems; therefore, we can invert the function so that we minimize the negative log-likelihood (NLL). So in logistic regression, our cost function is:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="513" height="66" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8674112.webp" alt="cost function" class="wp-image-189972" style="width:583px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8674112.webp 513w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8674112-300x39.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8674112-150x19.webp 150w" sizes="auto, (max-width: 513px) 100vw, 513px"></figure></div>


<p>Here y represents the actual class and log(<strong>σ(</strong>θ^T*x^i<strong>) )&nbsp;</strong>is the probability of that class.</p>



<ul class="wp-block-list">
<li>p(y) is the probability of 1.</li>



<li>1-p(y) is the probability of 0.</li>
</ul>



<h4 class="wp-block-heading" id="h-let-s-see-what-will-be-the-graph-of-cost-function-when-y-1-and-y-0">Let’s see what will be the graph of cost function when y=1 and y=0</h4>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="804" height="249" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7534219.webp" alt="y=1 and y=0" class="wp-image-189973" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7534219.webp 804w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7534219-300x93.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7534219-768x238.webp 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/7534219-150x46.webp 150w" sizes="auto, (max-width: 804px) 100vw, 804px"></figure></div>


<p>If we combine both the graphs, we will get a convex graph with only 1 local minimum and now it’ll be easy to use gradient descent here:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="930" height="429" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-16.png" alt="convex graph with only 1 local minimum and now it'll be easy to use gradient descent here" class="wp-image-197362" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-16.png 930w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-16-300x138.png 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-16-768x354.png 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-16-150x69.png 150w" sizes="auto, (max-width: 930px) 100vw, 930px"></figure></div>


<p>The red line here represents the 1 class (y=1), the right term of cost function will vanish. Now if the predicted probability is close to 1 then our loss will be less and when probability approaches 0, our loss function reaches infinity.</p>



<p>The black line represents 0 class (y=0), the left term will vanish in our cost function and if the predicted probability is close to 0 then our loss function will be less but if our probability approaches 1 then our loss function reaches infinity.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full is-resized"><img loading="lazy" decoding="async" width="488" height="57" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8787314.webp" alt="cost theta" class="wp-image-189974" style="width:556px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8787314.webp 488w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8787314-300x35.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8787314-150x18.webp 150w" sizes="auto, (max-width: 488px) 100vw, 488px"></figure></div>


<p>This cost function is also called log loss. It also ensures that as the probability of the correct answer is maximized, the probability of the incorrect answer is minimized. Lower the value of this cost function higher will be the accuracy.</p>



<h2 class="wp-block-heading" id="h-gradient-descent-optimization">Gradient Descent Optimization</h2>



<p>In this section, we will try to understand how we can utilize&nbsp;<em>Gradient Descent</em>&nbsp;to compute the minimum cost.</p>



<p>Gradient descent changes the value of our weights in such a way that it always converges to minimum point or we can also say that, it aims at finding the optimal weights which minimize the loss function of our model. It is an iterative method that finds the minimum of a function by figuring out the slope at a random point and then moving in the opposite direction.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="872" height="473" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-351.webp" alt="Plot of a convex cost function versus weight illustrating gradient descent: shows an initial weight point with its gradient vector and successive small steps descending the curve toward the minimum cost." class="wp-image-197359" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-351.webp 872w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-351-300x163.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-351-768x417.webp 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-351-150x81.webp 150w" sizes="auto, (max-width: 872px) 100vw, 872px"></figure></div>


<p>At first gradient descent takes a random value of our parameters from our function. Now we need an algorithm that will tell us whether at the next iteration we should move left or right to reach the minimum point. The gradient descent algorithm finds the slope of the loss function at that particular point and then in the next iteration, it moves in the opposite direction to reach the minima. Since we have a convex graph now we don’t need to worry about local minima. A convex curve will always have only 1 minima.</p>



<p>We can summarize the <a href="https://www.analyticsvidhya.com/blog/2020/10/how-does-the-gradient-descent-algorithm-work-in-machine-learning/" target="_blank" rel="noopener noreferrer">gradient descent algorithm</a> as:</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="261" height="75" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5064017.webp" alt="gradient descent algorithm" class="wp-image-189975" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5064017.webp 261w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5064017-150x43.webp 150w" sizes="auto, (max-width: 261px) 100vw, 261px"></figure></div>


<p>Here&nbsp;alpha&nbsp;is known as the learning rate. It determines the step size at each iteration while moving towards the minimum point. Usually, a lower value of&nbsp;<em>“alpha”&nbsp;</em>is preferred, because if the learning rate is a big number then we may miss the minimum point and keep on oscillating in the convex curve.</p>


<div class="wp-block-image">
<figure class="aligncenter size-full"><img loading="lazy" decoding="async" width="767" height="193" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-17.png" alt="" class="wp-image-197366" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-17.png 767w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-17-300x75.png 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/10/image-17-150x38.png 150w" sizes="auto, (max-width: 767px) 100vw, 767px"></figure></div>


<p>Now the question is what is this derivative of cost function? How do we do this? Don’t worry, In the next section we’ll see how we can derive this cost function w.r.t our parameters.</p>



<h2 class="wp-block-heading" id="h-derivation-of-cost-function">Derivation of Cost Function</h2>



<p>Before we derive our cost function we’ll first find a derivative for our sigmoid function because it will be used in derivating the cost function.</p>



<figure class="wp-block-image size-full is-resized"><img loading="lazy" decoding="async" width="505" height="344" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5183321.webp" alt="Derivation of Cost Function" class="wp-image-189976" style="width:528px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5183321.webp 505w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5183321-300x204.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/5183321-150x102.webp 150w" sizes="auto, (max-width: 505px) 100vw, 505px"></figure>



<figure class="wp-block-image size-full is-resized"><img loading="lazy" decoding="async" width="704" height="221" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/802401.webp" alt="Derivation of Cost Function 2" class="wp-image-189977" style="width:618px;height:auto" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/802401.webp 704w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/802401-300x94.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/802401-150x47.webp 150w" sizes="auto, (max-width: 704px) 100vw, 704px"></figure>



<p>Now, we will derive the cost function with the help of the chain rule as it allows us to calculate complex partial derivatives by breaking them down.</p>



<h3 class="wp-block-heading" id="h-step-1-use-chain-rule-and-break-the-partial-derivative-of-log-likelihood">Step-1: Use chain rule and break the partial derivative of log-likelihood</h3>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="610" height="157" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/2312320.webp" alt="Use chain rule and break the partial derivative of log-likelihood" class="wp-image-189980" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/2312320.webp 610w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/2312320-300x77.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/2312320-150x39.webp 150w" sizes="auto, (max-width: 610px) 100vw, 610px"></figure>



<h3 class="wp-block-heading" id="h-step-2-find-derivative-of-log-likelihood-w-r-t-p">Step-2: Find derivative of log-likelihood w.r.t p</h3>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="561" height="159" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/6684921.webp" alt="Find derivative of log-likelihood w.r.t p" class="wp-image-189981" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/6684921.webp 561w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/6684921-300x85.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/6684921-150x43.webp 150w" sizes="auto, (max-width: 561px) 100vw, 561px"></figure>



<h3 class="wp-block-heading" id="h-step-3-find-derivative-of-nbsp-p-nbsp-w-r-t-nbsp-z">Step-3: Find derivative of&nbsp;‘p’&nbsp;w.r.t&nbsp;‘z’</h3>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="654" height="233" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8173422.webp" alt="Step-3: Find derivative of 'p' w.r.t 'z'" class="wp-image-189982" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8173422.webp 654w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8173422-300x107.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8173422-150x53.webp 150w" sizes="auto, (max-width: 654px) 100vw, 654px"></figure>



<h3 class="wp-block-heading" id="h-step-4-find-derivate-of-z-w-r-t-nbsp-θ">Step-4: Find derivate of z w.r.t&nbsp;θ</h3>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="546" height="114" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8298020.webp" alt="Step-4: Find derivate of z w.r.t&nbsp;θ" class="wp-image-189983" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8298020.webp 546w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8298020-300x63.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/8298020-150x31.webp 150w" sizes="auto, (max-width: 546px) 100vw, 546px"></figure>



<h3 class="wp-block-heading" id="h-step-5-put-all-the-derivatives-in-equation-1">Step-5: Put all the derivatives in equation 1</h3>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="617" height="316" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/516321.webp" alt="Step-5: Put all the derivatives in equation 1" class="wp-image-189984" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/516321.webp 617w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/516321-300x154.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/516321-150x77.webp 150w" sizes="auto, (max-width: 617px) 100vw, 617px"></figure>



<p>&nbsp;</p>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="575" height="118" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/411691.webp" alt="Step-5: Put all the derivatives in equation 1" class="wp-image-189985" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/411691.webp 575w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/411691-300x62.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/411691-150x31.webp 150w" sizes="auto, (max-width: 575px) 100vw, 575px"></figure>



<p>Hence the derivative of our cost function is:</p>



<figure class="wp-block-image size-full"><img loading="lazy" decoding="async" width="367" height="68" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/692721.webp" alt="Step-5: Put all the derivatives in equation 1" class="wp-image-189986" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/692721.webp 367w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/692721-300x56.webp 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/08/692721-150x28.webp 150w" sizes="auto, (max-width: 367px) 100vw, 367px"></figure>



<p>Now since we have our derivative of the <a href="https://www.analyticsvidhya.com/blog/2021/02/cost-function-is-no-rocket-science/" target="_blank" rel="noopener noreferrer">cost function</a>, we can write our gradient descent algorithm as:</p>



<p>If the slope is negative (downward slope) then our gradient descent will add some value to our new value of the parameter directing it towards the minimum point of the convex curve. Whereas if the slope is positive (upward slope) the gradient descent will minus some value to direct it towards the minimum point.</p>



<h2 class="wp-block-heading">Conclusion</h2>



<p>This tutorial has provided a comprehensive overview of logistic regression, focusing on its application and implementation using <code>scikit-learn</code> (<code>sklearn</code>). This is a powerful tool for handling categorical variables and predicting binary outcomes. Unlike decision trees, which create non-linear decision boundaries, logistic regression uses a linear relationship transformed by the exponential function through an activation function. We emphasized the importance of splitting data into a training set and a test set for proper model validation. By following this tutorial, you should now have a solid understanding of how to implement logistic regression in Python using <code>scikit-learn</code> and how it compares to other machine learning models like decision trees.</p>



<h4 class="wp-block-heading" id="h-key-takeaways">Key Takeaways</h4>



<ul class="wp-block-list">
<li>This is a versatile supervised machine learning technique used for predicting a binary output variable.</li>



<li>Overfitting can occur in logistic regression, and it’s crucial to employ techniques such as regularization to mitigate this issue.</li>



<li>The <code>sklearn</code> library in Python provides robust tools for implementing the models.</li>



<li>This tutorial covers the different types of logistic regression, including binary, multinomial, and ordinal.</li>



<li>Validation is a key step to ensure the model’s performance on unseen data, often done by splitting data into training and test sets.</li>



<li>It can be viewed as a linear model where the output is passed through an activation function, specifically the sigmoid function.</li>



<li>The decision boundary in logistic regression is a linear separator, unlike decision trees, which create non-linear boundaries.</li>



<li>The relationship between the input features xxx and the log-odds of the outcome is linear, transformed by the exponential function in the logistic model.</li>
</ul>






                        
<h2 class="wp-block-heading" id="h-introduction">Introduction</h2>



<p>In this article, we’ll talk about cost functions in machine learning. We’ll discuss why they’re important and how they help evaluate how well a model performs. We’ll also look at different types of cost functions used for predicting continuous values and categories.</p>



<p><em>This article was published as a part of the <a href="https://datahack.analyticsvidhya.com/contest/data-science-blogathon-42/">Data Science Blogathon.</a></em></p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://i.gifer.com/GxlE.gif" alt="Image result for no rocket science gif" loading="lazy"><figcaption class="wp-element-caption">Credit: https://gifer.com/en/GxlE</figcaption></figure></div>


<p>The 2 main questions that popped up in my mind while working on this article were “Why am I writing this article?” &amp; “How is my article different from other articles?” Well, the cost function is an important concept to understand in the fields of data science but while pursuing my post-graduation, I realized that the resources available online are too general and didn’t address my needs completely.</p>



<p>I had to refer to many articles &amp; see some videos on YouTube to get an intuition behind cost functions. As a result, I wanted to put together the “What,” “When,” “How,” and “Why” of Cost functions that can help to explain this topic more clearly. I hope that my article acts as a one-stop-shop for cost functions!</p>



<div class="wp-block-yoast-seo-table-of-contents yoast-table-of-contents"><div class="accordion" id="accordionContent"><div class="accordion-item border-0 rounded-4 bg-light"><h2 class="accordion-header"><button class="accordion-button rounded-3 shadow-none text-blue bg-light border-0 py-4 fs-20 fw-light" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Table of contents</button></h2><div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionContent" style=""><div class="accordion-body pt-0"><ol><li><a href="#h-introduction" data-level="2">Introduction</a></li><li><a href="#h-what-is-cost-function" data-level="2">What is Cost Function ?</a></li><li><a href="#h-why-to-use-a-cost-function" data-level="2">Why to use a Cost function?</a></li><li><a href="#h-what-is-cost-function-in-machine-learning" data-level="2">What is Cost Function in Machine learning</a></li><li><a href="#h-types-of-cost-function-in-machine-learning" data-level="2">Types of Cost function in machine learning</a><ul><li><a href="#h-1-regression-cost-function" data-level="3">1. Regression cost Function:</a></li><li><a href="#h-2-cost-functions-for-classification-problems" data-level="3">2. Cost functions for Classification problems</a></li></ul></li><li><a href="#h-conclusion" data-level="2">Conclusion</a></li><li><a href="#faq" data-level="2">Frequently Asked Questions</a></li></ol></div></div></div></div></div><div class="card p-4 border-0 free-course-blog-card mb-5">
                            <a href="https://www.analyticsvidhya.com/courses/machine-learning-certification-program-beginners/?utm_source=blog&amp;utm_medium=free_course_banner&amp;utm_term=free_course_auto_enrollment" target="_new" class="text-decoration-none text-white">
                                <span class="tangle-badge text-dark fw-semibiold d-flex align-items-center rounded-start-1 ps-4 d-inline-block">Free Course</span>
                                <div class="fs-32 pt-3 text-white">Machine Learning Certification for Beginners</div>
                                <div class="fs-16 text-white py-3">Understand Python basics • Data processing with pandas • Stats-driven EDA</div>
                                <button type="button" class="btn btn-dark btn-dark-primary text-white border-0 px-5 text-center  d-table">Enroll Now</button>
                            </a>
                        </div>



<h2 class="wp-block-heading" id="h-what-is-cost-function">What is Cost Function ?</h2>



<p>A <a href="https://www.analyticsvidhya.com/blog/2021/03/data-science-101-introduction-to-cost-function/">cost function</a>, also referred to as a loss function or objective function, is a key concept in machine learning. It quantifies the difference between predicted and actual values, serving as a metric to evaluate the performance of a model. The primary objective is to minimize the cost function, indicating better alignment between predicted and observed outcomes. In essence, the cost function in machine learning guides the model towards optimal predictions by measuring its accuracy against the training data.</p>



<blockquote class="wp-block-quote is-layout-flow wp-block-quote-is-layout-flow">
<p>Loss function: Used when we refer to the error for a single training example.<br>Cost function: Used to refer to an average of the loss functions over an entire training dataset.</p>
</blockquote>



<h2 class="wp-block-heading" id="h-why-to-use-a-cost-function"><b>Why to use a Cost function?</b></h2>



<p>Why on earth do we need a cost function? Consider a scenario where we wish to classify data. Suppose we have the height &amp; weight details of some cats &amp; dogs. Let us use these 2 features to classify them correctly. If we plot these records, we get the following scatterplot:</p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/788061.png" alt="Cost Function Scatter plot" loading="lazy"><figcaption class="wp-element-caption">Fig 1: Scatter plot for height &amp; weight of various dogs &amp; cats</figcaption></figure></div>


<p>Blue dots are cats &amp; red dots are dogs. Following are some solutions to the above classification problem.</p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/547072.JPG" alt="Probable solutions" loading="lazy"><figcaption class="wp-element-caption">Fig: Probable solutions to our classification problem</figcaption></figure></div>


<p>Essentially all three classifiers have very high accuracy but the third solution is the best because it does not misclassify any point. The reason why it classifies all the points perfectly is that the line is almost exactly in between the two groups, and not closer to any one of the groups. This is where the concept of cost function comes in. Cost function helps us reach the optimal solution. The cost function is the technique of evaluating “the performance of our algorithm/model”.</p>



<p>It takes both predicted outputs by the model and actual outputs and calculates how much wrong the model was in its prediction. It outputs a higher number if our predictions differ a lot from the actual values. As we tune our model to improve the predictions, the cost function acts as an indicator of how the model has improved. This is essentially an optimization problem. The optimization strategies always aim at “minimizing the cost function”.</p>



<h2 class="wp-block-heading" id="h-what-is-cost-function-in-machine-learning">What is Cost Function in Machine learning</h2>



<p>A cost function in <a href="https://www.analyticsvidhya.com/blog/2020/10/how-does-the-gradient-descent-algorithm-work-in-machine-learning/">Machine Learning</a> is an essential tool in machine learning for assessing the performance of a model. It basically measures the discrepancy between the model’s predictions and the true values it is attempting to predict. This variance is depicted as a lone numerical figure, enabling us to measure the model’s precision.</p>



<figure class="wp-block-image size-full"><img fetchpriority="high" decoding="async" width="872" height="490" src="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/03/Cost-Function-in-Machine-Learning.jpg" alt="Cost function in Machine learning" class="wp-image-154236" srcset="https://cdn.analyticsvidhya.com/wp-content/uploads/2024/03/Cost-Function-in-Machine-Learning.jpg 872w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/03/Cost-Function-in-Machine-Learning-300x169.jpg 300w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/03/Cost-Function-in-Machine-Learning-768x432.jpg 768w, https://cdn.analyticsvidhya.com/wp-content/uploads/2024/03/Cost-Function-in-Machine-Learning-150x84.jpg 150w" sizes="(max-width: 872px) 100vw, 872px" loading="lazy"></figure>



<p>Here is an explanation of the function of a cost function:</p>



<p><strong>Error calculation: </strong>It determines the difference between the predicted outputs (what the model predicts as the answer) and the actual outputs (the true values we possess for the data).</p>



<p><strong>Gives one value</strong>: This simplifies comparing the model’s performance on various datasets or training rounds.</p>



<p><strong>Improving Guides: </strong>The objective is to reduce the cost function. Through modifying the internal parameters of the model such as weights and biases, we can aim to minimize the total error and enhance the accuracy of the model.</p>



<p>Consider this scenario: envision yourself instructing a model to forecast the prices of houses. The cost function indicates the difference between your model’s predictions and the actual market values. By reducing this cost function, you are essentially adjusting the model to enhance its accuracy in making future predictions.</p>



<h2 class="wp-block-heading" id="h-types-of-cost-function-in-machine-learning">Types of Cost function in machine learning</h2>



<p>There are many cost functions in machine learning and each has its use cases depending on whether it is a regression problem or classification problem.</p>



<ol class="wp-block-list">
<li>Regression cost Function</li>



<li>Binary Classification cost Functions</li>



<li>Multi-class Classification cost Functions</li>
</ol>



<h3 class="wp-block-heading" id="h-1-regression-cost-function"><!-- [if !supportLists]-->1. <!--[endif]-->Regression cost Function:</h3>



<p>Regression models deal with predicting a continuous value for example salary of an employee, price of a car, loan prediction, etc. A cost function used in the regression problem is called “Regression Cost Function”. They are calculated on the distance-based error as follows:</p>



<p>Error = y-y’</p>



<p>Where,</p>



<blockquote class="wp-block-quote is-layout-flow wp-block-quote-is-layout-flow">
<p>Y – Actual Input</p>



<p>Y’ – Predicted output</p>
</blockquote>



<p>The most used Regression cost functions are below,</p>



<h4 class="wp-block-heading" id="h-1-1-mean-error-me">1.1 Mean Error (ME)</h4>



<ul class="wp-block-list">
<li>In this cost function, the error for each training data is calculated and then the mean value of all these errors is derived.</li>



<li>Calculating the mean of the errors is the simplest and most intuitive way possible.</li>



<li>The errors can be both negative and positive. So they can cancel each other out during summation giving zero mean error for the model.</li>



<li>Thus this is not a recommended cost function but it does lay the foundation for other cost functions of regression models.</li>
</ul>



<h4 class="wp-block-heading" id="h-1-2-mean-squared-error-mse">1.2 Mean Squared Error (MSE)</h4>



<ul class="wp-block-list">
<li>This improves the drawback we encountered in Mean Error above. Here a square of the difference between the actual and predicted value is calculated to avoid any possibility of negative error.</li>



<li>It is measured as the average of the sum of squared differences between predictions and actual observations.</li>
</ul>



<figure class="wp-block-image"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/965844.JPG" alt="MSE cost function" loading="lazy"></figure>



<p>MSE = (sum of squared errors)/n</p>



<ul class="wp-block-list">
<li>It is also known as L2 loss.</li>



<li>In MSE, since each error is squared, it helps to penalize even small deviations in prediction when compared to MAE. But if our dataset has outliers that contribute to larger prediction errors, then squaring this error further will magnify the error many times more and also lead to higher MSE error.</li>



<li>Hence we can say that it is less robust to outliers</li>
</ul>



<h4 class="wp-block-heading" id="h-1-3-mean-absolute-error-mae"><strong>1.3 <!--[endif]-->Mean Absolute Error (MAE)</strong></h4>



<ul class="wp-block-list">
<li>This cost function also addresses the shortcoming of mean error differently. Here an absolute difference between the actual and predicted value is calculated to avoid any possibility of negative error.</li>



<li>
<p class="">So in this cost function, MAE is measured as the average of the sum of absolute differences between predictions and actual observations.</p>
</li>
</ul>



<figure class="wp-block-image"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/634276.JPG" alt="MAE Cost function" loading="lazy"></figure>



<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; MAE = (sum of absolute errors)/n</p>



<ul class="wp-block-list">
<li>It is also known as L1 Loss.</li>



<li> <span style="font-size: revert; color: initial;">It is robust to outliers thus it will give better results even when our dataset has noise or outliers.</span> </li>
</ul>



<h3 class="wp-block-heading" id="h-2-cost-functions-for-classification-problems"><!-- [if !supportLists]-->2. <!--[endif]-->Cost functions for Classification problems</h3>



<p>Cost functions used in classification problems are different than what we use in the regression problem. A commonly used loss function for classification is the cross-entropy loss. Let us understand cross-entropy with a small example. Consider that we have a classification problem of 3 classes&nbsp;as follows.</p>



<h4 class="wp-block-heading" id="h-class-orange-apple-tomato">Class(Orange,Apple,Tomato)</h4>



<p>The machine learning model will give a probability distribution of these 3 classes as output for a given input data. The class with the highest probability is considered as a winner class for prediction.</p>



<p>Output = [P(Orange),P(Apple),P(Tomato)]



</p><p>The actual probability distribution for each class is shown below.</p>



<p><span style="font-size: 16px; text-align: justify; font-style: italic;">Orange = [1,0,0]</span></p>



<p><span style="font-style: italic;">Apple = [0,1,0]</span></p>



<p>Tomato = [0,0,1]



</p><p>If during the training phase, the input class is Tomato, the predicted probability distribution should tend towards the actual probability distribution of Tomato. If the predicted probability distribution is not closer to the actual one, the model has to adjust its weight. This is where cross-entropy becomes a tool to calculate how much far the predicted probability distribution from the actual one is. In other words, Cross-entropy can be considered as a way to measure the distance between two probability distributions. The following image illustrates the intuition behind cross-entropy:</p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/121667.JPG" alt="Intuition behind croos-entropy (credit - machinelearningknowledge.ai" loading="lazy"><figcaption class="wp-element-caption">FIg 3: Intuition behind croos-entropy (credit – machinelearningknowledge.ai )</figcaption></figure></div>


<p>This was just an intuition behind cross-entropy. It has its origin in information theory. Now with this understanding of cross-entropy, let us now see the classification cost functions.</p>



<h4 class="wp-block-heading" id="h-2-1-multi-class-classification-cost-functions"><strong>2.1 Multi-class Classification cost Functions</strong></h4>



<p>This cost function is used in the classification problems where there are multiple classes and input data belongs to only one class. Let us now understand how cross-entropy is calculated. Let us assume that the model gives the probability distribution as below for ‘n’ classes &amp; for a particular input data D.</p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/8357111.JPG" alt="particular input data D" loading="lazy"></figure></div>


<p><span style="font-size: 16px; text-align: justify;">And the actual or target probability distribution of the data D is</span></p>


<div class="wp-block-image">
<figure class="aligncenter"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/9109912.JPG" alt="probability distribution" loading="lazy"></figure></div>


<p>Then cross-entropy for that particular data D is calculated as</p>



<p>Cross-entropy loss(y,p) = – y<sup>T</sup> log(p)</p>



<p>= -(y<sub>1 </sub>log(p<sub>1</sub>) + y<sub>2 </sub>log(p<sub>2</sub>) + ……y<sub>n </sub>log(p<sub>n</sub>) )</p>



<figure class="wp-block-image"><img decoding="async" src="https://editor.analyticsvidhya.com/uploads/7256614.JPG" alt="Cross-entropy loss" loading="lazy"></figure>



<p>Let us now define the cost function using the above example (Refer cross entropy image -Fig3),</p>



<p>p(Tomato) = [0.1, 0.3, 0.6]



</p><p>y(Tomato) = [0, 0, 1]



</p><p>Cross-Entropy(y,P) = – (0*Log(0.1) + 0*Log(0.3)+1*Log(0.6)) = 0.51</p>



<p>The above formula just measures the cross-entropy for a single observation or input data. The error in classification for the complete model is given by categorical cross-entropy which is nothing but the mean of cross-entropy for all N training data.</p>



<p>Categorical Cross-Entropy = (Sum of Cross-Entropy for N data)/N</p>



<h4 class="wp-block-heading" id="h-2-2-nbsp-binary-cross-entropy-cost-function"><strong>2.2&nbsp;Binary Cross Entropy Cost Function</strong></h4>



<p>Binary cross-entropy is a special case of categorical cross-entropy when there is only one output that just assumes a binary value of 0 or 1 to denote negative and positive class respectively. For example-classification between cat &amp; dog.</p>



<p>Let us assume that actual output is denoted by a single variable y, then cross-entropy for a particular data D is can be simplified as follows –</p>



<p>Cross-entropy(D) = – y*log(p) when y = 1</p>



<p>Cross-entropy(D) = – (1-y)*log(1-p) when y = 0</p>



<p>The error in binary classification for the complete model is given by binary cross-entropy which is nothing but the mean of cross-entropy for all N training data.</p>



<p>Binary Cross-Entropy = (Sum of Cross-Entropy for N data)/N</p>



<h2 class="wp-block-heading" id="h-conclusion">Conclusion</h2>



<p>Cost Function in Machine <a href="https://www.analyticsvidhya.com/blog/2020/10/how-does-the-gradient-descent-algorithm-work-in-machine-learning/">learning</a> ,is a way to measure how well a model predicts outcomes. It’s crucial because it tells us how accurate our predictions are and guides us in improving the model’s performance. Different types of cost <a href="https://www.analyticsvidhya.com/blog/2022/06/understanding-loss-function-in-deep-learning/">functions</a> exist for tasks like predicting numbers or categories.</p>











<p>I hope you found this article helpful! Let me know what you think, especially if there are suggestions for improvement. You can connect with me on LinkedIn:&nbsp;<a href="https://www.linkedin.com/in/saily-shah/" target="_blank" rel="noopener noreferrer">https://www.linkedin.com/in/saily-shah/</a>&nbsp;and here’s my GitHub profile:&nbsp;<a href="https://github.com/sailyshah" target="_blank" rel="noopener noreferrer">https://github.com/sailyshah</a></p>
