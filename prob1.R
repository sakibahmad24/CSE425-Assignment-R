n <- 100+65+(10-5)
n
a <- seq(5,n,5)
print(a)

b <- seq(87, (88-length(a)), -1)
print(b)

d <- a*b

# 1.A solution
d[19:21]

# 1.B Solution
less <- d[d<2000]
less

# 1.C Solution
greaterSixk <- d[d>6000]
	length(greaterSixk)

# 1.D Solution
sum(d)
median(d)
sd(d)

# 1.E Solution
x <- matrix(r, nrow = 2, ncol = 3)
y <- matrix(w, nrow = 3, ncol = 4)
x %*% y