// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userAccTypeMeta =
      const VerificationMeta('userAccType');
  @override
  late final GeneratedColumn<int> userAccType = GeneratedColumn<int>(
      'user_acc_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _groupIdMeta =
      const VerificationMeta('groupId');
  @override
  late final GeneratedColumn<int> groupId = GeneratedColumn<int>(
      'group_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, userName, password, userAccType, branchId, groupId, image, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    } else if (isInserting) {
      context.missing(_userNameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('user_acc_type')) {
      context.handle(
          _userAccTypeMeta,
          userAccType.isAcceptableOrUnknown(
              data['user_acc_type']!, _userAccTypeMeta));
    } else if (isInserting) {
      context.missing(_userAccTypeMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('group_id')) {
      context.handle(_groupIdMeta,
          groupId.isAcceptableOrUnknown(data['group_id']!, _groupIdMeta));
    } else if (isInserting) {
      context.missing(_groupIdMeta);
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    } else if (isInserting) {
      context.missing(_imageMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      userAccType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_acc_type'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      groupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}group_id'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableCompanion extends UpdateCompanion<UserModel> {
  final Value<int> id;
  final Value<String> userName;
  final Value<String> password;
  final Value<int> userAccType;
  final Value<int> branchId;
  final Value<int> groupId;
  final Value<String> image;
  final Value<String> note;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.userName = const Value.absent(),
    this.password = const Value.absent(),
    this.userAccType = const Value.absent(),
    this.branchId = const Value.absent(),
    this.groupId = const Value.absent(),
    this.image = const Value.absent(),
    this.note = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String userName,
    required String password,
    required int userAccType,
    required int branchId,
    required int groupId,
    required String image,
    required String note,
  })  : userName = Value(userName),
        password = Value(password),
        userAccType = Value(userAccType),
        branchId = Value(branchId),
        groupId = Value(groupId),
        image = Value(image),
        note = Value(note);
  static Insertable<UserModel> custom({
    Expression<int>? id,
    Expression<String>? userName,
    Expression<String>? password,
    Expression<int>? userAccType,
    Expression<int>? branchId,
    Expression<int>? groupId,
    Expression<String>? image,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userName != null) 'user_name': userName,
      if (password != null) 'password': password,
      if (userAccType != null) 'user_acc_type': userAccType,
      if (branchId != null) 'branch_id': branchId,
      if (groupId != null) 'group_id': groupId,
      if (image != null) 'image': image,
      if (note != null) 'note': note,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? userName,
      Value<String>? password,
      Value<int>? userAccType,
      Value<int>? branchId,
      Value<int>? groupId,
      Value<String>? image,
      Value<String>? note}) {
    return UserTableCompanion(
      id: id ?? this.id,
      userName: userName ?? this.userName,
      password: password ?? this.password,
      userAccType: userAccType ?? this.userAccType,
      branchId: branchId ?? this.branchId,
      groupId: groupId ?? this.groupId,
      image: image ?? this.image,
      note: note ?? this.note,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (userAccType.present) {
      map['user_acc_type'] = Variable<int>(userAccType.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (groupId.present) {
      map['group_id'] = Variable<int>(groupId.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('userName: $userName, ')
          ..write('password: $password, ')
          ..write('userAccType: $userAccType, ')
          ..write('branchId: $branchId, ')
          ..write('groupId: $groupId, ')
          ..write('image: $image, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $BranchTableTable extends BranchTable
    with TableInfo<$BranchTableTable, BranchInfoModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BranchTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _companyIdMeta =
      const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<int> companyId = GeneratedColumn<int>(
      'company_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _arReportHeaderMeta =
      const VerificationMeta('arReportHeader');
  @override
  late final GeneratedColumn<String> arReportHeader = GeneratedColumn<String>(
      'ar_report_header', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enReportHeaderMeta =
      const VerificationMeta('enReportHeader');
  @override
  late final GeneratedColumn<String> enReportHeader = GeneratedColumn<String>(
      'en_report_header', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<String> logo = GeneratedColumn<String>(
      'logo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        companyId,
        name,
        address,
        phone,
        email,
        arReportHeader,
        enReportHeader,
        logo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'branch_table';
  @override
  VerificationContext validateIntegrity(Insertable<BranchInfoModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('company_id')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['company_id']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('ar_report_header')) {
      context.handle(
          _arReportHeaderMeta,
          arReportHeader.isAcceptableOrUnknown(
              data['ar_report_header']!, _arReportHeaderMeta));
    } else if (isInserting) {
      context.missing(_arReportHeaderMeta);
    }
    if (data.containsKey('en_report_header')) {
      context.handle(
          _enReportHeaderMeta,
          enReportHeader.isAcceptableOrUnknown(
              data['en_report_header']!, _enReportHeaderMeta));
    } else if (isInserting) {
      context.missing(_enReportHeaderMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  BranchInfoModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return BranchInfoModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      companyId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}company_id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      phone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      arReportHeader: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}ar_report_header'])!,
      enReportHeader: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}en_report_header'])!,
      logo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo'])!,
    );
  }

  @override
  $BranchTableTable createAlias(String alias) {
    return $BranchTableTable(attachedDatabase, alias);
  }
}

class BranchTableCompanion extends UpdateCompanion<BranchInfoModel> {
  final Value<int> id;
  final Value<int> companyId;
  final Value<String> name;
  final Value<String> address;
  final Value<String> phone;
  final Value<String> email;
  final Value<String> arReportHeader;
  final Value<String> enReportHeader;
  final Value<String> logo;
  final Value<int> rowid;
  const BranchTableCompanion({
    this.id = const Value.absent(),
    this.companyId = const Value.absent(),
    this.name = const Value.absent(),
    this.address = const Value.absent(),
    this.phone = const Value.absent(),
    this.email = const Value.absent(),
    this.arReportHeader = const Value.absent(),
    this.enReportHeader = const Value.absent(),
    this.logo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  BranchTableCompanion.insert({
    required int id,
    required int companyId,
    required String name,
    required String address,
    required String phone,
    required String email,
    required String arReportHeader,
    required String enReportHeader,
    required String logo,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        companyId = Value(companyId),
        name = Value(name),
        address = Value(address),
        phone = Value(phone),
        email = Value(email),
        arReportHeader = Value(arReportHeader),
        enReportHeader = Value(enReportHeader),
        logo = Value(logo);
  static Insertable<BranchInfoModel> custom({
    Expression<int>? id,
    Expression<int>? companyId,
    Expression<String>? name,
    Expression<String>? address,
    Expression<String>? phone,
    Expression<String>? email,
    Expression<String>? arReportHeader,
    Expression<String>? enReportHeader,
    Expression<String>? logo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (companyId != null) 'company_id': companyId,
      if (name != null) 'name': name,
      if (address != null) 'address': address,
      if (phone != null) 'phone': phone,
      if (email != null) 'email': email,
      if (arReportHeader != null) 'ar_report_header': arReportHeader,
      if (enReportHeader != null) 'en_report_header': enReportHeader,
      if (logo != null) 'logo': logo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  BranchTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? companyId,
      Value<String>? name,
      Value<String>? address,
      Value<String>? phone,
      Value<String>? email,
      Value<String>? arReportHeader,
      Value<String>? enReportHeader,
      Value<String>? logo,
      Value<int>? rowid}) {
    return BranchTableCompanion(
      id: id ?? this.id,
      companyId: companyId ?? this.companyId,
      name: name ?? this.name,
      address: address ?? this.address,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      arReportHeader: arReportHeader ?? this.arReportHeader,
      enReportHeader: enReportHeader ?? this.enReportHeader,
      logo: logo ?? this.logo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (companyId.present) {
      map['company_id'] = Variable<int>(companyId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (arReportHeader.present) {
      map['ar_report_header'] = Variable<String>(arReportHeader.value);
    }
    if (enReportHeader.present) {
      map['en_report_header'] = Variable<String>(enReportHeader.value);
    }
    if (logo.present) {
      map['logo'] = Variable<String>(logo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BranchTableCompanion(')
          ..write('id: $id, ')
          ..write('companyId: $companyId, ')
          ..write('name: $name, ')
          ..write('address: $address, ')
          ..write('phone: $phone, ')
          ..write('email: $email, ')
          ..write('arReportHeader: $arReportHeader, ')
          ..write('enReportHeader: $enReportHeader, ')
          ..write('logo: $logo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CompanyTableTable extends CompanyTable
    with TableInfo<$CompanyTableTable, CompanyModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CompanyTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _enNameMeta = const VerificationMeta('enName');
  @override
  late final GeneratedColumn<String> enName = GeneratedColumn<String>(
      'en_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortNameMeta =
      const VerificationMeta('shortName');
  @override
  late final GeneratedColumn<String> shortName = GeneratedColumn<String>(
      'short_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _shortEnNameMeta =
      const VerificationMeta('shortEnName');
  @override
  late final GeneratedColumn<String> shortEnName = GeneratedColumn<String>(
      'short_en_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _webSiteMeta =
      const VerificationMeta('webSite');
  @override
  late final GeneratedColumn<String> webSite = GeneratedColumn<String>(
      'web_site', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _logoMeta = const VerificationMeta('logo');
  @override
  late final GeneratedColumn<String> logo = GeneratedColumn<String>(
      'logo', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, enName, shortName, shortEnName, webSite, address, note, logo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'company_table';
  @override
  VerificationContext validateIntegrity(Insertable<CompanyModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('en_name')) {
      context.handle(_enNameMeta,
          enName.isAcceptableOrUnknown(data['en_name']!, _enNameMeta));
    } else if (isInserting) {
      context.missing(_enNameMeta);
    }
    if (data.containsKey('short_name')) {
      context.handle(_shortNameMeta,
          shortName.isAcceptableOrUnknown(data['short_name']!, _shortNameMeta));
    } else if (isInserting) {
      context.missing(_shortNameMeta);
    }
    if (data.containsKey('short_en_name')) {
      context.handle(
          _shortEnNameMeta,
          shortEnName.isAcceptableOrUnknown(
              data['short_en_name']!, _shortEnNameMeta));
    } else if (isInserting) {
      context.missing(_shortEnNameMeta);
    }
    if (data.containsKey('web_site')) {
      context.handle(_webSiteMeta,
          webSite.isAcceptableOrUnknown(data['web_site']!, _webSiteMeta));
    } else if (isInserting) {
      context.missing(_webSiteMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('logo')) {
      context.handle(
          _logoMeta, logo.isAcceptableOrUnknown(data['logo']!, _logoMeta));
    } else if (isInserting) {
      context.missing(_logoMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CompanyModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CompanyModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      enName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}en_name'])!,
      shortName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}short_name'])!,
      shortEnName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}short_en_name'])!,
      webSite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}web_site'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      logo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}logo'])!,
    );
  }

  @override
  $CompanyTableTable createAlias(String alias) {
    return $CompanyTableTable(attachedDatabase, alias);
  }
}

class CompanyTableCompanion extends UpdateCompanion<CompanyModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> enName;
  final Value<String> shortName;
  final Value<String> shortEnName;
  final Value<String> webSite;
  final Value<String> address;
  final Value<String> note;
  final Value<String> logo;
  final Value<int> rowid;
  const CompanyTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.enName = const Value.absent(),
    this.shortName = const Value.absent(),
    this.shortEnName = const Value.absent(),
    this.webSite = const Value.absent(),
    this.address = const Value.absent(),
    this.note = const Value.absent(),
    this.logo = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CompanyTableCompanion.insert({
    required int id,
    required String name,
    required String enName,
    required String shortName,
    required String shortEnName,
    required String webSite,
    required String address,
    required String note,
    required String logo,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        enName = Value(enName),
        shortName = Value(shortName),
        shortEnName = Value(shortEnName),
        webSite = Value(webSite),
        address = Value(address),
        note = Value(note),
        logo = Value(logo);
  static Insertable<CompanyModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? enName,
    Expression<String>? shortName,
    Expression<String>? shortEnName,
    Expression<String>? webSite,
    Expression<String>? address,
    Expression<String>? note,
    Expression<String>? logo,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (enName != null) 'en_name': enName,
      if (shortName != null) 'short_name': shortName,
      if (shortEnName != null) 'short_en_name': shortEnName,
      if (webSite != null) 'web_site': webSite,
      if (address != null) 'address': address,
      if (note != null) 'note': note,
      if (logo != null) 'logo': logo,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CompanyTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? enName,
      Value<String>? shortName,
      Value<String>? shortEnName,
      Value<String>? webSite,
      Value<String>? address,
      Value<String>? note,
      Value<String>? logo,
      Value<int>? rowid}) {
    return CompanyTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      enName: enName ?? this.enName,
      shortName: shortName ?? this.shortName,
      shortEnName: shortEnName ?? this.shortEnName,
      webSite: webSite ?? this.webSite,
      address: address ?? this.address,
      note: note ?? this.note,
      logo: logo ?? this.logo,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (enName.present) {
      map['en_name'] = Variable<String>(enName.value);
    }
    if (shortName.present) {
      map['short_name'] = Variable<String>(shortName.value);
    }
    if (shortEnName.present) {
      map['short_en_name'] = Variable<String>(shortEnName.value);
    }
    if (webSite.present) {
      map['web_site'] = Variable<String>(webSite.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (logo.present) {
      map['logo'] = Variable<String>(logo.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CompanyTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('enName: $enName, ')
          ..write('shortName: $shortName, ')
          ..write('shortEnName: $shortEnName, ')
          ..write('webSite: $webSite, ')
          ..write('address: $address, ')
          ..write('note: $note, ')
          ..write('logo: $logo, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CurrenciesTableTable extends CurrenciesTable
    with TableInfo<$CurrenciesTableTable, CurrenciesModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CurrenciesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String> symbol = GeneratedColumn<String>(
      'symbol', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subNameMeta =
      const VerificationMeta('subName');
  @override
  late final GeneratedColumn<String> subName = GeneratedColumn<String>(
      'sub_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _valueMeta = const VerificationMeta('value');
  @override
  late final GeneratedColumn<int> value = GeneratedColumn<int>(
      'value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _equivelantMeta =
      const VerificationMeta('equivelant');
  @override
  late final GeneratedColumn<int> equivelant = GeneratedColumn<int>(
      'equivelant', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _localCurrencyMeta =
      const VerificationMeta('localCurrency');
  @override
  late final GeneratedColumn<bool> localCurrency = GeneratedColumn<bool>(
      'local_currency', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("local_currency" IN (0, 1))'));
  static const VerificationMeta _storeCurrencyMeta =
      const VerificationMeta('storeCurrency');
  @override
  late final GeneratedColumn<bool> storeCurrency = GeneratedColumn<bool>(
      'store_currency', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("store_currency" IN (0, 1))'));
  static const VerificationMeta _maxValueMeta =
      const VerificationMeta('maxValue');
  @override
  late final GeneratedColumn<int> maxValue = GeneratedColumn<int>(
      'max_value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _minValueMeta =
      const VerificationMeta('minValue');
  @override
  late final GeneratedColumn<int> minValue = GeneratedColumn<int>(
      'min_value', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _newDataMeta =
      const VerificationMeta('newData');
  @override
  late final GeneratedColumn<bool> newData = GeneratedColumn<bool>(
      'new_data', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("new_data" IN (0, 1))'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        name,
        symbol,
        subName,
        value,
        equivelant,
        localCurrency,
        storeCurrency,
        maxValue,
        minValue,
        note,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'currencies_table';
  @override
  VerificationContext validateIntegrity(Insertable<CurrenciesModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('symbol')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['symbol']!, _symbolMeta));
    } else if (isInserting) {
      context.missing(_symbolMeta);
    }
    if (data.containsKey('sub_name')) {
      context.handle(_subNameMeta,
          subName.isAcceptableOrUnknown(data['sub_name']!, _subNameMeta));
    } else if (isInserting) {
      context.missing(_subNameMeta);
    }
    if (data.containsKey('value')) {
      context.handle(
          _valueMeta, value.isAcceptableOrUnknown(data['value']!, _valueMeta));
    } else if (isInserting) {
      context.missing(_valueMeta);
    }
    if (data.containsKey('equivelant')) {
      context.handle(
          _equivelantMeta,
          equivelant.isAcceptableOrUnknown(
              data['equivelant']!, _equivelantMeta));
    } else if (isInserting) {
      context.missing(_equivelantMeta);
    }
    if (data.containsKey('local_currency')) {
      context.handle(
          _localCurrencyMeta,
          localCurrency.isAcceptableOrUnknown(
              data['local_currency']!, _localCurrencyMeta));
    } else if (isInserting) {
      context.missing(_localCurrencyMeta);
    }
    if (data.containsKey('store_currency')) {
      context.handle(
          _storeCurrencyMeta,
          storeCurrency.isAcceptableOrUnknown(
              data['store_currency']!, _storeCurrencyMeta));
    } else if (isInserting) {
      context.missing(_storeCurrencyMeta);
    }
    if (data.containsKey('max_value')) {
      context.handle(_maxValueMeta,
          maxValue.isAcceptableOrUnknown(data['max_value']!, _maxValueMeta));
    } else if (isInserting) {
      context.missing(_maxValueMeta);
    }
    if (data.containsKey('min_value')) {
      context.handle(_minValueMeta,
          minValue.isAcceptableOrUnknown(data['min_value']!, _minValueMeta));
    } else if (isInserting) {
      context.missing(_minValueMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('new_data')) {
      context.handle(_newDataMeta,
          newData.isAcceptableOrUnknown(data['new_data']!, _newDataMeta));
    } else if (isInserting) {
      context.missing(_newDataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  CurrenciesModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CurrenciesModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      symbol: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}symbol'])!,
      subName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sub_name'])!,
      value: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}value'])!,
      equivelant: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}equivelant'])!,
      localCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}local_currency'])!,
      storeCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}store_currency'])!,
      maxValue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_value'])!,
      minValue: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}min_value'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $CurrenciesTableTable createAlias(String alias) {
    return $CurrenciesTableTable(attachedDatabase, alias);
  }
}

class CurrenciesTableCompanion extends UpdateCompanion<CurrenciesModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> symbol;
  final Value<String> subName;
  final Value<int> value;
  final Value<int> equivelant;
  final Value<bool> localCurrency;
  final Value<bool> storeCurrency;
  final Value<int> maxValue;
  final Value<int> minValue;
  final Value<String> note;
  final Value<bool> newData;
  final Value<int> rowid;
  const CurrenciesTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.symbol = const Value.absent(),
    this.subName = const Value.absent(),
    this.value = const Value.absent(),
    this.equivelant = const Value.absent(),
    this.localCurrency = const Value.absent(),
    this.storeCurrency = const Value.absent(),
    this.maxValue = const Value.absent(),
    this.minValue = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CurrenciesTableCompanion.insert({
    required int id,
    required String name,
    required String symbol,
    required String subName,
    required int value,
    required int equivelant,
    required bool localCurrency,
    required bool storeCurrency,
    required int maxValue,
    required int minValue,
    required String note,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        symbol = Value(symbol),
        subName = Value(subName),
        value = Value(value),
        equivelant = Value(equivelant),
        localCurrency = Value(localCurrency),
        storeCurrency = Value(storeCurrency),
        maxValue = Value(maxValue),
        minValue = Value(minValue),
        note = Value(note),
        newData = Value(newData);
  static Insertable<CurrenciesModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? symbol,
    Expression<String>? subName,
    Expression<int>? value,
    Expression<int>? equivelant,
    Expression<bool>? localCurrency,
    Expression<bool>? storeCurrency,
    Expression<int>? maxValue,
    Expression<int>? minValue,
    Expression<String>? note,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (symbol != null) 'symbol': symbol,
      if (subName != null) 'sub_name': subName,
      if (value != null) 'value': value,
      if (equivelant != null) 'equivelant': equivelant,
      if (localCurrency != null) 'local_currency': localCurrency,
      if (storeCurrency != null) 'store_currency': storeCurrency,
      if (maxValue != null) 'max_value': maxValue,
      if (minValue != null) 'min_value': minValue,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CurrenciesTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? symbol,
      Value<String>? subName,
      Value<int>? value,
      Value<int>? equivelant,
      Value<bool>? localCurrency,
      Value<bool>? storeCurrency,
      Value<int>? maxValue,
      Value<int>? minValue,
      Value<String>? note,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return CurrenciesTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      symbol: symbol ?? this.symbol,
      subName: subName ?? this.subName,
      value: value ?? this.value,
      equivelant: equivelant ?? this.equivelant,
      localCurrency: localCurrency ?? this.localCurrency,
      storeCurrency: storeCurrency ?? this.storeCurrency,
      maxValue: maxValue ?? this.maxValue,
      minValue: minValue ?? this.minValue,
      note: note ?? this.note,
      newData: newData ?? this.newData,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (symbol.present) {
      map['symbol'] = Variable<String>(symbol.value);
    }
    if (subName.present) {
      map['sub_name'] = Variable<String>(subName.value);
    }
    if (value.present) {
      map['value'] = Variable<int>(value.value);
    }
    if (equivelant.present) {
      map['equivelant'] = Variable<int>(equivelant.value);
    }
    if (localCurrency.present) {
      map['local_currency'] = Variable<bool>(localCurrency.value);
    }
    if (storeCurrency.present) {
      map['store_currency'] = Variable<bool>(storeCurrency.value);
    }
    if (maxValue.present) {
      map['max_value'] = Variable<int>(maxValue.value);
    }
    if (minValue.present) {
      map['min_value'] = Variable<int>(minValue.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (newData.present) {
      map['new_data'] = Variable<bool>(newData.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CurrenciesTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('symbol: $symbol, ')
          ..write('subName: $subName, ')
          ..write('value: $value, ')
          ..write('equivelant: $equivelant, ')
          ..write('localCurrency: $localCurrency, ')
          ..write('storeCurrency: $storeCurrency, ')
          ..write('maxValue: $maxValue, ')
          ..write('minValue: $minValue, ')
          ..write('note: $note, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $BranchTableTable branchTable = $BranchTableTable(this);
  late final $CompanyTableTable companyTable = $CompanyTableTable(this);
  late final $CurrenciesTableTable currenciesTable =
      $CurrenciesTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, branchTable, companyTable, currenciesTable];
}

typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  Value<int> id,
  required String userName,
  required String password,
  required int userAccType,
  required int branchId,
  required int groupId,
  required String image,
  required String note,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<int> id,
  Value<String> userName,
  Value<String> password,
  Value<int> userAccType,
  Value<int> branchId,
  Value<int> groupId,
  Value<String> image,
  Value<String> note,
});

class $$UserTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserTableTable,
    UserModel,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder> {
  $$UserTableTableTableManager(_$AppDatabase db, $UserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> userName = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<int> userAccType = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<int> groupId = const Value.absent(),
            Value<String> image = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              UserTableCompanion(
            id: id,
            userName: userName,
            password: password,
            userAccType: userAccType,
            branchId: branchId,
            groupId: groupId,
            image: image,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String userName,
            required String password,
            required int userAccType,
            required int branchId,
            required int groupId,
            required String image,
            required String note,
          }) =>
              UserTableCompanion.insert(
            id: id,
            userName: userName,
            password: password,
            userAccType: userAccType,
            branchId: branchId,
            groupId: groupId,
            image: image,
            note: note,
          ),
        ));
}

class $$UserTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get userName => $state.composableBuilder(
      column: $state.table.userName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userAccType => $state.composableBuilder(
      column: $state.table.userAccType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get groupId => $state.composableBuilder(
      column: $state.table.groupId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserTableTable> {
  $$UserTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get userName => $state.composableBuilder(
      column: $state.table.userName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userAccType => $state.composableBuilder(
      column: $state.table.userAccType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get groupId => $state.composableBuilder(
      column: $state.table.groupId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get image => $state.composableBuilder(
      column: $state.table.image,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$BranchTableTableCreateCompanionBuilder = BranchTableCompanion
    Function({
  required int id,
  required int companyId,
  required String name,
  required String address,
  required String phone,
  required String email,
  required String arReportHeader,
  required String enReportHeader,
  required String logo,
  Value<int> rowid,
});
typedef $$BranchTableTableUpdateCompanionBuilder = BranchTableCompanion
    Function({
  Value<int> id,
  Value<int> companyId,
  Value<String> name,
  Value<String> address,
  Value<String> phone,
  Value<String> email,
  Value<String> arReportHeader,
  Value<String> enReportHeader,
  Value<String> logo,
  Value<int> rowid,
});

class $$BranchTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BranchTableTable,
    BranchInfoModel,
    $$BranchTableTableFilterComposer,
    $$BranchTableTableOrderingComposer,
    $$BranchTableTableCreateCompanionBuilder,
    $$BranchTableTableUpdateCompanionBuilder> {
  $$BranchTableTableTableManager(_$AppDatabase db, $BranchTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$BranchTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$BranchTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> companyId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> phone = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> arReportHeader = const Value.absent(),
            Value<String> enReportHeader = const Value.absent(),
            Value<String> logo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              BranchTableCompanion(
            id: id,
            companyId: companyId,
            name: name,
            address: address,
            phone: phone,
            email: email,
            arReportHeader: arReportHeader,
            enReportHeader: enReportHeader,
            logo: logo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int companyId,
            required String name,
            required String address,
            required String phone,
            required String email,
            required String arReportHeader,
            required String enReportHeader,
            required String logo,
            Value<int> rowid = const Value.absent(),
          }) =>
              BranchTableCompanion.insert(
            id: id,
            companyId: companyId,
            name: name,
            address: address,
            phone: phone,
            email: email,
            arReportHeader: arReportHeader,
            enReportHeader: enReportHeader,
            logo: logo,
            rowid: rowid,
          ),
        ));
}

class $$BranchTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $BranchTableTable> {
  $$BranchTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get companyId => $state.composableBuilder(
      column: $state.table.companyId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get arReportHeader => $state.composableBuilder(
      column: $state.table.arReportHeader,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enReportHeader => $state.composableBuilder(
      column: $state.table.enReportHeader,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get logo => $state.composableBuilder(
      column: $state.table.logo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$BranchTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $BranchTableTable> {
  $$BranchTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get companyId => $state.composableBuilder(
      column: $state.table.companyId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get phone => $state.composableBuilder(
      column: $state.table.phone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get arReportHeader => $state.composableBuilder(
      column: $state.table.arReportHeader,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enReportHeader => $state.composableBuilder(
      column: $state.table.enReportHeader,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get logo => $state.composableBuilder(
      column: $state.table.logo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CompanyTableTableCreateCompanionBuilder = CompanyTableCompanion
    Function({
  required int id,
  required String name,
  required String enName,
  required String shortName,
  required String shortEnName,
  required String webSite,
  required String address,
  required String note,
  required String logo,
  Value<int> rowid,
});
typedef $$CompanyTableTableUpdateCompanionBuilder = CompanyTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> enName,
  Value<String> shortName,
  Value<String> shortEnName,
  Value<String> webSite,
  Value<String> address,
  Value<String> note,
  Value<String> logo,
  Value<int> rowid,
});

class $$CompanyTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CompanyTableTable,
    CompanyModel,
    $$CompanyTableTableFilterComposer,
    $$CompanyTableTableOrderingComposer,
    $$CompanyTableTableCreateCompanionBuilder,
    $$CompanyTableTableUpdateCompanionBuilder> {
  $$CompanyTableTableTableManager(_$AppDatabase db, $CompanyTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CompanyTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CompanyTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> enName = const Value.absent(),
            Value<String> shortName = const Value.absent(),
            Value<String> shortEnName = const Value.absent(),
            Value<String> webSite = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<String> logo = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CompanyTableCompanion(
            id: id,
            name: name,
            enName: enName,
            shortName: shortName,
            shortEnName: shortEnName,
            webSite: webSite,
            address: address,
            note: note,
            logo: logo,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required String enName,
            required String shortName,
            required String shortEnName,
            required String webSite,
            required String address,
            required String note,
            required String logo,
            Value<int> rowid = const Value.absent(),
          }) =>
              CompanyTableCompanion.insert(
            id: id,
            name: name,
            enName: enName,
            shortName: shortName,
            shortEnName: shortEnName,
            webSite: webSite,
            address: address,
            note: note,
            logo: logo,
            rowid: rowid,
          ),
        ));
}

class $$CompanyTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get enName => $state.composableBuilder(
      column: $state.table.enName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get shortName => $state.composableBuilder(
      column: $state.table.shortName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get shortEnName => $state.composableBuilder(
      column: $state.table.shortEnName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get webSite => $state.composableBuilder(
      column: $state.table.webSite,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get logo => $state.composableBuilder(
      column: $state.table.logo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CompanyTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CompanyTableTable> {
  $$CompanyTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get enName => $state.composableBuilder(
      column: $state.table.enName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get shortName => $state.composableBuilder(
      column: $state.table.shortName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get shortEnName => $state.composableBuilder(
      column: $state.table.shortEnName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get webSite => $state.composableBuilder(
      column: $state.table.webSite,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get logo => $state.composableBuilder(
      column: $state.table.logo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$CurrenciesTableTableCreateCompanionBuilder = CurrenciesTableCompanion
    Function({
  required int id,
  required String name,
  required String symbol,
  required String subName,
  required int value,
  required int equivelant,
  required bool localCurrency,
  required bool storeCurrency,
  required int maxValue,
  required int minValue,
  required String note,
  required bool newData,
  Value<int> rowid,
});
typedef $$CurrenciesTableTableUpdateCompanionBuilder = CurrenciesTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<String> symbol,
  Value<String> subName,
  Value<int> value,
  Value<int> equivelant,
  Value<bool> localCurrency,
  Value<bool> storeCurrency,
  Value<int> maxValue,
  Value<int> minValue,
  Value<String> note,
  Value<bool> newData,
  Value<int> rowid,
});

class $$CurrenciesTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CurrenciesTableTable,
    CurrenciesModel,
    $$CurrenciesTableTableFilterComposer,
    $$CurrenciesTableTableOrderingComposer,
    $$CurrenciesTableTableCreateCompanionBuilder,
    $$CurrenciesTableTableUpdateCompanionBuilder> {
  $$CurrenciesTableTableTableManager(
      _$AppDatabase db, $CurrenciesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$CurrenciesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$CurrenciesTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> symbol = const Value.absent(),
            Value<String> subName = const Value.absent(),
            Value<int> value = const Value.absent(),
            Value<int> equivelant = const Value.absent(),
            Value<bool> localCurrency = const Value.absent(),
            Value<bool> storeCurrency = const Value.absent(),
            Value<int> maxValue = const Value.absent(),
            Value<int> minValue = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CurrenciesTableCompanion(
            id: id,
            name: name,
            symbol: symbol,
            subName: subName,
            value: value,
            equivelant: equivelant,
            localCurrency: localCurrency,
            storeCurrency: storeCurrency,
            maxValue: maxValue,
            minValue: minValue,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required String symbol,
            required String subName,
            required int value,
            required int equivelant,
            required bool localCurrency,
            required bool storeCurrency,
            required int maxValue,
            required int minValue,
            required String note,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              CurrenciesTableCompanion.insert(
            id: id,
            name: name,
            symbol: symbol,
            subName: subName,
            value: value,
            equivelant: equivelant,
            localCurrency: localCurrency,
            storeCurrency: storeCurrency,
            maxValue: maxValue,
            minValue: minValue,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$CurrenciesTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $CurrenciesTableTable> {
  $$CurrenciesTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get symbol => $state.composableBuilder(
      column: $state.table.symbol,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get subName => $state.composableBuilder(
      column: $state.table.subName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get equivelant => $state.composableBuilder(
      column: $state.table.equivelant,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get localCurrency => $state.composableBuilder(
      column: $state.table.localCurrency,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get storeCurrency => $state.composableBuilder(
      column: $state.table.storeCurrency,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get maxValue => $state.composableBuilder(
      column: $state.table.maxValue,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get minValue => $state.composableBuilder(
      column: $state.table.minValue,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CurrenciesTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $CurrenciesTableTable> {
  $$CurrenciesTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get symbol => $state.composableBuilder(
      column: $state.table.symbol,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get subName => $state.composableBuilder(
      column: $state.table.subName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get value => $state.composableBuilder(
      column: $state.table.value,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get equivelant => $state.composableBuilder(
      column: $state.table.equivelant,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get localCurrency => $state.composableBuilder(
      column: $state.table.localCurrency,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get storeCurrency => $state.composableBuilder(
      column: $state.table.storeCurrency,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get maxValue => $state.composableBuilder(
      column: $state.table.maxValue,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get minValue => $state.composableBuilder(
      column: $state.table.minValue,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$BranchTableTableTableManager get branchTable =>
      $$BranchTableTableTableManager(_db, _db.branchTable);
  $$CompanyTableTableTableManager get companyTable =>
      $$CompanyTableTableTableManager(_db, _db.companyTable);
  $$CurrenciesTableTableTableManager get currenciesTable =>
      $$CurrenciesTableTableTableManager(_db, _db.currenciesTable);
}
