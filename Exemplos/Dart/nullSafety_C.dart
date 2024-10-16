void main() {
	String? nullableString = null;
	String nonNullableString = nullableString ?? "Default value";

	print(nonNullableString); // Output: Default value
}