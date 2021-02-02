
// from [ARM:astc-encoder] quantization_and_transfer_table quant_and_xfer_tables
#define WEIGHT_QUANTIZE_NUM 32
static const int scramble_table[12 * WEIGHT_QUANTIZE_NUM] = {
	// quantization method 0, range 0..1
	//{
		0, 1,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 1, range 0..2
	//{
		0, 1, 2,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 2, range 0..3
	//{
		0, 1, 2, 3,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 3, range 0..4
	//{
		0, 1, 2, 3, 4,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 4, range 0..5
	//{
		0, 2, 4, 5, 3, 1,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 5, range 0..7
	//{
		0, 1, 2, 3, 4, 5, 6, 7,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 6, range 0..9
	//{
		0, 2, 4, 6, 8, 9, 7, 5, 3, 1,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 7, range 0..11
	//{
		0, 4, 8, 2, 6, 10, 11, 7, 3, 9, 5, 1,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 8, range 0..15
	//{
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 9, range 0..19
	//{
		0, 4, 8, 12, 16, 2, 6, 10, 14, 18, 19, 15, 11, 7, 3, 17, 13, 9, 5, 1,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 10, range 0..23
	//{
		0, 8, 16, 2, 10, 18, 4, 12, 20, 6, 14, 22, 23, 15, 7, 21, 13, 5, 19,
		11, 3, 17, 9, 1, 0, 0, 0, 0, 0, 0, 0, 0,
	//},
	// quantization method 11, range 0..31
	//{
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
		20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
	//}

};

