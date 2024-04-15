// TRY CATCH
/*
`try` - (araket kylyp kor)
`{}` - try bodysy (emne kyluu kerektigi jazylat)
`catch` - (egerge bir kata bolso)
`(e, s)` - e -> kata error, s -> error'dun line (kata chykkan line)
         - error, stackTrace
*/

void main() {
  try {
    final a = '23';
    final b = num.parse(a);
    print(b + 3);
    final a1 = 'Eldiiar';
    final b2 = num.parse(a1);
    print(b2 + 3);
    final a3 = '233';
    final b3 = num.parse(a3);
    print(b3 + 3);
  } catch (e, s) {
    print('Error: $e \n line: $s');
    print('kata boldu');
  }
}
