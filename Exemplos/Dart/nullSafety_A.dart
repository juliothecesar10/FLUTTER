void main() {
	String? nullableString = "Hello";
	String nonNullableString = nullableString!;

	print(nonNullableString); // Output: Hello
}