// endpoint method only use
/*
	QUANT_12
	QUANT_24
	QUANT_32
	QUANT_48
	QUANT_64
	QUANT_96
	QUANT_192
	QUANT_256
*/
#define COLOR_QUANTIZE_NUM 256
static const int color_quantize_table[8 * COLOR_QUANTIZE_NUM] = {
	// QUANT_12
	//{
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4,
		4, 4, 4, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 2, 2, 2, 2, 2, 2,
		2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2,
		2, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6,
		6, 6, 6, 6, 6, 6, 6, 6, 6, 10, 10, 10, 10, 10, 10, 10,
		10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10,
		11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11, 11,
		11, 11, 11, 11, 11, 11, 11, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 3,
		3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3,
		3, 3, 3, 3, 3, 3, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9,
		9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 5, 5, 5,
		5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5,
		5, 5, 5, 5, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
	//},

	// QUANT_24
	//{
		0, 0, 0, 0, 0, 0, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8,
		8, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 16, 2, 2, 2, 2,
		2, 2, 2, 2, 2, 2, 2, 10, 10, 10, 10, 10, 10, 10, 10, 10,
		10, 10, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 4, 4, 12, 12, 12, 12, 12, 12, 12, 12,
		12, 12, 12, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 20, 6, 6,
		6, 6, 6, 6, 6, 6, 6, 6, 6, 14, 14, 14, 14, 14, 14, 14,
		14, 14, 14, 14, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22, 22,
		23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 15, 15, 15, 15,
		15, 15, 15, 15, 15, 15, 15, 7, 7, 7, 7, 7, 7, 7, 7, 7,
		7, 7, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21, 13, 13, 13,
		13, 13, 13, 13, 13, 13, 13, 13, 5, 5, 5, 5, 5, 5, 5, 5,
		5, 5, 5, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 19, 11, 11,
		11, 11, 11, 11, 11, 11, 11, 11, 11, 3, 3, 3, 3, 3, 3, 3,
		3, 3, 3, 3, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17, 9,
		9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 1, 1, 1, 1, 1, 1,
	//},

	// QUANT_32
	//{
		0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2,
		2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4,
		4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6,
		6, 6, 6, 6, 6, 6, 7, 7, 7, 7, 7, 7, 7, 7, 8, 8,
		8, 8, 8, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9, 10,
		10, 10, 10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11, 12,
		12, 12, 12, 12, 12, 12, 12, 12, 13, 13, 13, 13, 13, 13, 13, 13,
		14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 15, 15, 15, 15, 15,
		16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17,
		18, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19, 19, 19, 19, 19, 19,
		19, 20, 20, 20, 20, 20, 20, 20, 20, 21, 21, 21, 21, 21, 21, 21,
		21, 22, 22, 22, 22, 22, 22, 22, 22, 23, 23, 23, 23, 23, 23, 23,
		23, 23, 24, 24, 24, 24, 24, 24, 24, 24, 25, 25, 25, 25, 25, 25,
		25, 25, 26, 26, 26, 26, 26, 26, 26, 26, 27, 27, 27, 27, 27, 27,
		27, 27, 27, 28, 28, 28, 28, 28, 28, 28, 28, 29, 29, 29, 29, 29,
		29, 29, 29, 30, 30, 30, 30, 30, 30, 30, 30, 31, 31, 31, 31, 31,
	//},

	// QUANT_48
	//{
		0, 0, 0, 16, 16, 16, 16, 16, 16, 32, 32, 32, 32, 32, 2, 2,
		2, 2, 2, 18, 18, 18, 18, 18, 18, 34, 34, 34, 34, 34, 4, 4,
		4, 4, 4, 4, 20, 20, 20, 20, 20, 36, 36, 36, 36, 36, 6, 6,
		6, 6, 6, 6, 22, 22, 22, 22, 22, 38, 38, 38, 38, 38, 38, 8,
		8, 8, 8, 8, 24, 24, 24, 24, 24, 24, 40, 40, 40, 40, 40, 10,
		10, 10, 10, 10, 26, 26, 26, 26, 26, 26, 42, 42, 42, 42, 42, 12,
		12, 12, 12, 12, 12, 28, 28, 28, 28, 28, 44, 44, 44, 44, 44, 14,
		14, 14, 14, 14, 14, 30, 30, 30, 30, 30, 46, 46, 46, 46, 46, 46,
		47, 47, 47, 47, 47, 47, 31, 31, 31, 31, 31, 15, 15, 15, 15, 15,
		15, 45, 45, 45, 45, 45, 29, 29, 29, 29, 29, 13, 13, 13, 13, 13,
		13, 43, 43, 43, 43, 43, 27, 27, 27, 27, 27, 27, 11, 11, 11, 11,
		11, 41, 41, 41, 41, 41, 25, 25, 25, 25, 25, 25, 9, 9, 9, 9,
		9, 39, 39, 39, 39, 39, 39, 23, 23, 23, 23, 23, 7, 7, 7, 7,
		7, 7, 37, 37, 37, 37, 37, 21, 21, 21, 21, 21, 5, 5, 5, 5,
		5, 5, 35, 35, 35, 35, 35, 19, 19, 19, 19, 19, 19, 3, 3, 3,
		3, 3, 33, 33, 33, 33, 33, 17, 17, 17, 17, 17, 17, 1, 1, 1,
	//},

	// QUANT_64
	//{
		0, 0, 0, 1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4,
		4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8,
		8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 11, 11, 11, 11, 12,
		12, 12, 12, 13, 13, 13, 13, 14, 14, 14, 14, 15, 15, 15, 15, 16,
		16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18, 19, 19, 19, 19,
		20, 20, 20, 20, 21, 21, 21, 21, 22, 22, 22, 22, 23, 23, 23, 23,
		24, 24, 24, 24, 25, 25, 25, 25, 26, 26, 26, 26, 27, 27, 27, 27,
		28, 28, 28, 28, 29, 29, 29, 29, 30, 30, 30, 30, 31, 31, 31, 31,
		32, 32, 32, 32, 33, 33, 33, 33, 34, 34, 34, 34, 35, 35, 35, 35,
		36, 36, 36, 36, 37, 37, 37, 37, 38, 38, 38, 38, 39, 39, 39, 39,
		40, 40, 40, 40, 41, 41, 41, 41, 42, 42, 42, 42, 43, 43, 43, 43,
		44, 44, 44, 44, 45, 45, 45, 45, 46, 46, 46, 46, 47, 47, 47, 47,
		47, 48, 48, 48, 48, 49, 49, 49, 49, 50, 50, 50, 50, 51, 51, 51,
		51, 52, 52, 52, 52, 53, 53, 53, 53, 54, 54, 54, 54, 55, 55, 55,
		55, 56, 56, 56, 56, 57, 57, 57, 57, 58, 58, 58, 58, 59, 59, 59,
		59, 60, 60, 60, 60, 61, 61, 61, 61, 62, 62, 62, 62, 63, 63, 63,
	//},

	// QUANT_96
	//{
		0, 0, 32, 32, 64, 64, 64, 2, 2, 2, 34, 34, 66, 66, 66, 4,
		4, 4, 36, 36, 68, 68, 68, 6, 6, 6, 38, 38, 70, 70, 70, 8,
		8, 8, 40, 40, 40, 72, 72, 10, 10, 10, 42, 42, 42, 74, 74, 12,
		12, 12, 44, 44, 44, 76, 76, 14, 14, 14, 46, 46, 46, 78, 78, 16,
		16, 16, 48, 48, 48, 80, 80, 80, 18, 18, 50, 50, 50, 82, 82, 82,
		20, 20, 52, 52, 52, 84, 84, 84, 22, 22, 54, 54, 54, 86, 86, 86,
		24, 24, 56, 56, 56, 88, 88, 88, 26, 26, 58, 58, 58, 90, 90, 90,
		28, 28, 60, 60, 60, 92, 92, 92, 30, 30, 62, 62, 62, 94, 94, 94,
		95, 95, 95, 63, 63, 63, 31, 31, 93, 93, 93, 61, 61, 61, 29, 29,
		91, 91, 91, 59, 59, 59, 27, 27, 89, 89, 89, 57, 57, 57, 25, 25,
		87, 87, 87, 55, 55, 55, 23, 23, 85, 85, 85, 53, 53, 53, 21, 21,
		83, 83, 83, 51, 51, 51, 19, 19, 81, 81, 81, 49, 49, 49, 17, 17,
		17, 79, 79, 47, 47, 47, 15, 15, 15, 77, 77, 45, 45, 45, 13, 13,
		13, 75, 75, 43, 43, 43, 11, 11, 11, 73, 73, 41, 41, 41, 9, 9,
		9, 71, 71, 71, 39, 39, 7, 7, 7, 69, 69, 69, 37, 37, 5, 5,
		5, 67, 67, 67, 35, 35, 3, 3, 3, 65, 65, 65, 33, 33, 1, 1,
	//},

	// QUANT_192
	//{
		0, 64, 128, 128, 2, 66, 130, 130, 4, 68, 132, 132, 6, 70, 134, 134,
		8, 72, 136, 136, 10, 74, 138, 138, 12, 76, 140, 140, 14, 78, 142, 142,
		16, 80, 144, 144, 18, 82, 146, 146, 20, 84, 148, 148, 22, 86, 150, 150,
		24, 88, 152, 152, 26, 90, 154, 154, 28, 92, 156, 156, 30, 94, 158, 158,
		32, 96, 160, 160, 34, 98, 162, 162, 36, 100, 164, 164, 38, 102, 166, 166,
		40, 104, 168, 168, 42, 106, 170, 170, 44, 108, 172, 172, 46, 110, 174, 174,
		48, 112, 176, 176, 50, 114, 178, 178, 52, 116, 180, 180, 54, 118, 182, 182,
		56, 120, 184, 184, 58, 122, 186, 186, 60, 124, 188, 188, 62, 126, 190, 190,
		191, 191, 127, 63, 189, 189, 125, 61, 187, 187, 123, 59, 185, 185, 121, 57,
		183, 183, 119, 55, 181, 181, 117, 53, 179, 179, 115, 51, 177, 177, 113, 49,
		175, 175, 111, 47, 173, 173, 109, 45, 171, 171, 107, 43, 169, 169, 105, 41,
		167, 167, 103, 39, 165, 165, 101, 37, 163, 163, 99, 35, 161, 161, 97, 33,
		159, 159, 95, 31, 157, 157, 93, 29, 155, 155, 91, 27, 153, 153, 89, 25,
		151, 151, 87, 23, 149, 149, 85, 21, 147, 147, 83, 19, 145, 145, 81, 17,
		143, 143, 79, 15, 141, 141, 77, 13, 139, 139, 75, 11, 137, 137, 73, 9,
		135, 135, 71, 7, 133, 133, 69, 5, 131, 131, 67, 3, 129, 129, 65, 1,
	//},

	// QUANT_256
	//{
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
		16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
		32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
		48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
		64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
		80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95,
		96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
		112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127,
		128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143,
		144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
		160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175,
		176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191,
		192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207,
		208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223,
		224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
		240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255,
	//}
};

