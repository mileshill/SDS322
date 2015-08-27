from decimal import *
getcontext().prec = 28

def main():

	epsilon = 1.0

	print("{0:^20} {1:^20}".format("one+ ep","ep"))

	for i in range(61):

		epsilon = epsilon / 2.0
		val = 1.0 + epsilon

		print("{0:.20f} {1:.20f}".format(val, epsilon))



if __name__ == "__main__":
	main()

