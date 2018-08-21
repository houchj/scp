namespace com.sap;
using User from '@sap/cds/common';
using Country from '@sap/cds/common';
using managed from '@sap/cds/common';

@Common.Label:'Books from annotation' entity Books {
  key ID : Integer;
  @Common.Label: 'Book Title from Annotation' title  : localized String;
  author : Association to Authors;
  stock  : Integer;
  @Common.ValueList: ['abc', 'def'] test : String;
}

entity Authors {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author = $self;
}

entity Orders : managed {
  key ID  : UUID;
  book    : Association to Books;
  country : Country;
  amount  : Integer;
}