static const int color_unquantize_table[8 * COLOR_QUANTIZE_NUM] = {

	// QUANT_12
	//{
		0, 255, 69, 186, 23, 232, 92, 163, 46, 209, 116, 139, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_24
	//{
		0, 255, 33, 222, 66, 189, 99, 156, 11, 244, 44, 211, 77, 178, 110, 145,
		22, 233, 55, 200, 88, 167, 121, 134, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_32
	//{
		0, 8, 16, 24, 33, 41, 49, 57, 66, 74, 82, 90, 99, 107, 115, 123,
		132, 140, 148, 156, 165, 173, 181, 189, 198, 206, 214, 222, 231, 239, 247, 255,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_48
	//{
		0, 255, 16, 239, 32, 223, 48, 207, 65, 190, 81, 174, 97, 158, 113, 142,
		5, 250, 21, 234, 38, 217, 54, 201, 70, 185, 86, 169, 103, 152, 119, 136,
		11, 244, 27, 228, 43, 212, 59, 196, 76, 179, 92, 163, 108, 147, 124, 131,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_64
	//{
		0, 4, 8, 12, 16, 20, 24, 28, 32, 36, 40, 44, 48, 52, 56, 60,
		65, 69, 73, 77, 81, 85, 89, 93, 97, 101, 105, 109, 113, 117, 121, 125,
		130, 134, 138, 142, 146, 150, 154, 158, 162, 166, 170, 174, 178, 182, 186, 190,
		195, 199, 203, 207, 211, 215, 219, 223, 227, 231, 235, 239, 243, 247, 251, 255,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_96
	//{
		0, 255, 8, 247, 16, 239, 24, 231, 32, 223, 40, 215, 48, 207, 56, 199,
		64, 191, 72, 183, 80, 175, 88, 167, 96, 159, 104, 151, 112, 143, 120, 135,
		2, 253, 10, 245, 18, 237, 26, 229, 35, 220, 43, 212, 51, 204, 59, 196,
		67, 188, 75, 180, 83, 172, 91, 164, 99, 156, 107, 148, 115, 140, 123, 132,
		5, 250, 13, 242, 21, 234, 29, 226, 37, 218, 45, 210, 53, 202, 61, 194,
		70, 185, 78, 177, 86, 169, 94, 161, 102, 153, 110, 145, 118, 137, 126, 129,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_192
	//{
		0, 255, 4, 251, 8, 247, 12, 243, 16, 239, 20, 235, 24, 231, 28, 227,
		32, 223, 36, 219, 40, 215, 44, 211, 48, 207, 52, 203, 56, 199, 60, 195,
		64, 191, 68, 187, 72, 183, 76, 179, 80, 175, 84, 171, 88, 167, 92, 163,
		96, 159, 100, 155, 104, 151, 108, 147, 112, 143, 116, 139, 120, 135, 124, 131,
		1, 254, 5, 250, 9, 246, 13, 242, 17, 238, 21, 234, 25, 230, 29, 226,
		33, 222, 37, 218, 41, 214, 45, 210, 49, 206, 53, 202, 57, 198, 61, 194,
		65, 190, 69, 186, 73, 182, 77, 178, 81, 174, 85, 170, 89, 166, 93, 162,
		97, 158, 101, 154, 105, 150, 109, 146, 113, 142, 117, 138, 121, 134, 125, 130,
		2, 253, 6, 249, 10, 245, 14, 241, 18, 237, 22, 233, 26, 229, 30, 225,
		34, 221, 38, 217, 42, 213, 46, 209, 50, 205, 54, 201, 58, 197, 62, 193,
		66, 189, 70, 185, 74, 181, 78, 177, 82, 173, 86, 169, 90, 165, 94, 161,
		98, 157, 102, 153, 106, 149, 110, 145, 114, 141, 118, 137, 122, 133, 126, 129,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
		0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
	//},

	// QUANT_256
	//{
		0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
		16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31,
		32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47,
		48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63,
		64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79,
		80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95,
		96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111,
		112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127,
		128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143,
		144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159,
		160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175,
		176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191,
		192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207,
		208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223,
		224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239,
		240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250, 251, 252, 253, 254, 255,
	//},
};

