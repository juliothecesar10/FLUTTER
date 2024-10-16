void main() {
	String? nullableString = null;
	int? length = nullableString?.length;

	print(length); // Output: null
}