static const int integer_from_trits[3][3][3][3][3] =
{
	{{{{0,1,2},{4,5,6},{8,9,10}},{{16,17,18},{20,21,22},{24,25,26}},{{3,7,15},{19,23,27},{12,13,14}}},{{{32,33,34},{36,37,38},{40,41,42}},{{48,49,50},{52,53,54},{56,57,58}},{{35,39,47},{51,55,59},{44,45,46}}},{{{64,65,66},{68,69,70},{72,73,74}},{{80,81,82},{84,85,86},{88,89,90}},{{67,71,79},{83,87,91},{76,77,78}}}},{{{{128,129,130},{132,133,134},{136,137,138}},{{144,145,146},{148,149,150},{152,153,154}},{{131,135,143},{147,151,155},{140,141,142}}},{{{160,161,162},{164,165,166},{168,169,170}},{{176,177,178},{180,181,182},{184,185,186}},{{163,167,175},{179,183,187},{172,173,174}}},{{{192,193,194},{196,197,198},{200,201,202}},{{208,209,210},{212,213,214},{216,217,218}},{{195,199,207},{211,215,219},{204,205,206}}}},{{{{96,97,98},{100,101,102},{104,105,106}},{{112,113,114},{116,117,118},{120,121,122}},{{99,103,111},{115,119,123},{108,109,110}}},{{{224,225,226},{228,229,230},{232,233,234}},{{240,241,242},{244,245,246},{248,249,250}},{{227,231,239},{243,247,251},{236,237,238}}},{{{28,29,30},{60,61,62},{92,93,94}},{{156,157,158},{188,189,190},{220,221,222}},{{31,63,127},{159,191,255},{252,253,254}}}}
};

static const int integer_from_quints[5][5][5] =
{
	{{0,1,2,3,4},{8,9,10,11,12},{16,17,18,19,20},{24,25,26,27,28},{5,13,21,29,6}},{{32,33,34,35,36},{40,41,42,43,44},{48,49,50,51,52},{56,57,58,59,60},{37,45,53,61,14}},{{64,65,66,67,68},{72,73,74,75,76},{80,81,82,83,84},{88,89,90,91,92},{69,77,85,93,22}},{{96,97,98,99,100},{104,105,106,107,108},{112,113,114,115,116},{120,121,122,123,124},{101,109,117,125,30}},{{102,103,70,71,38},{110,111,78,79,46},{118,119,86,87,54},{126,127,94,95,62},{39,47,55,63,31}}
};

