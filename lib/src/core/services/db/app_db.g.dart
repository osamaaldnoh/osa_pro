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

class $SystemDocsTableTable extends SystemDocsTable
    with TableInfo<$SystemDocsTableTable, SystemDocsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SystemDocsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _docNameMeta =
      const VerificationMeta('docName');
  @override
  late final GeneratedColumn<String> docName = GeneratedColumn<String>(
      'doc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _docTypeMeta =
      const VerificationMeta('docType');
  @override
  late final GeneratedColumn<int> docType = GeneratedColumn<int>(
      'doc_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, docName, docType];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'system_docs_table';
  @override
  VerificationContext validateIntegrity(Insertable<SystemDocsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('doc_name')) {
      context.handle(_docNameMeta,
          docName.isAcceptableOrUnknown(data['doc_name']!, _docNameMeta));
    } else if (isInserting) {
      context.missing(_docNameMeta);
    }
    if (data.containsKey('doc_type')) {
      context.handle(_docTypeMeta,
          docType.isAcceptableOrUnknown(data['doc_type']!, _docTypeMeta));
    } else if (isInserting) {
      context.missing(_docTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SystemDocsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SystemDocsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}doc_name'])!,
      docType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_type'])!,
    );
  }

  @override
  $SystemDocsTableTable createAlias(String alias) {
    return $SystemDocsTableTable(attachedDatabase, alias);
  }
}

class SystemDocsTableCompanion extends UpdateCompanion<SystemDocsModel> {
  final Value<int> id;
  final Value<String> docName;
  final Value<int> docType;
  final Value<int> rowid;
  const SystemDocsTableCompanion({
    this.id = const Value.absent(),
    this.docName = const Value.absent(),
    this.docType = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SystemDocsTableCompanion.insert({
    required int id,
    required String docName,
    required int docType,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        docName = Value(docName),
        docType = Value(docType);
  static Insertable<SystemDocsModel> custom({
    Expression<int>? id,
    Expression<String>? docName,
    Expression<int>? docType,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docName != null) 'doc_name': docName,
      if (docType != null) 'doc_type': docType,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SystemDocsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? docName,
      Value<int>? docType,
      Value<int>? rowid}) {
    return SystemDocsTableCompanion(
      id: id ?? this.id,
      docName: docName ?? this.docName,
      docType: docType ?? this.docType,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docName.present) {
      map['doc_name'] = Variable<String>(docName.value);
    }
    if (docType.present) {
      map['doc_type'] = Variable<int>(docType.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SystemDocsTableCompanion(')
          ..write('id: $id, ')
          ..write('docName: $docName, ')
          ..write('docType: $docType, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SalesManSettingsTableTable extends SalesManSettingsTable
    with TableInfo<$SalesManSettingsTableTable, SalesManSettingsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesManSettingsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _custParentMeta =
      const VerificationMeta('custParent');
  @override
  late final GeneratedColumn<int> custParent = GeneratedColumn<int>(
      'cust_parent', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _generateCodeMeta =
      const VerificationMeta('generateCode');
  @override
  late final GeneratedColumn<String> generateCode = GeneratedColumn<String>(
      'generate_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _custGroupMeta =
      const VerificationMeta('custGroup');
  @override
  late final GeneratedColumn<int> custGroup = GeneratedColumn<int>(
      'cust_group', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [custParent, generateCode, custGroup];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_man_settings_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<SalesManSettingsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cust_parent')) {
      context.handle(
          _custParentMeta,
          custParent.isAcceptableOrUnknown(
              data['cust_parent']!, _custParentMeta));
    } else if (isInserting) {
      context.missing(_custParentMeta);
    }
    if (data.containsKey('generate_code')) {
      context.handle(
          _generateCodeMeta,
          generateCode.isAcceptableOrUnknown(
              data['generate_code']!, _generateCodeMeta));
    } else if (isInserting) {
      context.missing(_generateCodeMeta);
    }
    if (data.containsKey('cust_group')) {
      context.handle(_custGroupMeta,
          custGroup.isAcceptableOrUnknown(data['cust_group']!, _custGroupMeta));
    } else if (isInserting) {
      context.missing(_custGroupMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  SalesManSettingsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesManSettingsModel(
      custParent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cust_parent'])!,
      generateCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}generate_code'])!,
      custGroup: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}cust_group'])!,
    );
  }

  @override
  $SalesManSettingsTableTable createAlias(String alias) {
    return $SalesManSettingsTableTable(attachedDatabase, alias);
  }
}

class SalesManSettingsTableCompanion
    extends UpdateCompanion<SalesManSettingsModel> {
  final Value<int> custParent;
  final Value<String> generateCode;
  final Value<int> custGroup;
  final Value<int> rowid;
  const SalesManSettingsTableCompanion({
    this.custParent = const Value.absent(),
    this.generateCode = const Value.absent(),
    this.custGroup = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SalesManSettingsTableCompanion.insert({
    required int custParent,
    required String generateCode,
    required int custGroup,
    this.rowid = const Value.absent(),
  })  : custParent = Value(custParent),
        generateCode = Value(generateCode),
        custGroup = Value(custGroup);
  static Insertable<SalesManSettingsModel> custom({
    Expression<int>? custParent,
    Expression<String>? generateCode,
    Expression<int>? custGroup,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (custParent != null) 'cust_parent': custParent,
      if (generateCode != null) 'generate_code': generateCode,
      if (custGroup != null) 'cust_group': custGroup,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SalesManSettingsTableCompanion copyWith(
      {Value<int>? custParent,
      Value<String>? generateCode,
      Value<int>? custGroup,
      Value<int>? rowid}) {
    return SalesManSettingsTableCompanion(
      custParent: custParent ?? this.custParent,
      generateCode: generateCode ?? this.generateCode,
      custGroup: custGroup ?? this.custGroup,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (custParent.present) {
      map['cust_parent'] = Variable<int>(custParent.value);
    }
    if (generateCode.present) {
      map['generate_code'] = Variable<String>(generateCode.value);
    }
    if (custGroup.present) {
      map['cust_group'] = Variable<int>(custGroup.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesManSettingsTableCompanion(')
          ..write('custParent: $custParent, ')
          ..write('generateCode: $generateCode, ')
          ..write('custGroup: $custGroup, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserStoreTableTable extends UserStoreTable
    with TableInfo<$UserStoreTableTable, StoreModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserStoreTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accountNumberMeta =
      const VerificationMeta('accountNumber');
  @override
  late final GeneratedColumn<double> accountNumber = GeneratedColumn<double>(
      'account_number', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storeManagerMeta =
      const VerificationMeta('storeManager');
  @override
  late final GeneratedColumn<String> storeManager = GeneratedColumn<String>(
      'store_manager', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _managerPhoneMeta =
      const VerificationMeta('managerPhone');
  @override
  late final GeneratedColumn<String> managerPhone = GeneratedColumn<String>(
      'manager_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, name, accountNumber, branchId, storeManager, managerPhone, note];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_store_table';
  @override
  VerificationContext validateIntegrity(Insertable<StoreModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('account_number')) {
      context.handle(
          _accountNumberMeta,
          accountNumber.isAcceptableOrUnknown(
              data['account_number']!, _accountNumberMeta));
    } else if (isInserting) {
      context.missing(_accountNumberMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('store_manager')) {
      context.handle(
          _storeManagerMeta,
          storeManager.isAcceptableOrUnknown(
              data['store_manager']!, _storeManagerMeta));
    } else if (isInserting) {
      context.missing(_storeManagerMeta);
    }
    if (data.containsKey('manager_phone')) {
      context.handle(
          _managerPhoneMeta,
          managerPhone.isAcceptableOrUnknown(
              data['manager_phone']!, _managerPhoneMeta));
    } else if (isInserting) {
      context.missing(_managerPhoneMeta);
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
  StoreModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoreModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      accountNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}account_number'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      storeManager: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}store_manager'])!,
      managerPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}manager_phone'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
    );
  }

  @override
  $UserStoreTableTable createAlias(String alias) {
    return $UserStoreTableTable(attachedDatabase, alias);
  }
}

class UserStoreTableCompanion extends UpdateCompanion<StoreModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<double> accountNumber;
  final Value<int> branchId;
  final Value<String> storeManager;
  final Value<String> managerPhone;
  final Value<String> note;
  const UserStoreTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.accountNumber = const Value.absent(),
    this.branchId = const Value.absent(),
    this.storeManager = const Value.absent(),
    this.managerPhone = const Value.absent(),
    this.note = const Value.absent(),
  });
  UserStoreTableCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required double accountNumber,
    required int branchId,
    required String storeManager,
    required String managerPhone,
    required String note,
  })  : name = Value(name),
        accountNumber = Value(accountNumber),
        branchId = Value(branchId),
        storeManager = Value(storeManager),
        managerPhone = Value(managerPhone),
        note = Value(note);
  static Insertable<StoreModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<double>? accountNumber,
    Expression<int>? branchId,
    Expression<String>? storeManager,
    Expression<String>? managerPhone,
    Expression<String>? note,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (accountNumber != null) 'account_number': accountNumber,
      if (branchId != null) 'branch_id': branchId,
      if (storeManager != null) 'store_manager': storeManager,
      if (managerPhone != null) 'manager_phone': managerPhone,
      if (note != null) 'note': note,
    });
  }

  UserStoreTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<double>? accountNumber,
      Value<int>? branchId,
      Value<String>? storeManager,
      Value<String>? managerPhone,
      Value<String>? note}) {
    return UserStoreTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      accountNumber: accountNumber ?? this.accountNumber,
      branchId: branchId ?? this.branchId,
      storeManager: storeManager ?? this.storeManager,
      managerPhone: managerPhone ?? this.managerPhone,
      note: note ?? this.note,
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
    if (accountNumber.present) {
      map['account_number'] = Variable<double>(accountNumber.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (storeManager.present) {
      map['store_manager'] = Variable<String>(storeManager.value);
    }
    if (managerPhone.present) {
      map['manager_phone'] = Variable<String>(managerPhone.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserStoreTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('accountNumber: $accountNumber, ')
          ..write('branchId: $branchId, ')
          ..write('storeManager: $storeManager, ')
          ..write('managerPhone: $managerPhone, ')
          ..write('note: $note')
          ..write(')'))
        .toString();
  }
}

class $UnitsTableTable extends UnitsTable
    with TableInfo<$UnitsTableTable, UnitsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UnitsTableTable(this.attachedDatabase, [this._alias]);
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
  List<GeneratedColumn> get $columns => [id, name, note, newData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'units_table';
  @override
  VerificationContext validateIntegrity(Insertable<UnitsModel> instance,
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
  UnitsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UnitsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $UnitsTableTable createAlias(String alias) {
    return $UnitsTableTable(attachedDatabase, alias);
  }
}

class UnitsTableCompanion extends UpdateCompanion<UnitsModel> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> note;
  final Value<bool> newData;
  final Value<int> rowid;
  const UnitsTableCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UnitsTableCompanion.insert({
    required int id,
    required String name,
    required String note,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        name = Value(name),
        note = Value(note),
        newData = Value(newData);
  static Insertable<UnitsModel> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? note,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UnitsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? note,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return UnitsTableCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
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
    return (StringBuffer('UnitsTableCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('note: $note, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemGroupsTableTable extends ItemGroupsTable
    with TableInfo<$ItemGroupsTableTable, ItemGroupsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemGroupsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<int> code = GeneratedColumn<int>(
      'code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<int> parent = GeneratedColumn<int>(
      'parent', aliasedName, false,
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
  List<GeneratedColumn> get $columns =>
      [id, code, name, type, parent, note, newData];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_groups_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemGroupsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    } else if (isInserting) {
      context.missing(_codeMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    } else if (isInserting) {
      context.missing(_parentMeta);
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
  ItemGroupsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemGroupsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemGroupsTableTable createAlias(String alias) {
    return $ItemGroupsTableTable(attachedDatabase, alias);
  }
}

class ItemGroupsTableCompanion extends UpdateCompanion<ItemGroupsModel> {
  final Value<int> id;
  final Value<int> code;
  final Value<String> name;
  final Value<int> type;
  final Value<int> parent;
  final Value<String> note;
  final Value<bool> newData;
  final Value<int> rowid;
  const ItemGroupsTableCompanion({
    this.id = const Value.absent(),
    this.code = const Value.absent(),
    this.name = const Value.absent(),
    this.type = const Value.absent(),
    this.parent = const Value.absent(),
    this.note = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemGroupsTableCompanion.insert({
    required int id,
    required int code,
    required String name,
    required int type,
    required int parent,
    required String note,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        code = Value(code),
        name = Value(name),
        type = Value(type),
        parent = Value(parent),
        note = Value(note),
        newData = Value(newData);
  static Insertable<ItemGroupsModel> custom({
    Expression<int>? id,
    Expression<int>? code,
    Expression<String>? name,
    Expression<int>? type,
    Expression<int>? parent,
    Expression<String>? note,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (code != null) 'code': code,
      if (name != null) 'name': name,
      if (type != null) 'type': type,
      if (parent != null) 'parent': parent,
      if (note != null) 'note': note,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemGroupsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? code,
      Value<String>? name,
      Value<int>? type,
      Value<int>? parent,
      Value<String>? note,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return ItemGroupsTableCompanion(
      id: id ?? this.id,
      code: code ?? this.code,
      name: name ?? this.name,
      type: type ?? this.type,
      parent: parent ?? this.parent,
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
    if (code.present) {
      map['code'] = Variable<int>(code.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (parent.present) {
      map['parent'] = Variable<int>(parent.value);
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
    return (StringBuffer('ItemGroupsTableCompanion(')
          ..write('id: $id, ')
          ..write('code: $code, ')
          ..write('name: $name, ')
          ..write('type: $type, ')
          ..write('parent: $parent, ')
          ..write('note: $note, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemsTableTable extends ItemsTable
    with TableInfo<$ItemsTableTable, ItemsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemGroupIdMeta =
      const VerificationMeta('itemGroupId');
  @override
  late final GeneratedColumn<int> itemGroupId = GeneratedColumn<int>(
      'item_group_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemCodeMeta =
      const VerificationMeta('itemCode');
  @override
  late final GeneratedColumn<int> itemCode = GeneratedColumn<int>(
      'item_code', aliasedName, false,
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
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int> type = GeneratedColumn<int>(
      'type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemLimitMeta =
      const VerificationMeta('itemLimit');
  @override
  late final GeneratedColumn<int> itemLimit = GeneratedColumn<int>(
      'item_limit', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemImageMeta =
      const VerificationMeta('itemImage');
  @override
  late final GeneratedColumn<String> itemImage = GeneratedColumn<String>(
      'item_image', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _isExpireMeta =
      const VerificationMeta('isExpire');
  @override
  late final GeneratedColumn<bool> isExpire = GeneratedColumn<bool>(
      'is_expire', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_expire" IN (0, 1))'));
  static const VerificationMeta _notifyBeforeMeta =
      const VerificationMeta('notifyBefore');
  @override
  late final GeneratedColumn<int> notifyBefore = GeneratedColumn<int>(
      'notify_before', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _freeQuantityAllowMeta =
      const VerificationMeta('freeQuantityAllow');
  @override
  late final GeneratedColumn<bool> freeQuantityAllow = GeneratedColumn<bool>(
      'free_quantity_allow', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("free_quantity_allow" IN (0, 1))'));
  static const VerificationMeta _hasTaxMeta = const VerificationMeta('hasTax');
  @override
  late final GeneratedColumn<bool> hasTax = GeneratedColumn<bool>(
      'has_tax', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("has_tax" IN (0, 1))'));
  static const VerificationMeta _taxRateMeta =
      const VerificationMeta('taxRate');
  @override
  late final GeneratedColumn<int> taxRate = GeneratedColumn<int>(
      'tax_rate', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemCompanyMeta =
      const VerificationMeta('itemCompany');
  @override
  late final GeneratedColumn<String> itemCompany = GeneratedColumn<String>(
      'item_company', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orignalCountryMeta =
      const VerificationMeta('orignalCountry');
  @override
  late final GeneratedColumn<String> orignalCountry = GeneratedColumn<String>(
      'orignal_country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _itemDescriptionMeta =
      const VerificationMeta('itemDescription');
  @override
  late final GeneratedColumn<String> itemDescription = GeneratedColumn<String>(
      'item_description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _haseAlternatedMeta =
      const VerificationMeta('haseAlternated');
  @override
  late final GeneratedColumn<bool> haseAlternated = GeneratedColumn<bool>(
      'hase_alternated', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("hase_alternated" IN (0, 1))'));
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
        itemGroupId,
        itemCode,
        name,
        enName,
        type,
        itemLimit,
        itemImage,
        isExpire,
        notifyBefore,
        freeQuantityAllow,
        hasTax,
        taxRate,
        itemCompany,
        orignalCountry,
        itemDescription,
        note,
        haseAlternated,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'items_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_group_id')) {
      context.handle(
          _itemGroupIdMeta,
          itemGroupId.isAcceptableOrUnknown(
              data['item_group_id']!, _itemGroupIdMeta));
    } else if (isInserting) {
      context.missing(_itemGroupIdMeta);
    }
    if (data.containsKey('item_code')) {
      context.handle(_itemCodeMeta,
          itemCode.isAcceptableOrUnknown(data['item_code']!, _itemCodeMeta));
    } else if (isInserting) {
      context.missing(_itemCodeMeta);
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('item_limit')) {
      context.handle(_itemLimitMeta,
          itemLimit.isAcceptableOrUnknown(data['item_limit']!, _itemLimitMeta));
    } else if (isInserting) {
      context.missing(_itemLimitMeta);
    }
    if (data.containsKey('item_image')) {
      context.handle(_itemImageMeta,
          itemImage.isAcceptableOrUnknown(data['item_image']!, _itemImageMeta));
    } else if (isInserting) {
      context.missing(_itemImageMeta);
    }
    if (data.containsKey('is_expire')) {
      context.handle(_isExpireMeta,
          isExpire.isAcceptableOrUnknown(data['is_expire']!, _isExpireMeta));
    } else if (isInserting) {
      context.missing(_isExpireMeta);
    }
    if (data.containsKey('notify_before')) {
      context.handle(
          _notifyBeforeMeta,
          notifyBefore.isAcceptableOrUnknown(
              data['notify_before']!, _notifyBeforeMeta));
    } else if (isInserting) {
      context.missing(_notifyBeforeMeta);
    }
    if (data.containsKey('free_quantity_allow')) {
      context.handle(
          _freeQuantityAllowMeta,
          freeQuantityAllow.isAcceptableOrUnknown(
              data['free_quantity_allow']!, _freeQuantityAllowMeta));
    } else if (isInserting) {
      context.missing(_freeQuantityAllowMeta);
    }
    if (data.containsKey('has_tax')) {
      context.handle(_hasTaxMeta,
          hasTax.isAcceptableOrUnknown(data['has_tax']!, _hasTaxMeta));
    } else if (isInserting) {
      context.missing(_hasTaxMeta);
    }
    if (data.containsKey('tax_rate')) {
      context.handle(_taxRateMeta,
          taxRate.isAcceptableOrUnknown(data['tax_rate']!, _taxRateMeta));
    } else if (isInserting) {
      context.missing(_taxRateMeta);
    }
    if (data.containsKey('item_company')) {
      context.handle(
          _itemCompanyMeta,
          itemCompany.isAcceptableOrUnknown(
              data['item_company']!, _itemCompanyMeta));
    } else if (isInserting) {
      context.missing(_itemCompanyMeta);
    }
    if (data.containsKey('orignal_country')) {
      context.handle(
          _orignalCountryMeta,
          orignalCountry.isAcceptableOrUnknown(
              data['orignal_country']!, _orignalCountryMeta));
    } else if (isInserting) {
      context.missing(_orignalCountryMeta);
    }
    if (data.containsKey('item_description')) {
      context.handle(
          _itemDescriptionMeta,
          itemDescription.isAcceptableOrUnknown(
              data['item_description']!, _itemDescriptionMeta));
    } else if (isInserting) {
      context.missing(_itemDescriptionMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('hase_alternated')) {
      context.handle(
          _haseAlternatedMeta,
          haseAlternated.isAcceptableOrUnknown(
              data['hase_alternated']!, _haseAlternatedMeta));
    } else if (isInserting) {
      context.missing(_haseAlternatedMeta);
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
  ItemsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemGroupId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_group_id'])!,
      itemCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_code'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      enName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}en_name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}type'])!,
      itemLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_limit'])!,
      itemImage: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_image'])!,
      isExpire: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_expire'])!,
      notifyBefore: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}notify_before'])!,
      freeQuantityAllow: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}free_quantity_allow'])!,
      hasTax: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_tax'])!,
      taxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tax_rate'])!,
      itemCompany: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_company'])!,
      orignalCountry: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}orignal_country'])!,
      itemDescription: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}item_description'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      haseAlternated: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}hase_alternated'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemsTableTable createAlias(String alias) {
    return $ItemsTableTable(attachedDatabase, alias);
  }
}

class ItemsTableCompanion extends UpdateCompanion<ItemsModel> {
  final Value<int> id;
  final Value<int> itemGroupId;
  final Value<int> itemCode;
  final Value<String> name;
  final Value<String> enName;
  final Value<int> type;
  final Value<int> itemLimit;
  final Value<String> itemImage;
  final Value<bool> isExpire;
  final Value<int> notifyBefore;
  final Value<bool> freeQuantityAllow;
  final Value<bool> hasTax;
  final Value<int> taxRate;
  final Value<String> itemCompany;
  final Value<String> orignalCountry;
  final Value<String> itemDescription;
  final Value<String> note;
  final Value<bool> haseAlternated;
  final Value<bool> newData;
  final Value<int> rowid;
  const ItemsTableCompanion({
    this.id = const Value.absent(),
    this.itemGroupId = const Value.absent(),
    this.itemCode = const Value.absent(),
    this.name = const Value.absent(),
    this.enName = const Value.absent(),
    this.type = const Value.absent(),
    this.itemLimit = const Value.absent(),
    this.itemImage = const Value.absent(),
    this.isExpire = const Value.absent(),
    this.notifyBefore = const Value.absent(),
    this.freeQuantityAllow = const Value.absent(),
    this.hasTax = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.itemCompany = const Value.absent(),
    this.orignalCountry = const Value.absent(),
    this.itemDescription = const Value.absent(),
    this.note = const Value.absent(),
    this.haseAlternated = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemsTableCompanion.insert({
    required int id,
    required int itemGroupId,
    required int itemCode,
    required String name,
    required String enName,
    required int type,
    required int itemLimit,
    required String itemImage,
    required bool isExpire,
    required int notifyBefore,
    required bool freeQuantityAllow,
    required bool hasTax,
    required int taxRate,
    required String itemCompany,
    required String orignalCountry,
    required String itemDescription,
    required String note,
    required bool haseAlternated,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        itemGroupId = Value(itemGroupId),
        itemCode = Value(itemCode),
        name = Value(name),
        enName = Value(enName),
        type = Value(type),
        itemLimit = Value(itemLimit),
        itemImage = Value(itemImage),
        isExpire = Value(isExpire),
        notifyBefore = Value(notifyBefore),
        freeQuantityAllow = Value(freeQuantityAllow),
        hasTax = Value(hasTax),
        taxRate = Value(taxRate),
        itemCompany = Value(itemCompany),
        orignalCountry = Value(orignalCountry),
        itemDescription = Value(itemDescription),
        note = Value(note),
        haseAlternated = Value(haseAlternated),
        newData = Value(newData);
  static Insertable<ItemsModel> custom({
    Expression<int>? id,
    Expression<int>? itemGroupId,
    Expression<int>? itemCode,
    Expression<String>? name,
    Expression<String>? enName,
    Expression<int>? type,
    Expression<int>? itemLimit,
    Expression<String>? itemImage,
    Expression<bool>? isExpire,
    Expression<int>? notifyBefore,
    Expression<bool>? freeQuantityAllow,
    Expression<bool>? hasTax,
    Expression<int>? taxRate,
    Expression<String>? itemCompany,
    Expression<String>? orignalCountry,
    Expression<String>? itemDescription,
    Expression<String>? note,
    Expression<bool>? haseAlternated,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemGroupId != null) 'item_group_id': itemGroupId,
      if (itemCode != null) 'item_code': itemCode,
      if (name != null) 'name': name,
      if (enName != null) 'en_name': enName,
      if (type != null) 'type': type,
      if (itemLimit != null) 'item_limit': itemLimit,
      if (itemImage != null) 'item_image': itemImage,
      if (isExpire != null) 'is_expire': isExpire,
      if (notifyBefore != null) 'notify_before': notifyBefore,
      if (freeQuantityAllow != null) 'free_quantity_allow': freeQuantityAllow,
      if (hasTax != null) 'has_tax': hasTax,
      if (taxRate != null) 'tax_rate': taxRate,
      if (itemCompany != null) 'item_company': itemCompany,
      if (orignalCountry != null) 'orignal_country': orignalCountry,
      if (itemDescription != null) 'item_description': itemDescription,
      if (note != null) 'note': note,
      if (haseAlternated != null) 'hase_alternated': haseAlternated,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemGroupId,
      Value<int>? itemCode,
      Value<String>? name,
      Value<String>? enName,
      Value<int>? type,
      Value<int>? itemLimit,
      Value<String>? itemImage,
      Value<bool>? isExpire,
      Value<int>? notifyBefore,
      Value<bool>? freeQuantityAllow,
      Value<bool>? hasTax,
      Value<int>? taxRate,
      Value<String>? itemCompany,
      Value<String>? orignalCountry,
      Value<String>? itemDescription,
      Value<String>? note,
      Value<bool>? haseAlternated,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return ItemsTableCompanion(
      id: id ?? this.id,
      itemGroupId: itemGroupId ?? this.itemGroupId,
      itemCode: itemCode ?? this.itemCode,
      name: name ?? this.name,
      enName: enName ?? this.enName,
      type: type ?? this.type,
      itemLimit: itemLimit ?? this.itemLimit,
      itemImage: itemImage ?? this.itemImage,
      isExpire: isExpire ?? this.isExpire,
      notifyBefore: notifyBefore ?? this.notifyBefore,
      freeQuantityAllow: freeQuantityAllow ?? this.freeQuantityAllow,
      hasTax: hasTax ?? this.hasTax,
      taxRate: taxRate ?? this.taxRate,
      itemCompany: itemCompany ?? this.itemCompany,
      orignalCountry: orignalCountry ?? this.orignalCountry,
      itemDescription: itemDescription ?? this.itemDescription,
      note: note ?? this.note,
      haseAlternated: haseAlternated ?? this.haseAlternated,
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
    if (itemGroupId.present) {
      map['item_group_id'] = Variable<int>(itemGroupId.value);
    }
    if (itemCode.present) {
      map['item_code'] = Variable<int>(itemCode.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (enName.present) {
      map['en_name'] = Variable<String>(enName.value);
    }
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (itemLimit.present) {
      map['item_limit'] = Variable<int>(itemLimit.value);
    }
    if (itemImage.present) {
      map['item_image'] = Variable<String>(itemImage.value);
    }
    if (isExpire.present) {
      map['is_expire'] = Variable<bool>(isExpire.value);
    }
    if (notifyBefore.present) {
      map['notify_before'] = Variable<int>(notifyBefore.value);
    }
    if (freeQuantityAllow.present) {
      map['free_quantity_allow'] = Variable<bool>(freeQuantityAllow.value);
    }
    if (hasTax.present) {
      map['has_tax'] = Variable<bool>(hasTax.value);
    }
    if (taxRate.present) {
      map['tax_rate'] = Variable<int>(taxRate.value);
    }
    if (itemCompany.present) {
      map['item_company'] = Variable<String>(itemCompany.value);
    }
    if (orignalCountry.present) {
      map['orignal_country'] = Variable<String>(orignalCountry.value);
    }
    if (itemDescription.present) {
      map['item_description'] = Variable<String>(itemDescription.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (haseAlternated.present) {
      map['hase_alternated'] = Variable<bool>(haseAlternated.value);
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
    return (StringBuffer('ItemsTableCompanion(')
          ..write('id: $id, ')
          ..write('itemGroupId: $itemGroupId, ')
          ..write('itemCode: $itemCode, ')
          ..write('name: $name, ')
          ..write('enName: $enName, ')
          ..write('type: $type, ')
          ..write('itemLimit: $itemLimit, ')
          ..write('itemImage: $itemImage, ')
          ..write('isExpire: $isExpire, ')
          ..write('notifyBefore: $notifyBefore, ')
          ..write('freeQuantityAllow: $freeQuantityAllow, ')
          ..write('hasTax: $hasTax, ')
          ..write('taxRate: $taxRate, ')
          ..write('itemCompany: $itemCompany, ')
          ..write('orignalCountry: $orignalCountry, ')
          ..write('itemDescription: $itemDescription, ')
          ..write('note: $note, ')
          ..write('haseAlternated: $haseAlternated, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemUnitsTableTable extends ItemUnitsTable
    with TableInfo<$ItemUnitsTableTable, ItemUnitsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemUnitsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemUnitIdMeta =
      const VerificationMeta('itemUnitId');
  @override
  late final GeneratedColumn<int> itemUnitId = GeneratedColumn<int>(
      'item_unit_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitFactorMeta =
      const VerificationMeta('unitFactor');
  @override
  late final GeneratedColumn<int> unitFactor = GeneratedColumn<int>(
      'unit_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _wholeSalepriceMeta =
      const VerificationMeta('wholeSaleprice');
  @override
  late final GeneratedColumn<int> wholeSaleprice = GeneratedColumn<int>(
      'whole_saleprice', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _retailPriceMeta =
      const VerificationMeta('retailPrice');
  @override
  late final GeneratedColumn<int> retailPrice = GeneratedColumn<int>(
      'retail_price', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _spacialPriceMeta =
      const VerificationMeta('spacialPrice');
  @override
  late final GeneratedColumn<int> spacialPrice = GeneratedColumn<int>(
      'spacial_price', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _intialCostMeta =
      const VerificationMeta('intialCost');
  @override
  late final GeneratedColumn<int> intialCost = GeneratedColumn<int>(
      'intial_cost', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemDiscountMeta =
      const VerificationMeta('itemDiscount');
  @override
  late final GeneratedColumn<int> itemDiscount = GeneratedColumn<int>(
      'item_discount', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitBarcodeMeta =
      const VerificationMeta('unitBarcode');
  @override
  late final GeneratedColumn<String> unitBarcode = GeneratedColumn<String>(
      'unit_barcode', aliasedName, false,
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
        itemId,
        itemUnitId,
        unitFactor,
        wholeSaleprice,
        retailPrice,
        spacialPrice,
        intialCost,
        itemDiscount,
        unitBarcode,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_units_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemUnitsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_unit_id')) {
      context.handle(
          _itemUnitIdMeta,
          itemUnitId.isAcceptableOrUnknown(
              data['item_unit_id']!, _itemUnitIdMeta));
    } else if (isInserting) {
      context.missing(_itemUnitIdMeta);
    }
    if (data.containsKey('unit_factor')) {
      context.handle(
          _unitFactorMeta,
          unitFactor.isAcceptableOrUnknown(
              data['unit_factor']!, _unitFactorMeta));
    } else if (isInserting) {
      context.missing(_unitFactorMeta);
    }
    if (data.containsKey('whole_saleprice')) {
      context.handle(
          _wholeSalepriceMeta,
          wholeSaleprice.isAcceptableOrUnknown(
              data['whole_saleprice']!, _wholeSalepriceMeta));
    } else if (isInserting) {
      context.missing(_wholeSalepriceMeta);
    }
    if (data.containsKey('retail_price')) {
      context.handle(
          _retailPriceMeta,
          retailPrice.isAcceptableOrUnknown(
              data['retail_price']!, _retailPriceMeta));
    } else if (isInserting) {
      context.missing(_retailPriceMeta);
    }
    if (data.containsKey('spacial_price')) {
      context.handle(
          _spacialPriceMeta,
          spacialPrice.isAcceptableOrUnknown(
              data['spacial_price']!, _spacialPriceMeta));
    } else if (isInserting) {
      context.missing(_spacialPriceMeta);
    }
    if (data.containsKey('intial_cost')) {
      context.handle(
          _intialCostMeta,
          intialCost.isAcceptableOrUnknown(
              data['intial_cost']!, _intialCostMeta));
    } else if (isInserting) {
      context.missing(_intialCostMeta);
    }
    if (data.containsKey('item_discount')) {
      context.handle(
          _itemDiscountMeta,
          itemDiscount.isAcceptableOrUnknown(
              data['item_discount']!, _itemDiscountMeta));
    } else if (isInserting) {
      context.missing(_itemDiscountMeta);
    }
    if (data.containsKey('unit_barcode')) {
      context.handle(
          _unitBarcodeMeta,
          unitBarcode.isAcceptableOrUnknown(
              data['unit_barcode']!, _unitBarcodeMeta));
    } else if (isInserting) {
      context.missing(_unitBarcodeMeta);
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
  ItemUnitsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemUnitsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemUnitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_unit_id'])!,
      unitFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_factor'])!,
      wholeSaleprice: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}whole_saleprice'])!,
      retailPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retail_price'])!,
      spacialPrice: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}spacial_price'])!,
      intialCost: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}intial_cost'])!,
      itemDiscount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_discount'])!,
      unitBarcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}unit_barcode'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $ItemUnitsTableTable createAlias(String alias) {
    return $ItemUnitsTableTable(attachedDatabase, alias);
  }
}

class ItemUnitsTableCompanion extends UpdateCompanion<ItemUnitsModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> itemUnitId;
  final Value<int> unitFactor;
  final Value<int> wholeSaleprice;
  final Value<int> retailPrice;
  final Value<int> spacialPrice;
  final Value<int> intialCost;
  final Value<int> itemDiscount;
  final Value<String> unitBarcode;
  final Value<bool> newData;
  final Value<int> rowid;
  const ItemUnitsTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemUnitId = const Value.absent(),
    this.unitFactor = const Value.absent(),
    this.wholeSaleprice = const Value.absent(),
    this.retailPrice = const Value.absent(),
    this.spacialPrice = const Value.absent(),
    this.intialCost = const Value.absent(),
    this.itemDiscount = const Value.absent(),
    this.unitBarcode = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemUnitsTableCompanion.insert({
    required int id,
    required int itemId,
    required int itemUnitId,
    required int unitFactor,
    required int wholeSaleprice,
    required int retailPrice,
    required int spacialPrice,
    required int intialCost,
    required int itemDiscount,
    required String unitBarcode,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        itemId = Value(itemId),
        itemUnitId = Value(itemUnitId),
        unitFactor = Value(unitFactor),
        wholeSaleprice = Value(wholeSaleprice),
        retailPrice = Value(retailPrice),
        spacialPrice = Value(spacialPrice),
        intialCost = Value(intialCost),
        itemDiscount = Value(itemDiscount),
        unitBarcode = Value(unitBarcode),
        newData = Value(newData);
  static Insertable<ItemUnitsModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? itemUnitId,
    Expression<int>? unitFactor,
    Expression<int>? wholeSaleprice,
    Expression<int>? retailPrice,
    Expression<int>? spacialPrice,
    Expression<int>? intialCost,
    Expression<int>? itemDiscount,
    Expression<String>? unitBarcode,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemUnitId != null) 'item_unit_id': itemUnitId,
      if (unitFactor != null) 'unit_factor': unitFactor,
      if (wholeSaleprice != null) 'whole_saleprice': wholeSaleprice,
      if (retailPrice != null) 'retail_price': retailPrice,
      if (spacialPrice != null) 'spacial_price': spacialPrice,
      if (intialCost != null) 'intial_cost': intialCost,
      if (itemDiscount != null) 'item_discount': itemDiscount,
      if (unitBarcode != null) 'unit_barcode': unitBarcode,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemUnitsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<int>? itemUnitId,
      Value<int>? unitFactor,
      Value<int>? wholeSaleprice,
      Value<int>? retailPrice,
      Value<int>? spacialPrice,
      Value<int>? intialCost,
      Value<int>? itemDiscount,
      Value<String>? unitBarcode,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return ItemUnitsTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemUnitId: itemUnitId ?? this.itemUnitId,
      unitFactor: unitFactor ?? this.unitFactor,
      wholeSaleprice: wholeSaleprice ?? this.wholeSaleprice,
      retailPrice: retailPrice ?? this.retailPrice,
      spacialPrice: spacialPrice ?? this.spacialPrice,
      intialCost: intialCost ?? this.intialCost,
      itemDiscount: itemDiscount ?? this.itemDiscount,
      unitBarcode: unitBarcode ?? this.unitBarcode,
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
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemUnitId.present) {
      map['item_unit_id'] = Variable<int>(itemUnitId.value);
    }
    if (unitFactor.present) {
      map['unit_factor'] = Variable<int>(unitFactor.value);
    }
    if (wholeSaleprice.present) {
      map['whole_saleprice'] = Variable<int>(wholeSaleprice.value);
    }
    if (retailPrice.present) {
      map['retail_price'] = Variable<int>(retailPrice.value);
    }
    if (spacialPrice.present) {
      map['spacial_price'] = Variable<int>(spacialPrice.value);
    }
    if (intialCost.present) {
      map['intial_cost'] = Variable<int>(intialCost.value);
    }
    if (itemDiscount.present) {
      map['item_discount'] = Variable<int>(itemDiscount.value);
    }
    if (unitBarcode.present) {
      map['unit_barcode'] = Variable<String>(unitBarcode.value);
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
    return (StringBuffer('ItemUnitsTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemUnitId: $itemUnitId, ')
          ..write('unitFactor: $unitFactor, ')
          ..write('wholeSaleprice: $wholeSaleprice, ')
          ..write('retailPrice: $retailPrice, ')
          ..write('spacialPrice: $spacialPrice, ')
          ..write('intialCost: $intialCost, ')
          ..write('itemDiscount: $itemDiscount, ')
          ..write('unitBarcode: $unitBarcode, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemAlternativeTableTable extends ItemAlternativeTable
    with TableInfo<$ItemAlternativeTableTable, ItemAlternativeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemAlternativeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemAlternativeIdMeta =
      const VerificationMeta('itemAlternativeId');
  @override
  late final GeneratedColumn<int> itemAlternativeId = GeneratedColumn<int>(
      'item_alternative_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemOrderMeta =
      const VerificationMeta('itemOrder');
  @override
  late final GeneratedColumn<int> itemOrder = GeneratedColumn<int>(
      'item_order', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemId, itemAlternativeId, itemOrder];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_alternative_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ItemAlternativeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_alternative_id')) {
      context.handle(
          _itemAlternativeIdMeta,
          itemAlternativeId.isAcceptableOrUnknown(
              data['item_alternative_id']!, _itemAlternativeIdMeta));
    } else if (isInserting) {
      context.missing(_itemAlternativeIdMeta);
    }
    if (data.containsKey('item_order')) {
      context.handle(_itemOrderMeta,
          itemOrder.isAcceptableOrUnknown(data['item_order']!, _itemOrderMeta));
    } else if (isInserting) {
      context.missing(_itemOrderMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ItemAlternativeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemAlternativeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemAlternativeId: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}item_alternative_id'])!,
      itemOrder: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_order'])!,
    );
  }

  @override
  $ItemAlternativeTableTable createAlias(String alias) {
    return $ItemAlternativeTableTable(attachedDatabase, alias);
  }
}

class ItemAlternativeTableCompanion
    extends UpdateCompanion<ItemAlternativeModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<int> itemAlternativeId;
  final Value<int> itemOrder;
  final Value<int> rowid;
  const ItemAlternativeTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemAlternativeId = const Value.absent(),
    this.itemOrder = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemAlternativeTableCompanion.insert({
    required int id,
    required int itemId,
    required int itemAlternativeId,
    required int itemOrder,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        itemId = Value(itemId),
        itemAlternativeId = Value(itemAlternativeId),
        itemOrder = Value(itemOrder);
  static Insertable<ItemAlternativeModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<int>? itemAlternativeId,
    Expression<int>? itemOrder,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemAlternativeId != null) 'item_alternative_id': itemAlternativeId,
      if (itemOrder != null) 'item_order': itemOrder,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemAlternativeTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<int>? itemAlternativeId,
      Value<int>? itemOrder,
      Value<int>? rowid}) {
    return ItemAlternativeTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemAlternativeId: itemAlternativeId ?? this.itemAlternativeId,
      itemOrder: itemOrder ?? this.itemOrder,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemAlternativeId.present) {
      map['item_alternative_id'] = Variable<int>(itemAlternativeId.value);
    }
    if (itemOrder.present) {
      map['item_order'] = Variable<int>(itemOrder.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemAlternativeTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemAlternativeId: $itemAlternativeId, ')
          ..write('itemOrder: $itemOrder, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemBarcodeTableTable extends ItemBarcodeTable
    with TableInfo<$ItemBarcodeTableTable, ItemBarcodeModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemBarcodeTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemBarcodeMeta =
      const VerificationMeta('itemBarcode');
  @override
  late final GeneratedColumn<String> itemBarcode = GeneratedColumn<String>(
      'item_barcode', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, itemId, itemBarcode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_barcode_table';
  @override
  VerificationContext validateIntegrity(Insertable<ItemBarcodeModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_barcode')) {
      context.handle(
          _itemBarcodeMeta,
          itemBarcode.isAcceptableOrUnknown(
              data['item_barcode']!, _itemBarcodeMeta));
    } else if (isInserting) {
      context.missing(_itemBarcodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  ItemBarcodeModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemBarcodeModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemBarcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_barcode'])!,
    );
  }

  @override
  $ItemBarcodeTableTable createAlias(String alias) {
    return $ItemBarcodeTableTable(attachedDatabase, alias);
  }
}

class ItemBarcodeTableCompanion extends UpdateCompanion<ItemBarcodeModel> {
  final Value<int> id;
  final Value<int> itemId;
  final Value<String> itemBarcode;
  final Value<int> rowid;
  const ItemBarcodeTableCompanion({
    this.id = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemBarcode = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemBarcodeTableCompanion.insert({
    required int id,
    required int itemId,
    required String itemBarcode,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        itemId = Value(itemId),
        itemBarcode = Value(itemBarcode);
  static Insertable<ItemBarcodeModel> custom({
    Expression<int>? id,
    Expression<int>? itemId,
    Expression<String>? itemBarcode,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemId != null) 'item_id': itemId,
      if (itemBarcode != null) 'item_barcode': itemBarcode,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemBarcodeTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? itemId,
      Value<String>? itemBarcode,
      Value<int>? rowid}) {
    return ItemBarcodeTableCompanion(
      id: id ?? this.id,
      itemId: itemId ?? this.itemId,
      itemBarcode: itemBarcode ?? this.itemBarcode,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemBarcode.present) {
      map['item_barcode'] = Variable<String>(itemBarcode.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemBarcodeTableCompanion(')
          ..write('id: $id, ')
          ..write('itemId: $itemId, ')
          ..write('itemBarcode: $itemBarcode, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AccountsTableTable extends AccountsTable
    with TableInfo<$AccountsTableTable, AccountsModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accNumberMeta =
      const VerificationMeta('accNumber');
  @override
  late final GeneratedColumn<double> accNumber = GeneratedColumn<double>(
      'acc_number', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _accNameMeta =
      const VerificationMeta('accName');
  @override
  late final GeneratedColumn<String> accName = GeneratedColumn<String>(
      'acc_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accParentMeta =
      const VerificationMeta('accParent');
  @override
  late final GeneratedColumn<double> accParent = GeneratedColumn<double>(
      'acc_parent', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _accTypeMeta =
      const VerificationMeta('accType');
  @override
  late final GeneratedColumn<int> accType = GeneratedColumn<int>(
      'acc_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accLevelMeta =
      const VerificationMeta('accLevel');
  @override
  late final GeneratedColumn<int> accLevel = GeneratedColumn<int>(
      'acc_level', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accCatagoryMeta =
      const VerificationMeta('accCatagory');
  @override
  late final GeneratedColumn<int> accCatagory = GeneratedColumn<int>(
      'acc_catagory', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accCatIdMeta =
      const VerificationMeta('accCatId');
  @override
  late final GeneratedColumn<int> accCatId = GeneratedColumn<int>(
      'acc_cat_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accPhoneMeta =
      const VerificationMeta('accPhone');
  @override
  late final GeneratedColumn<String> accPhone = GeneratedColumn<String>(
      'acc_phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _accLimitMeta =
      const VerificationMeta('accLimit');
  @override
  late final GeneratedColumn<int> accLimit = GeneratedColumn<int>(
      'acc_limit', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _paymentTypeMeta =
      const VerificationMeta('paymentType');
  @override
  late final GeneratedColumn<int> paymentType = GeneratedColumn<int>(
      'payment_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _accStopedMeta =
      const VerificationMeta('accStoped');
  @override
  late final GeneratedColumn<bool> accStoped = GeneratedColumn<bool>(
      'acc_stoped', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("acc_stoped" IN (0, 1))'));
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
        accNumber,
        accName,
        accParent,
        accType,
        accLevel,
        note,
        accCatagory,
        accCatId,
        accPhone,
        address,
        email,
        accLimit,
        paymentType,
        branchId,
        accStoped,
        newData
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts_table';
  @override
  VerificationContext validateIntegrity(Insertable<AccountsModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('acc_number')) {
      context.handle(_accNumberMeta,
          accNumber.isAcceptableOrUnknown(data['acc_number']!, _accNumberMeta));
    } else if (isInserting) {
      context.missing(_accNumberMeta);
    }
    if (data.containsKey('acc_name')) {
      context.handle(_accNameMeta,
          accName.isAcceptableOrUnknown(data['acc_name']!, _accNameMeta));
    } else if (isInserting) {
      context.missing(_accNameMeta);
    }
    if (data.containsKey('acc_parent')) {
      context.handle(_accParentMeta,
          accParent.isAcceptableOrUnknown(data['acc_parent']!, _accParentMeta));
    } else if (isInserting) {
      context.missing(_accParentMeta);
    }
    if (data.containsKey('acc_type')) {
      context.handle(_accTypeMeta,
          accType.isAcceptableOrUnknown(data['acc_type']!, _accTypeMeta));
    } else if (isInserting) {
      context.missing(_accTypeMeta);
    }
    if (data.containsKey('acc_level')) {
      context.handle(_accLevelMeta,
          accLevel.isAcceptableOrUnknown(data['acc_level']!, _accLevelMeta));
    } else if (isInserting) {
      context.missing(_accLevelMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('acc_catagory')) {
      context.handle(
          _accCatagoryMeta,
          accCatagory.isAcceptableOrUnknown(
              data['acc_catagory']!, _accCatagoryMeta));
    } else if (isInserting) {
      context.missing(_accCatagoryMeta);
    }
    if (data.containsKey('acc_cat_id')) {
      context.handle(_accCatIdMeta,
          accCatId.isAcceptableOrUnknown(data['acc_cat_id']!, _accCatIdMeta));
    } else if (isInserting) {
      context.missing(_accCatIdMeta);
    }
    if (data.containsKey('acc_phone')) {
      context.handle(_accPhoneMeta,
          accPhone.isAcceptableOrUnknown(data['acc_phone']!, _accPhoneMeta));
    } else if (isInserting) {
      context.missing(_accPhoneMeta);
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    } else if (isInserting) {
      context.missing(_addressMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('acc_limit')) {
      context.handle(_accLimitMeta,
          accLimit.isAcceptableOrUnknown(data['acc_limit']!, _accLimitMeta));
    } else if (isInserting) {
      context.missing(_accLimitMeta);
    }
    if (data.containsKey('payment_type')) {
      context.handle(
          _paymentTypeMeta,
          paymentType.isAcceptableOrUnknown(
              data['payment_type']!, _paymentTypeMeta));
    } else if (isInserting) {
      context.missing(_paymentTypeMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('acc_stoped')) {
      context.handle(_accStopedMeta,
          accStoped.isAcceptableOrUnknown(data['acc_stoped']!, _accStopedMeta));
    } else if (isInserting) {
      context.missing(_accStopedMeta);
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
  AccountsModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AccountsModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      accNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}acc_number'])!,
      accName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_name'])!,
      accParent: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}acc_parent'])!,
      accType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_type'])!,
      accLevel: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_level'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      accCatagory: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_catagory'])!,
      accCatId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_cat_id'])!,
      accPhone: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}acc_phone'])!,
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      accLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}acc_limit'])!,
      paymentType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_type'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      accStoped: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}acc_stoped'])!,
      newData: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}new_data'])!,
    );
  }

  @override
  $AccountsTableTable createAlias(String alias) {
    return $AccountsTableTable(attachedDatabase, alias);
  }
}

class AccountsTableCompanion extends UpdateCompanion<AccountsModel> {
  final Value<int> id;
  final Value<double> accNumber;
  final Value<String> accName;
  final Value<double> accParent;
  final Value<int> accType;
  final Value<int> accLevel;
  final Value<String> note;
  final Value<int> accCatagory;
  final Value<int> accCatId;
  final Value<String> accPhone;
  final Value<String> address;
  final Value<String> email;
  final Value<int> accLimit;
  final Value<int> paymentType;
  final Value<int> branchId;
  final Value<bool> accStoped;
  final Value<bool> newData;
  final Value<int> rowid;
  const AccountsTableCompanion({
    this.id = const Value.absent(),
    this.accNumber = const Value.absent(),
    this.accName = const Value.absent(),
    this.accParent = const Value.absent(),
    this.accType = const Value.absent(),
    this.accLevel = const Value.absent(),
    this.note = const Value.absent(),
    this.accCatagory = const Value.absent(),
    this.accCatId = const Value.absent(),
    this.accPhone = const Value.absent(),
    this.address = const Value.absent(),
    this.email = const Value.absent(),
    this.accLimit = const Value.absent(),
    this.paymentType = const Value.absent(),
    this.branchId = const Value.absent(),
    this.accStoped = const Value.absent(),
    this.newData = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AccountsTableCompanion.insert({
    required int id,
    required double accNumber,
    required String accName,
    required double accParent,
    required int accType,
    required int accLevel,
    required String note,
    required int accCatagory,
    required int accCatId,
    required String accPhone,
    required String address,
    required String email,
    required int accLimit,
    required int paymentType,
    required int branchId,
    required bool accStoped,
    required bool newData,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        accNumber = Value(accNumber),
        accName = Value(accName),
        accParent = Value(accParent),
        accType = Value(accType),
        accLevel = Value(accLevel),
        note = Value(note),
        accCatagory = Value(accCatagory),
        accCatId = Value(accCatId),
        accPhone = Value(accPhone),
        address = Value(address),
        email = Value(email),
        accLimit = Value(accLimit),
        paymentType = Value(paymentType),
        branchId = Value(branchId),
        accStoped = Value(accStoped),
        newData = Value(newData);
  static Insertable<AccountsModel> custom({
    Expression<int>? id,
    Expression<double>? accNumber,
    Expression<String>? accName,
    Expression<double>? accParent,
    Expression<int>? accType,
    Expression<int>? accLevel,
    Expression<String>? note,
    Expression<int>? accCatagory,
    Expression<int>? accCatId,
    Expression<String>? accPhone,
    Expression<String>? address,
    Expression<String>? email,
    Expression<int>? accLimit,
    Expression<int>? paymentType,
    Expression<int>? branchId,
    Expression<bool>? accStoped,
    Expression<bool>? newData,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (accNumber != null) 'acc_number': accNumber,
      if (accName != null) 'acc_name': accName,
      if (accParent != null) 'acc_parent': accParent,
      if (accType != null) 'acc_type': accType,
      if (accLevel != null) 'acc_level': accLevel,
      if (note != null) 'note': note,
      if (accCatagory != null) 'acc_catagory': accCatagory,
      if (accCatId != null) 'acc_cat_id': accCatId,
      if (accPhone != null) 'acc_phone': accPhone,
      if (address != null) 'address': address,
      if (email != null) 'email': email,
      if (accLimit != null) 'acc_limit': accLimit,
      if (paymentType != null) 'payment_type': paymentType,
      if (branchId != null) 'branch_id': branchId,
      if (accStoped != null) 'acc_stoped': accStoped,
      if (newData != null) 'new_data': newData,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AccountsTableCompanion copyWith(
      {Value<int>? id,
      Value<double>? accNumber,
      Value<String>? accName,
      Value<double>? accParent,
      Value<int>? accType,
      Value<int>? accLevel,
      Value<String>? note,
      Value<int>? accCatagory,
      Value<int>? accCatId,
      Value<String>? accPhone,
      Value<String>? address,
      Value<String>? email,
      Value<int>? accLimit,
      Value<int>? paymentType,
      Value<int>? branchId,
      Value<bool>? accStoped,
      Value<bool>? newData,
      Value<int>? rowid}) {
    return AccountsTableCompanion(
      id: id ?? this.id,
      accNumber: accNumber ?? this.accNumber,
      accName: accName ?? this.accName,
      accParent: accParent ?? this.accParent,
      accType: accType ?? this.accType,
      accLevel: accLevel ?? this.accLevel,
      note: note ?? this.note,
      accCatagory: accCatagory ?? this.accCatagory,
      accCatId: accCatId ?? this.accCatId,
      accPhone: accPhone ?? this.accPhone,
      address: address ?? this.address,
      email: email ?? this.email,
      accLimit: accLimit ?? this.accLimit,
      paymentType: paymentType ?? this.paymentType,
      branchId: branchId ?? this.branchId,
      accStoped: accStoped ?? this.accStoped,
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
    if (accNumber.present) {
      map['acc_number'] = Variable<double>(accNumber.value);
    }
    if (accName.present) {
      map['acc_name'] = Variable<String>(accName.value);
    }
    if (accParent.present) {
      map['acc_parent'] = Variable<double>(accParent.value);
    }
    if (accType.present) {
      map['acc_type'] = Variable<int>(accType.value);
    }
    if (accLevel.present) {
      map['acc_level'] = Variable<int>(accLevel.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (accCatagory.present) {
      map['acc_catagory'] = Variable<int>(accCatagory.value);
    }
    if (accCatId.present) {
      map['acc_cat_id'] = Variable<int>(accCatId.value);
    }
    if (accPhone.present) {
      map['acc_phone'] = Variable<String>(accPhone.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (accLimit.present) {
      map['acc_limit'] = Variable<int>(accLimit.value);
    }
    if (paymentType.present) {
      map['payment_type'] = Variable<int>(paymentType.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (accStoped.present) {
      map['acc_stoped'] = Variable<bool>(accStoped.value);
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
    return (StringBuffer('AccountsTableCompanion(')
          ..write('id: $id, ')
          ..write('accNumber: $accNumber, ')
          ..write('accName: $accName, ')
          ..write('accParent: $accParent, ')
          ..write('accType: $accType, ')
          ..write('accLevel: $accLevel, ')
          ..write('note: $note, ')
          ..write('accCatagory: $accCatagory, ')
          ..write('accCatId: $accCatId, ')
          ..write('accPhone: $accPhone, ')
          ..write('address: $address, ')
          ..write('email: $email, ')
          ..write('accLimit: $accLimit, ')
          ..write('paymentType: $paymentType, ')
          ..write('branchId: $branchId, ')
          ..write('accStoped: $accStoped, ')
          ..write('newData: $newData, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $StoperationTableTable extends StoperationTable
    with TableInfo<$StoperationTableTable, StoperationModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoperationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationIdMeta =
      const VerificationMeta('operationId');
  @override
  late final GeneratedColumn<int> operationId = GeneratedColumn<int>(
      'operation_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationTypeMeta =
      const VerificationMeta('operationType');
  @override
  late final GeneratedColumn<int> operationType = GeneratedColumn<int>(
      'operation_type', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _operationDateMeta =
      const VerificationMeta('operationDate');
  @override
  late final GeneratedColumn<String> operationDate = GeneratedColumn<String>(
      'operation_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _operationInMeta =
      const VerificationMeta('operationIn');
  @override
  late final GeneratedColumn<bool> operationIn = GeneratedColumn<bool>(
      'operation_in', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: true,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("operation_in" IN (0, 1))'));
  static const VerificationMeta _storeIdMeta =
      const VerificationMeta('storeId');
  @override
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
      'store_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<int> unitId = GeneratedColumn<int>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _averageCostMeta =
      const VerificationMeta('averageCost');
  @override
  late final GeneratedColumn<double> averageCost = GeneratedColumn<double>(
      'average_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitCostMeta =
      const VerificationMeta('unitCost');
  @override
  late final GeneratedColumn<double> unitCost = GeneratedColumn<double>(
      'unit_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _totalCostMeta =
      const VerificationMeta('totalCost');
  @override
  late final GeneratedColumn<double> totalCost = GeneratedColumn<double>(
      'total_cost', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _unitFactorMeta =
      const VerificationMeta('unitFactor');
  @override
  late final GeneratedColumn<int> unitFactor = GeneratedColumn<int>(
      'unit_factor', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _qtyConvertMeta =
      const VerificationMeta('qtyConvert');
  @override
  late final GeneratedColumn<int> qtyConvert = GeneratedColumn<int>(
      'qty_convert', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _expirDateMeta =
      const VerificationMeta('expirDate');
  @override
  late final GeneratedColumn<String> expirDate = GeneratedColumn<String>(
      'expir_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _addBranchMeta =
      const VerificationMeta('addBranch');
  @override
  late final GeneratedColumn<int> addBranch = GeneratedColumn<int>(
      'add_branch', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        operationId,
        operationType,
        operationDate,
        operationIn,
        storeId,
        itemId,
        unitId,
        quantity,
        averageCost,
        unitCost,
        totalCost,
        unitFactor,
        qtyConvert,
        expirDate,
        addBranch
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stoperation_table';
  @override
  VerificationContext validateIntegrity(Insertable<StoperationModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('operation_id')) {
      context.handle(
          _operationIdMeta,
          operationId.isAcceptableOrUnknown(
              data['operation_id']!, _operationIdMeta));
    } else if (isInserting) {
      context.missing(_operationIdMeta);
    }
    if (data.containsKey('operation_type')) {
      context.handle(
          _operationTypeMeta,
          operationType.isAcceptableOrUnknown(
              data['operation_type']!, _operationTypeMeta));
    } else if (isInserting) {
      context.missing(_operationTypeMeta);
    }
    if (data.containsKey('operation_date')) {
      context.handle(
          _operationDateMeta,
          operationDate.isAcceptableOrUnknown(
              data['operation_date']!, _operationDateMeta));
    } else if (isInserting) {
      context.missing(_operationDateMeta);
    }
    if (data.containsKey('operation_in')) {
      context.handle(
          _operationInMeta,
          operationIn.isAcceptableOrUnknown(
              data['operation_in']!, _operationInMeta));
    } else if (isInserting) {
      context.missing(_operationInMeta);
    }
    if (data.containsKey('store_id')) {
      context.handle(_storeIdMeta,
          storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta));
    } else if (isInserting) {
      context.missing(_storeIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('average_cost')) {
      context.handle(
          _averageCostMeta,
          averageCost.isAcceptableOrUnknown(
              data['average_cost']!, _averageCostMeta));
    } else if (isInserting) {
      context.missing(_averageCostMeta);
    }
    if (data.containsKey('unit_cost')) {
      context.handle(_unitCostMeta,
          unitCost.isAcceptableOrUnknown(data['unit_cost']!, _unitCostMeta));
    } else if (isInserting) {
      context.missing(_unitCostMeta);
    }
    if (data.containsKey('total_cost')) {
      context.handle(_totalCostMeta,
          totalCost.isAcceptableOrUnknown(data['total_cost']!, _totalCostMeta));
    } else if (isInserting) {
      context.missing(_totalCostMeta);
    }
    if (data.containsKey('unit_factor')) {
      context.handle(
          _unitFactorMeta,
          unitFactor.isAcceptableOrUnknown(
              data['unit_factor']!, _unitFactorMeta));
    } else if (isInserting) {
      context.missing(_unitFactorMeta);
    }
    if (data.containsKey('qty_convert')) {
      context.handle(
          _qtyConvertMeta,
          qtyConvert.isAcceptableOrUnknown(
              data['qty_convert']!, _qtyConvertMeta));
    } else if (isInserting) {
      context.missing(_qtyConvertMeta);
    }
    if (data.containsKey('expir_date')) {
      context.handle(_expirDateMeta,
          expirDate.isAcceptableOrUnknown(data['expir_date']!, _expirDateMeta));
    } else if (isInserting) {
      context.missing(_expirDateMeta);
    }
    if (data.containsKey('add_branch')) {
      context.handle(_addBranchMeta,
          addBranch.isAcceptableOrUnknown(data['add_branch']!, _addBranchMeta));
    } else if (isInserting) {
      context.missing(_addBranchMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  StoperationModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return StoperationModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      operationId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_id'])!,
      operationType: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}operation_type'])!,
      operationDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}operation_date'])!,
      operationIn: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}operation_in'])!,
      storeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      averageCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}average_cost'])!,
      unitCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}unit_cost'])!,
      totalCost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total_cost'])!,
      unitFactor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_factor'])!,
      qtyConvert: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}qty_convert'])!,
      expirDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expir_date'])!,
      addBranch: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}add_branch'])!,
    );
  }

  @override
  $StoperationTableTable createAlias(String alias) {
    return $StoperationTableTable(attachedDatabase, alias);
  }
}

class StoperationTableCompanion extends UpdateCompanion<StoperationModel> {
  final Value<int> id;
  final Value<int> operationId;
  final Value<int> operationType;
  final Value<String> operationDate;
  final Value<bool> operationIn;
  final Value<int> storeId;
  final Value<int> itemId;
  final Value<int> unitId;
  final Value<int> quantity;
  final Value<double> averageCost;
  final Value<double> unitCost;
  final Value<double> totalCost;
  final Value<int> unitFactor;
  final Value<int> qtyConvert;
  final Value<String> expirDate;
  final Value<int> addBranch;
  final Value<int> rowid;
  const StoperationTableCompanion({
    this.id = const Value.absent(),
    this.operationId = const Value.absent(),
    this.operationType = const Value.absent(),
    this.operationDate = const Value.absent(),
    this.operationIn = const Value.absent(),
    this.storeId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.averageCost = const Value.absent(),
    this.unitCost = const Value.absent(),
    this.totalCost = const Value.absent(),
    this.unitFactor = const Value.absent(),
    this.qtyConvert = const Value.absent(),
    this.expirDate = const Value.absent(),
    this.addBranch = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  StoperationTableCompanion.insert({
    required int id,
    required int operationId,
    required int operationType,
    required String operationDate,
    required bool operationIn,
    required int storeId,
    required int itemId,
    required int unitId,
    required int quantity,
    required double averageCost,
    required double unitCost,
    required double totalCost,
    required int unitFactor,
    required int qtyConvert,
    required String expirDate,
    required int addBranch,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        operationId = Value(operationId),
        operationType = Value(operationType),
        operationDate = Value(operationDate),
        operationIn = Value(operationIn),
        storeId = Value(storeId),
        itemId = Value(itemId),
        unitId = Value(unitId),
        quantity = Value(quantity),
        averageCost = Value(averageCost),
        unitCost = Value(unitCost),
        totalCost = Value(totalCost),
        unitFactor = Value(unitFactor),
        qtyConvert = Value(qtyConvert),
        expirDate = Value(expirDate),
        addBranch = Value(addBranch);
  static Insertable<StoperationModel> custom({
    Expression<int>? id,
    Expression<int>? operationId,
    Expression<int>? operationType,
    Expression<String>? operationDate,
    Expression<bool>? operationIn,
    Expression<int>? storeId,
    Expression<int>? itemId,
    Expression<int>? unitId,
    Expression<int>? quantity,
    Expression<double>? averageCost,
    Expression<double>? unitCost,
    Expression<double>? totalCost,
    Expression<int>? unitFactor,
    Expression<int>? qtyConvert,
    Expression<String>? expirDate,
    Expression<int>? addBranch,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (operationId != null) 'operation_id': operationId,
      if (operationType != null) 'operation_type': operationType,
      if (operationDate != null) 'operation_date': operationDate,
      if (operationIn != null) 'operation_in': operationIn,
      if (storeId != null) 'store_id': storeId,
      if (itemId != null) 'item_id': itemId,
      if (unitId != null) 'unit_id': unitId,
      if (quantity != null) 'quantity': quantity,
      if (averageCost != null) 'average_cost': averageCost,
      if (unitCost != null) 'unit_cost': unitCost,
      if (totalCost != null) 'total_cost': totalCost,
      if (unitFactor != null) 'unit_factor': unitFactor,
      if (qtyConvert != null) 'qty_convert': qtyConvert,
      if (expirDate != null) 'expir_date': expirDate,
      if (addBranch != null) 'add_branch': addBranch,
      if (rowid != null) 'rowid': rowid,
    });
  }

  StoperationTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? operationId,
      Value<int>? operationType,
      Value<String>? operationDate,
      Value<bool>? operationIn,
      Value<int>? storeId,
      Value<int>? itemId,
      Value<int>? unitId,
      Value<int>? quantity,
      Value<double>? averageCost,
      Value<double>? unitCost,
      Value<double>? totalCost,
      Value<int>? unitFactor,
      Value<int>? qtyConvert,
      Value<String>? expirDate,
      Value<int>? addBranch,
      Value<int>? rowid}) {
    return StoperationTableCompanion(
      id: id ?? this.id,
      operationId: operationId ?? this.operationId,
      operationType: operationType ?? this.operationType,
      operationDate: operationDate ?? this.operationDate,
      operationIn: operationIn ?? this.operationIn,
      storeId: storeId ?? this.storeId,
      itemId: itemId ?? this.itemId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      averageCost: averageCost ?? this.averageCost,
      unitCost: unitCost ?? this.unitCost,
      totalCost: totalCost ?? this.totalCost,
      unitFactor: unitFactor ?? this.unitFactor,
      qtyConvert: qtyConvert ?? this.qtyConvert,
      expirDate: expirDate ?? this.expirDate,
      addBranch: addBranch ?? this.addBranch,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (operationId.present) {
      map['operation_id'] = Variable<int>(operationId.value);
    }
    if (operationType.present) {
      map['operation_type'] = Variable<int>(operationType.value);
    }
    if (operationDate.present) {
      map['operation_date'] = Variable<String>(operationDate.value);
    }
    if (operationIn.present) {
      map['operation_in'] = Variable<bool>(operationIn.value);
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (averageCost.present) {
      map['average_cost'] = Variable<double>(averageCost.value);
    }
    if (unitCost.present) {
      map['unit_cost'] = Variable<double>(unitCost.value);
    }
    if (totalCost.present) {
      map['total_cost'] = Variable<double>(totalCost.value);
    }
    if (unitFactor.present) {
      map['unit_factor'] = Variable<int>(unitFactor.value);
    }
    if (qtyConvert.present) {
      map['qty_convert'] = Variable<int>(qtyConvert.value);
    }
    if (expirDate.present) {
      map['expir_date'] = Variable<String>(expirDate.value);
    }
    if (addBranch.present) {
      map['add_branch'] = Variable<int>(addBranch.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoperationTableCompanion(')
          ..write('id: $id, ')
          ..write('operationId: $operationId, ')
          ..write('operationType: $operationType, ')
          ..write('operationDate: $operationDate, ')
          ..write('operationIn: $operationIn, ')
          ..write('storeId: $storeId, ')
          ..write('itemId: $itemId, ')
          ..write('unitId: $unitId, ')
          ..write('quantity: $quantity, ')
          ..write('averageCost: $averageCost, ')
          ..write('unitCost: $unitCost, ')
          ..write('totalCost: $totalCost, ')
          ..write('unitFactor: $unitFactor, ')
          ..write('qtyConvert: $qtyConvert, ')
          ..write('expirDate: $expirDate, ')
          ..write('addBranch: $addBranch, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $DocTableTable extends DocTable
    with TableInfo<$DocTableTable, DocModels> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DocTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
      'doc_id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _docDateTimeMeta =
      const VerificationMeta('docDateTime');
  @override
  late final GeneratedColumn<String> docDateTime = GeneratedColumn<String>(
      'doc_date_time', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _branchIdMeta =
      const VerificationMeta('branchId');
  @override
  late final GeneratedColumn<int> branchId = GeneratedColumn<int>(
      'branch_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _storeIdMeta =
      const VerificationMeta('storeId');
  @override
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
      'store_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _docNoteMeta =
      const VerificationMeta('docNote');
  @override
  late final GeneratedColumn<String> docNote = GeneratedColumn<String>(
      'doc_note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _docLocationMeta =
      const VerificationMeta('docLocation');
  @override
  late final GeneratedColumn<String> docLocation = GeneratedColumn<String>(
      'doc_location', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _docStatusMeta =
      const VerificationMeta('docStatus');
  @override
  late final GeneratedColumn<int> docStatus = GeneratedColumn<int>(
      'doc_status', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        docId,
        docDateTime,
        branchId,
        storeId,
        docNote,
        docLocation,
        userId,
        docStatus
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'doc_table';
  @override
  VerificationContext validateIntegrity(Insertable<DocModels> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    }
    if (data.containsKey('doc_date_time')) {
      context.handle(
          _docDateTimeMeta,
          docDateTime.isAcceptableOrUnknown(
              data['doc_date_time']!, _docDateTimeMeta));
    } else if (isInserting) {
      context.missing(_docDateTimeMeta);
    }
    if (data.containsKey('branch_id')) {
      context.handle(_branchIdMeta,
          branchId.isAcceptableOrUnknown(data['branch_id']!, _branchIdMeta));
    } else if (isInserting) {
      context.missing(_branchIdMeta);
    }
    if (data.containsKey('store_id')) {
      context.handle(_storeIdMeta,
          storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta));
    } else if (isInserting) {
      context.missing(_storeIdMeta);
    }
    if (data.containsKey('doc_note')) {
      context.handle(_docNoteMeta,
          docNote.isAcceptableOrUnknown(data['doc_note']!, _docNoteMeta));
    } else if (isInserting) {
      context.missing(_docNoteMeta);
    }
    if (data.containsKey('doc_location')) {
      context.handle(
          _docLocationMeta,
          docLocation.isAcceptableOrUnknown(
              data['doc_location']!, _docLocationMeta));
    } else if (isInserting) {
      context.missing(_docLocationMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('doc_status')) {
      context.handle(_docStatusMeta,
          docStatus.isAcceptableOrUnknown(data['doc_status']!, _docStatusMeta));
    } else if (isInserting) {
      context.missing(_docStatusMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {docId};
  @override
  DocModels map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DocModels(
      docId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_id'])!,
      docDateTime: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}doc_date_time'])!,
      branchId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}branch_id'])!,
      storeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store_id'])!,
      docNote: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}doc_note'])!,
      docLocation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}doc_location'])!,
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      docStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_status'])!,
    );
  }

  @override
  $DocTableTable createAlias(String alias) {
    return $DocTableTable(attachedDatabase, alias);
  }
}

class DocTableCompanion extends UpdateCompanion<DocModels> {
  final Value<int> docId;
  final Value<String> docDateTime;
  final Value<int> branchId;
  final Value<int> storeId;
  final Value<String> docNote;
  final Value<String> docLocation;
  final Value<int> userId;
  final Value<int> docStatus;
  const DocTableCompanion({
    this.docId = const Value.absent(),
    this.docDateTime = const Value.absent(),
    this.branchId = const Value.absent(),
    this.storeId = const Value.absent(),
    this.docNote = const Value.absent(),
    this.docLocation = const Value.absent(),
    this.userId = const Value.absent(),
    this.docStatus = const Value.absent(),
  });
  DocTableCompanion.insert({
    this.docId = const Value.absent(),
    required String docDateTime,
    required int branchId,
    required int storeId,
    required String docNote,
    required String docLocation,
    required int userId,
    required int docStatus,
  })  : docDateTime = Value(docDateTime),
        branchId = Value(branchId),
        storeId = Value(storeId),
        docNote = Value(docNote),
        docLocation = Value(docLocation),
        userId = Value(userId),
        docStatus = Value(docStatus);
  static Insertable<DocModels> custom({
    Expression<int>? docId,
    Expression<String>? docDateTime,
    Expression<int>? branchId,
    Expression<int>? storeId,
    Expression<String>? docNote,
    Expression<String>? docLocation,
    Expression<int>? userId,
    Expression<int>? docStatus,
  }) {
    return RawValuesInsertable({
      if (docId != null) 'doc_id': docId,
      if (docDateTime != null) 'doc_date_time': docDateTime,
      if (branchId != null) 'branch_id': branchId,
      if (storeId != null) 'store_id': storeId,
      if (docNote != null) 'doc_note': docNote,
      if (docLocation != null) 'doc_location': docLocation,
      if (userId != null) 'user_id': userId,
      if (docStatus != null) 'doc_status': docStatus,
    });
  }

  DocTableCompanion copyWith(
      {Value<int>? docId,
      Value<String>? docDateTime,
      Value<int>? branchId,
      Value<int>? storeId,
      Value<String>? docNote,
      Value<String>? docLocation,
      Value<int>? userId,
      Value<int>? docStatus}) {
    return DocTableCompanion(
      docId: docId ?? this.docId,
      docDateTime: docDateTime ?? this.docDateTime,
      branchId: branchId ?? this.branchId,
      storeId: storeId ?? this.storeId,
      docNote: docNote ?? this.docNote,
      docLocation: docLocation ?? this.docLocation,
      userId: userId ?? this.userId,
      docStatus: docStatus ?? this.docStatus,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (docDateTime.present) {
      map['doc_date_time'] = Variable<String>(docDateTime.value);
    }
    if (branchId.present) {
      map['branch_id'] = Variable<int>(branchId.value);
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (docNote.present) {
      map['doc_note'] = Variable<String>(docNote.value);
    }
    if (docLocation.present) {
      map['doc_location'] = Variable<String>(docLocation.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (docStatus.present) {
      map['doc_status'] = Variable<int>(docStatus.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DocTableCompanion(')
          ..write('docId: $docId, ')
          ..write('docDateTime: $docDateTime, ')
          ..write('branchId: $branchId, ')
          ..write('storeId: $storeId, ')
          ..write('docNote: $docNote, ')
          ..write('docLocation: $docLocation, ')
          ..write('userId: $userId, ')
          ..write('docStatus: $docStatus')
          ..write(')'))
        .toString();
  }
}

class $InventoryDocDataTableTable extends InventoryDocDataTable
    with TableInfo<$InventoryDocDataTableTable, InventoryDocumentDataModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $InventoryDocDataTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _docIdMeta = const VerificationMeta('docId');
  @override
  late final GeneratedColumn<int> docId = GeneratedColumn<int>(
      'doc_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemIdMeta = const VerificationMeta('itemId');
  @override
  late final GeneratedColumn<int> itemId = GeneratedColumn<int>(
      'item_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemGroupeIdMeta =
      const VerificationMeta('itemGroupeId');
  @override
  late final GeneratedColumn<int> itemGroupeId = GeneratedColumn<int>(
      'item_groupe_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _unitIdMeta = const VerificationMeta('unitId');
  @override
  late final GeneratedColumn<int> unitId = GeneratedColumn<int>(
      'unit_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<int> quantity = GeneratedColumn<int>(
      'quantity', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _expirDateMeta =
      const VerificationMeta('expirDate');
  @override
  late final GeneratedColumn<String> expirDate = GeneratedColumn<String>(
      'expir_date', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _noteMeta = const VerificationMeta('note');
  @override
  late final GeneratedColumn<String> note = GeneratedColumn<String>(
      'note', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  @override
  late final GeneratedColumn<int> number = GeneratedColumn<int>(
      'number', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _differenceMeta =
      const VerificationMeta('difference');
  @override
  late final GeneratedColumn<int> difference = GeneratedColumn<int>(
      'difference', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _itemBarcodeIdMeta =
      const VerificationMeta('itemBarcodeId');
  @override
  late final GeneratedColumn<int> itemBarcodeId = GeneratedColumn<int>(
      'item_barcode_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        docId,
        itemId,
        itemGroupeId,
        unitId,
        quantity,
        expirDate,
        note,
        number,
        difference,
        itemBarcodeId
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'inventory_doc_data_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<InventoryDocumentDataModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('doc_id')) {
      context.handle(
          _docIdMeta, docId.isAcceptableOrUnknown(data['doc_id']!, _docIdMeta));
    } else if (isInserting) {
      context.missing(_docIdMeta);
    }
    if (data.containsKey('item_id')) {
      context.handle(_itemIdMeta,
          itemId.isAcceptableOrUnknown(data['item_id']!, _itemIdMeta));
    } else if (isInserting) {
      context.missing(_itemIdMeta);
    }
    if (data.containsKey('item_groupe_id')) {
      context.handle(
          _itemGroupeIdMeta,
          itemGroupeId.isAcceptableOrUnknown(
              data['item_groupe_id']!, _itemGroupeIdMeta));
    } else if (isInserting) {
      context.missing(_itemGroupeIdMeta);
    }
    if (data.containsKey('unit_id')) {
      context.handle(_unitIdMeta,
          unitId.isAcceptableOrUnknown(data['unit_id']!, _unitIdMeta));
    } else if (isInserting) {
      context.missing(_unitIdMeta);
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('expir_date')) {
      context.handle(_expirDateMeta,
          expirDate.isAcceptableOrUnknown(data['expir_date']!, _expirDateMeta));
    } else if (isInserting) {
      context.missing(_expirDateMeta);
    }
    if (data.containsKey('note')) {
      context.handle(
          _noteMeta, note.isAcceptableOrUnknown(data['note']!, _noteMeta));
    } else if (isInserting) {
      context.missing(_noteMeta);
    }
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('difference')) {
      context.handle(
          _differenceMeta,
          difference.isAcceptableOrUnknown(
              data['difference']!, _differenceMeta));
    } else if (isInserting) {
      context.missing(_differenceMeta);
    }
    if (data.containsKey('item_barcode_id')) {
      context.handle(
          _itemBarcodeIdMeta,
          itemBarcodeId.isAcceptableOrUnknown(
              data['item_barcode_id']!, _itemBarcodeIdMeta));
    } else if (isInserting) {
      context.missing(_itemBarcodeIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  InventoryDocumentDataModel map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return InventoryDocumentDataModel(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      docId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}doc_id'])!,
      itemId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_id'])!,
      itemGroupeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_groupe_id'])!,
      unitId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}unit_id'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}quantity'])!,
      expirDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}expir_date'])!,
      note: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}note'])!,
      difference: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}difference'])!,
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}number'])!,
      itemBarcodeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}item_barcode_id'])!,
    );
  }

  @override
  $InventoryDocDataTableTable createAlias(String alias) {
    return $InventoryDocDataTableTable(attachedDatabase, alias);
  }
}

class InventoryDocDataTableCompanion
    extends UpdateCompanion<InventoryDocumentDataModel> {
  final Value<int> id;
  final Value<int> docId;
  final Value<int> itemId;
  final Value<int> itemGroupeId;
  final Value<int> unitId;
  final Value<int> quantity;
  final Value<String> expirDate;
  final Value<String> note;
  final Value<int> number;
  final Value<int> difference;
  final Value<int> itemBarcodeId;
  const InventoryDocDataTableCompanion({
    this.id = const Value.absent(),
    this.docId = const Value.absent(),
    this.itemId = const Value.absent(),
    this.itemGroupeId = const Value.absent(),
    this.unitId = const Value.absent(),
    this.quantity = const Value.absent(),
    this.expirDate = const Value.absent(),
    this.note = const Value.absent(),
    this.number = const Value.absent(),
    this.difference = const Value.absent(),
    this.itemBarcodeId = const Value.absent(),
  });
  InventoryDocDataTableCompanion.insert({
    this.id = const Value.absent(),
    required int docId,
    required int itemId,
    required int itemGroupeId,
    required int unitId,
    required int quantity,
    required String expirDate,
    required String note,
    required int number,
    required int difference,
    required int itemBarcodeId,
  })  : docId = Value(docId),
        itemId = Value(itemId),
        itemGroupeId = Value(itemGroupeId),
        unitId = Value(unitId),
        quantity = Value(quantity),
        expirDate = Value(expirDate),
        note = Value(note),
        number = Value(number),
        difference = Value(difference),
        itemBarcodeId = Value(itemBarcodeId);
  static Insertable<InventoryDocumentDataModel> custom({
    Expression<int>? id,
    Expression<int>? docId,
    Expression<int>? itemId,
    Expression<int>? itemGroupeId,
    Expression<int>? unitId,
    Expression<int>? quantity,
    Expression<String>? expirDate,
    Expression<String>? note,
    Expression<int>? number,
    Expression<int>? difference,
    Expression<int>? itemBarcodeId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (docId != null) 'doc_id': docId,
      if (itemId != null) 'item_id': itemId,
      if (itemGroupeId != null) 'item_groupe_id': itemGroupeId,
      if (unitId != null) 'unit_id': unitId,
      if (quantity != null) 'quantity': quantity,
      if (expirDate != null) 'expir_date': expirDate,
      if (note != null) 'note': note,
      if (number != null) 'number': number,
      if (difference != null) 'difference': difference,
      if (itemBarcodeId != null) 'item_barcode_id': itemBarcodeId,
    });
  }

  InventoryDocDataTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? docId,
      Value<int>? itemId,
      Value<int>? itemGroupeId,
      Value<int>? unitId,
      Value<int>? quantity,
      Value<String>? expirDate,
      Value<String>? note,
      Value<int>? number,
      Value<int>? difference,
      Value<int>? itemBarcodeId}) {
    return InventoryDocDataTableCompanion(
      id: id ?? this.id,
      docId: docId ?? this.docId,
      itemId: itemId ?? this.itemId,
      itemGroupeId: itemGroupeId ?? this.itemGroupeId,
      unitId: unitId ?? this.unitId,
      quantity: quantity ?? this.quantity,
      expirDate: expirDate ?? this.expirDate,
      note: note ?? this.note,
      number: number ?? this.number,
      difference: difference ?? this.difference,
      itemBarcodeId: itemBarcodeId ?? this.itemBarcodeId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (docId.present) {
      map['doc_id'] = Variable<int>(docId.value);
    }
    if (itemId.present) {
      map['item_id'] = Variable<int>(itemId.value);
    }
    if (itemGroupeId.present) {
      map['item_groupe_id'] = Variable<int>(itemGroupeId.value);
    }
    if (unitId.present) {
      map['unit_id'] = Variable<int>(unitId.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<int>(quantity.value);
    }
    if (expirDate.present) {
      map['expir_date'] = Variable<String>(expirDate.value);
    }
    if (note.present) {
      map['note'] = Variable<String>(note.value);
    }
    if (number.present) {
      map['number'] = Variable<int>(number.value);
    }
    if (difference.present) {
      map['difference'] = Variable<int>(difference.value);
    }
    if (itemBarcodeId.present) {
      map['item_barcode_id'] = Variable<int>(itemBarcodeId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('InventoryDocDataTableCompanion(')
          ..write('id: $id, ')
          ..write('docId: $docId, ')
          ..write('itemId: $itemId, ')
          ..write('itemGroupeId: $itemGroupeId, ')
          ..write('unitId: $unitId, ')
          ..write('quantity: $quantity, ')
          ..write('expirDate: $expirDate, ')
          ..write('note: $note, ')
          ..write('number: $number, ')
          ..write('difference: $difference, ')
          ..write('itemBarcodeId: $itemBarcodeId')
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
  late final $SystemDocsTableTable systemDocsTable =
      $SystemDocsTableTable(this);
  late final $SalesManSettingsTableTable salesManSettingsTable =
      $SalesManSettingsTableTable(this);
  late final $UserStoreTableTable userStoreTable = $UserStoreTableTable(this);
  late final $UnitsTableTable unitsTable = $UnitsTableTable(this);
  late final $ItemGroupsTableTable itemGroupsTable =
      $ItemGroupsTableTable(this);
  late final $ItemsTableTable itemsTable = $ItemsTableTable(this);
  late final $ItemUnitsTableTable itemUnitsTable = $ItemUnitsTableTable(this);
  late final $ItemAlternativeTableTable itemAlternativeTable =
      $ItemAlternativeTableTable(this);
  late final $ItemBarcodeTableTable itemBarcodeTable =
      $ItemBarcodeTableTable(this);
  late final $AccountsTableTable accountsTable = $AccountsTableTable(this);
  late final $StoperationTableTable stoperationTable =
      $StoperationTableTable(this);
  late final $DocTableTable docTable = $DocTableTable(this);
  late final $InventoryDocDataTableTable inventoryDocDataTable =
      $InventoryDocDataTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        userTable,
        branchTable,
        companyTable,
        currenciesTable,
        systemDocsTable,
        salesManSettingsTable,
        userStoreTable,
        unitsTable,
        itemGroupsTable,
        itemsTable,
        itemUnitsTable,
        itemAlternativeTable,
        itemBarcodeTable,
        accountsTable,
        stoperationTable,
        docTable,
        inventoryDocDataTable
      ];
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

typedef $$SystemDocsTableTableCreateCompanionBuilder = SystemDocsTableCompanion
    Function({
  required int id,
  required String docName,
  required int docType,
  Value<int> rowid,
});
typedef $$SystemDocsTableTableUpdateCompanionBuilder = SystemDocsTableCompanion
    Function({
  Value<int> id,
  Value<String> docName,
  Value<int> docType,
  Value<int> rowid,
});

class $$SystemDocsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SystemDocsTableTable,
    SystemDocsModel,
    $$SystemDocsTableTableFilterComposer,
    $$SystemDocsTableTableOrderingComposer,
    $$SystemDocsTableTableCreateCompanionBuilder,
    $$SystemDocsTableTableUpdateCompanionBuilder> {
  $$SystemDocsTableTableTableManager(
      _$AppDatabase db, $SystemDocsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$SystemDocsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$SystemDocsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> docName = const Value.absent(),
            Value<int> docType = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SystemDocsTableCompanion(
            id: id,
            docName: docName,
            docType: docType,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String docName,
            required int docType,
            Value<int> rowid = const Value.absent(),
          }) =>
              SystemDocsTableCompanion.insert(
            id: id,
            docName: docName,
            docType: docType,
            rowid: rowid,
          ),
        ));
}

class $$SystemDocsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SystemDocsTableTable> {
  $$SystemDocsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get docName => $state.composableBuilder(
      column: $state.table.docName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get docType => $state.composableBuilder(
      column: $state.table.docType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SystemDocsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SystemDocsTableTable> {
  $$SystemDocsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get docName => $state.composableBuilder(
      column: $state.table.docName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get docType => $state.composableBuilder(
      column: $state.table.docType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$SalesManSettingsTableTableCreateCompanionBuilder
    = SalesManSettingsTableCompanion Function({
  required int custParent,
  required String generateCode,
  required int custGroup,
  Value<int> rowid,
});
typedef $$SalesManSettingsTableTableUpdateCompanionBuilder
    = SalesManSettingsTableCompanion Function({
  Value<int> custParent,
  Value<String> generateCode,
  Value<int> custGroup,
  Value<int> rowid,
});

class $$SalesManSettingsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SalesManSettingsTableTable,
    SalesManSettingsModel,
    $$SalesManSettingsTableTableFilterComposer,
    $$SalesManSettingsTableTableOrderingComposer,
    $$SalesManSettingsTableTableCreateCompanionBuilder,
    $$SalesManSettingsTableTableUpdateCompanionBuilder> {
  $$SalesManSettingsTableTableTableManager(
      _$AppDatabase db, $SalesManSettingsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$SalesManSettingsTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$SalesManSettingsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> custParent = const Value.absent(),
            Value<String> generateCode = const Value.absent(),
            Value<int> custGroup = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              SalesManSettingsTableCompanion(
            custParent: custParent,
            generateCode: generateCode,
            custGroup: custGroup,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int custParent,
            required String generateCode,
            required int custGroup,
            Value<int> rowid = const Value.absent(),
          }) =>
              SalesManSettingsTableCompanion.insert(
            custParent: custParent,
            generateCode: generateCode,
            custGroup: custGroup,
            rowid: rowid,
          ),
        ));
}

class $$SalesManSettingsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $SalesManSettingsTableTable> {
  $$SalesManSettingsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get custParent => $state.composableBuilder(
      column: $state.table.custParent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get generateCode => $state.composableBuilder(
      column: $state.table.generateCode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get custGroup => $state.composableBuilder(
      column: $state.table.custGroup,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$SalesManSettingsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $SalesManSettingsTableTable> {
  $$SalesManSettingsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get custParent => $state.composableBuilder(
      column: $state.table.custParent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get generateCode => $state.composableBuilder(
      column: $state.table.generateCode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get custGroup => $state.composableBuilder(
      column: $state.table.custGroup,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UserStoreTableTableCreateCompanionBuilder = UserStoreTableCompanion
    Function({
  Value<int> id,
  required String name,
  required double accountNumber,
  required int branchId,
  required String storeManager,
  required String managerPhone,
  required String note,
});
typedef $$UserStoreTableTableUpdateCompanionBuilder = UserStoreTableCompanion
    Function({
  Value<int> id,
  Value<String> name,
  Value<double> accountNumber,
  Value<int> branchId,
  Value<String> storeManager,
  Value<String> managerPhone,
  Value<String> note,
});

class $$UserStoreTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UserStoreTableTable,
    StoreModel,
    $$UserStoreTableTableFilterComposer,
    $$UserStoreTableTableOrderingComposer,
    $$UserStoreTableTableCreateCompanionBuilder,
    $$UserStoreTableTableUpdateCompanionBuilder> {
  $$UserStoreTableTableTableManager(
      _$AppDatabase db, $UserStoreTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserStoreTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserStoreTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<double> accountNumber = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<String> storeManager = const Value.absent(),
            Value<String> managerPhone = const Value.absent(),
            Value<String> note = const Value.absent(),
          }) =>
              UserStoreTableCompanion(
            id: id,
            name: name,
            accountNumber: accountNumber,
            branchId: branchId,
            storeManager: storeManager,
            managerPhone: managerPhone,
            note: note,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
            required double accountNumber,
            required int branchId,
            required String storeManager,
            required String managerPhone,
            required String note,
          }) =>
              UserStoreTableCompanion.insert(
            id: id,
            name: name,
            accountNumber: accountNumber,
            branchId: branchId,
            storeManager: storeManager,
            managerPhone: managerPhone,
            note: note,
          ),
        ));
}

class $$UserStoreTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UserStoreTableTable> {
  $$UserStoreTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get accountNumber => $state.composableBuilder(
      column: $state.table.accountNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get storeManager => $state.composableBuilder(
      column: $state.table.storeManager,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get managerPhone => $state.composableBuilder(
      column: $state.table.managerPhone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UserStoreTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UserStoreTableTable> {
  $$UserStoreTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get accountNumber => $state.composableBuilder(
      column: $state.table.accountNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get storeManager => $state.composableBuilder(
      column: $state.table.storeManager,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get managerPhone => $state.composableBuilder(
      column: $state.table.managerPhone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$UnitsTableTableCreateCompanionBuilder = UnitsTableCompanion Function({
  required int id,
  required String name,
  required String note,
  required bool newData,
  Value<int> rowid,
});
typedef $$UnitsTableTableUpdateCompanionBuilder = UnitsTableCompanion Function({
  Value<int> id,
  Value<String> name,
  Value<String> note,
  Value<bool> newData,
  Value<int> rowid,
});

class $$UnitsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $UnitsTableTable,
    UnitsModel,
    $$UnitsTableTableFilterComposer,
    $$UnitsTableTableOrderingComposer,
    $$UnitsTableTableCreateCompanionBuilder,
    $$UnitsTableTableUpdateCompanionBuilder> {
  $$UnitsTableTableTableManager(_$AppDatabase db, $UnitsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UnitsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UnitsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UnitsTableCompanion(
            id: id,
            name: name,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required String name,
            required String note,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              UnitsTableCompanion.insert(
            id: id,
            name: name,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$UnitsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $UnitsTableTable> {
  $$UnitsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
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

class $$UnitsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $UnitsTableTable> {
  $$UnitsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
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

typedef $$ItemGroupsTableTableCreateCompanionBuilder = ItemGroupsTableCompanion
    Function({
  required int id,
  required int code,
  required String name,
  required int type,
  required int parent,
  required String note,
  required bool newData,
  Value<int> rowid,
});
typedef $$ItemGroupsTableTableUpdateCompanionBuilder = ItemGroupsTableCompanion
    Function({
  Value<int> id,
  Value<int> code,
  Value<String> name,
  Value<int> type,
  Value<int> parent,
  Value<String> note,
  Value<bool> newData,
  Value<int> rowid,
});

class $$ItemGroupsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemGroupsTableTable,
    ItemGroupsModel,
    $$ItemGroupsTableTableFilterComposer,
    $$ItemGroupsTableTableOrderingComposer,
    $$ItemGroupsTableTableCreateCompanionBuilder,
    $$ItemGroupsTableTableUpdateCompanionBuilder> {
  $$ItemGroupsTableTableTableManager(
      _$AppDatabase db, $ItemGroupsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ItemGroupsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ItemGroupsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> code = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<int> parent = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemGroupsTableCompanion(
            id: id,
            code: code,
            name: name,
            type: type,
            parent: parent,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int code,
            required String name,
            required int type,
            required int parent,
            required String note,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemGroupsTableCompanion.insert(
            id: id,
            code: code,
            name: name,
            type: type,
            parent: parent,
            note: note,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$ItemGroupsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemGroupsTableTable> {
  $$ItemGroupsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get parent => $state.composableBuilder(
      column: $state.table.parent,
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

class $$ItemGroupsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemGroupsTableTable> {
  $$ItemGroupsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get code => $state.composableBuilder(
      column: $state.table.code,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get parent => $state.composableBuilder(
      column: $state.table.parent,
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

typedef $$ItemsTableTableCreateCompanionBuilder = ItemsTableCompanion Function({
  required int id,
  required int itemGroupId,
  required int itemCode,
  required String name,
  required String enName,
  required int type,
  required int itemLimit,
  required String itemImage,
  required bool isExpire,
  required int notifyBefore,
  required bool freeQuantityAllow,
  required bool hasTax,
  required int taxRate,
  required String itemCompany,
  required String orignalCountry,
  required String itemDescription,
  required String note,
  required bool haseAlternated,
  required bool newData,
  Value<int> rowid,
});
typedef $$ItemsTableTableUpdateCompanionBuilder = ItemsTableCompanion Function({
  Value<int> id,
  Value<int> itemGroupId,
  Value<int> itemCode,
  Value<String> name,
  Value<String> enName,
  Value<int> type,
  Value<int> itemLimit,
  Value<String> itemImage,
  Value<bool> isExpire,
  Value<int> notifyBefore,
  Value<bool> freeQuantityAllow,
  Value<bool> hasTax,
  Value<int> taxRate,
  Value<String> itemCompany,
  Value<String> orignalCountry,
  Value<String> itemDescription,
  Value<String> note,
  Value<bool> haseAlternated,
  Value<bool> newData,
  Value<int> rowid,
});

class $$ItemsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemsTableTable,
    ItemsModel,
    $$ItemsTableTableFilterComposer,
    $$ItemsTableTableOrderingComposer,
    $$ItemsTableTableCreateCompanionBuilder,
    $$ItemsTableTableUpdateCompanionBuilder> {
  $$ItemsTableTableTableManager(_$AppDatabase db, $ItemsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ItemsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ItemsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemGroupId = const Value.absent(),
            Value<int> itemCode = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String> enName = const Value.absent(),
            Value<int> type = const Value.absent(),
            Value<int> itemLimit = const Value.absent(),
            Value<String> itemImage = const Value.absent(),
            Value<bool> isExpire = const Value.absent(),
            Value<int> notifyBefore = const Value.absent(),
            Value<bool> freeQuantityAllow = const Value.absent(),
            Value<bool> hasTax = const Value.absent(),
            Value<int> taxRate = const Value.absent(),
            Value<String> itemCompany = const Value.absent(),
            Value<String> orignalCountry = const Value.absent(),
            Value<String> itemDescription = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<bool> haseAlternated = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemsTableCompanion(
            id: id,
            itemGroupId: itemGroupId,
            itemCode: itemCode,
            name: name,
            enName: enName,
            type: type,
            itemLimit: itemLimit,
            itemImage: itemImage,
            isExpire: isExpire,
            notifyBefore: notifyBefore,
            freeQuantityAllow: freeQuantityAllow,
            hasTax: hasTax,
            taxRate: taxRate,
            itemCompany: itemCompany,
            orignalCountry: orignalCountry,
            itemDescription: itemDescription,
            note: note,
            haseAlternated: haseAlternated,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int itemGroupId,
            required int itemCode,
            required String name,
            required String enName,
            required int type,
            required int itemLimit,
            required String itemImage,
            required bool isExpire,
            required int notifyBefore,
            required bool freeQuantityAllow,
            required bool hasTax,
            required int taxRate,
            required String itemCompany,
            required String orignalCountry,
            required String itemDescription,
            required String note,
            required bool haseAlternated,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemsTableCompanion.insert(
            id: id,
            itemGroupId: itemGroupId,
            itemCode: itemCode,
            name: name,
            enName: enName,
            type: type,
            itemLimit: itemLimit,
            itemImage: itemImage,
            isExpire: isExpire,
            notifyBefore: notifyBefore,
            freeQuantityAllow: freeQuantityAllow,
            hasTax: hasTax,
            taxRate: taxRate,
            itemCompany: itemCompany,
            orignalCountry: orignalCountry,
            itemDescription: itemDescription,
            note: note,
            haseAlternated: haseAlternated,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$ItemsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemGroupId => $state.composableBuilder(
      column: $state.table.itemGroupId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
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

  ColumnFilters<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemLimit => $state.composableBuilder(
      column: $state.table.itemLimit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemImage => $state.composableBuilder(
      column: $state.table.itemImage,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isExpire => $state.composableBuilder(
      column: $state.table.isExpire,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get notifyBefore => $state.composableBuilder(
      column: $state.table.notifyBefore,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get freeQuantityAllow => $state.composableBuilder(
      column: $state.table.freeQuantityAllow,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get hasTax => $state.composableBuilder(
      column: $state.table.hasTax,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get taxRate => $state.composableBuilder(
      column: $state.table.taxRate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemCompany => $state.composableBuilder(
      column: $state.table.itemCompany,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get orignalCountry => $state.composableBuilder(
      column: $state.table.orignalCountry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemDescription => $state.composableBuilder(
      column: $state.table.itemDescription,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get haseAlternated => $state.composableBuilder(
      column: $state.table.haseAlternated,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ItemsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemsTableTable> {
  $$ItemsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemGroupId => $state.composableBuilder(
      column: $state.table.itemGroupId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemCode => $state.composableBuilder(
      column: $state.table.itemCode,
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

  ColumnOrderings<int> get type => $state.composableBuilder(
      column: $state.table.type,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemLimit => $state.composableBuilder(
      column: $state.table.itemLimit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemImage => $state.composableBuilder(
      column: $state.table.itemImage,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isExpire => $state.composableBuilder(
      column: $state.table.isExpire,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get notifyBefore => $state.composableBuilder(
      column: $state.table.notifyBefore,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get freeQuantityAllow => $state.composableBuilder(
      column: $state.table.freeQuantityAllow,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get hasTax => $state.composableBuilder(
      column: $state.table.hasTax,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get taxRate => $state.composableBuilder(
      column: $state.table.taxRate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemCompany => $state.composableBuilder(
      column: $state.table.itemCompany,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get orignalCountry => $state.composableBuilder(
      column: $state.table.orignalCountry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemDescription => $state.composableBuilder(
      column: $state.table.itemDescription,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get haseAlternated => $state.composableBuilder(
      column: $state.table.haseAlternated,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ItemUnitsTableTableCreateCompanionBuilder = ItemUnitsTableCompanion
    Function({
  required int id,
  required int itemId,
  required int itemUnitId,
  required int unitFactor,
  required int wholeSaleprice,
  required int retailPrice,
  required int spacialPrice,
  required int intialCost,
  required int itemDiscount,
  required String unitBarcode,
  required bool newData,
  Value<int> rowid,
});
typedef $$ItemUnitsTableTableUpdateCompanionBuilder = ItemUnitsTableCompanion
    Function({
  Value<int> id,
  Value<int> itemId,
  Value<int> itemUnitId,
  Value<int> unitFactor,
  Value<int> wholeSaleprice,
  Value<int> retailPrice,
  Value<int> spacialPrice,
  Value<int> intialCost,
  Value<int> itemDiscount,
  Value<String> unitBarcode,
  Value<bool> newData,
  Value<int> rowid,
});

class $$ItemUnitsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemUnitsTableTable,
    ItemUnitsModel,
    $$ItemUnitsTableTableFilterComposer,
    $$ItemUnitsTableTableOrderingComposer,
    $$ItemUnitsTableTableCreateCompanionBuilder,
    $$ItemUnitsTableTableUpdateCompanionBuilder> {
  $$ItemUnitsTableTableTableManager(
      _$AppDatabase db, $ItemUnitsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ItemUnitsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ItemUnitsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemUnitId = const Value.absent(),
            Value<int> unitFactor = const Value.absent(),
            Value<int> wholeSaleprice = const Value.absent(),
            Value<int> retailPrice = const Value.absent(),
            Value<int> spacialPrice = const Value.absent(),
            Value<int> intialCost = const Value.absent(),
            Value<int> itemDiscount = const Value.absent(),
            Value<String> unitBarcode = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemUnitsTableCompanion(
            id: id,
            itemId: itemId,
            itemUnitId: itemUnitId,
            unitFactor: unitFactor,
            wholeSaleprice: wholeSaleprice,
            retailPrice: retailPrice,
            spacialPrice: spacialPrice,
            intialCost: intialCost,
            itemDiscount: itemDiscount,
            unitBarcode: unitBarcode,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int itemId,
            required int itemUnitId,
            required int unitFactor,
            required int wholeSaleprice,
            required int retailPrice,
            required int spacialPrice,
            required int intialCost,
            required int itemDiscount,
            required String unitBarcode,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemUnitsTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemUnitId: itemUnitId,
            unitFactor: unitFactor,
            wholeSaleprice: wholeSaleprice,
            retailPrice: retailPrice,
            spacialPrice: spacialPrice,
            intialCost: intialCost,
            itemDiscount: itemDiscount,
            unitBarcode: unitBarcode,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$ItemUnitsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemUnitsTableTable> {
  $$ItemUnitsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemUnitId => $state.composableBuilder(
      column: $state.table.itemUnitId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unitFactor => $state.composableBuilder(
      column: $state.table.unitFactor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get wholeSaleprice => $state.composableBuilder(
      column: $state.table.wholeSaleprice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get retailPrice => $state.composableBuilder(
      column: $state.table.retailPrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get spacialPrice => $state.composableBuilder(
      column: $state.table.spacialPrice,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get intialCost => $state.composableBuilder(
      column: $state.table.intialCost,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemDiscount => $state.composableBuilder(
      column: $state.table.itemDiscount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get unitBarcode => $state.composableBuilder(
      column: $state.table.unitBarcode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ItemUnitsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemUnitsTableTable> {
  $$ItemUnitsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemUnitId => $state.composableBuilder(
      column: $state.table.itemUnitId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unitFactor => $state.composableBuilder(
      column: $state.table.unitFactor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get wholeSaleprice => $state.composableBuilder(
      column: $state.table.wholeSaleprice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get retailPrice => $state.composableBuilder(
      column: $state.table.retailPrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get spacialPrice => $state.composableBuilder(
      column: $state.table.spacialPrice,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get intialCost => $state.composableBuilder(
      column: $state.table.intialCost,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemDiscount => $state.composableBuilder(
      column: $state.table.itemDiscount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get unitBarcode => $state.composableBuilder(
      column: $state.table.unitBarcode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ItemAlternativeTableTableCreateCompanionBuilder
    = ItemAlternativeTableCompanion Function({
  required int id,
  required int itemId,
  required int itemAlternativeId,
  required int itemOrder,
  Value<int> rowid,
});
typedef $$ItemAlternativeTableTableUpdateCompanionBuilder
    = ItemAlternativeTableCompanion Function({
  Value<int> id,
  Value<int> itemId,
  Value<int> itemAlternativeId,
  Value<int> itemOrder,
  Value<int> rowid,
});

class $$ItemAlternativeTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemAlternativeTableTable,
    ItemAlternativeModel,
    $$ItemAlternativeTableTableFilterComposer,
    $$ItemAlternativeTableTableOrderingComposer,
    $$ItemAlternativeTableTableCreateCompanionBuilder,
    $$ItemAlternativeTableTableUpdateCompanionBuilder> {
  $$ItemAlternativeTableTableTableManager(
      _$AppDatabase db, $ItemAlternativeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$ItemAlternativeTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$ItemAlternativeTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemAlternativeId = const Value.absent(),
            Value<int> itemOrder = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemAlternativeTableCompanion(
            id: id,
            itemId: itemId,
            itemAlternativeId: itemAlternativeId,
            itemOrder: itemOrder,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int itemId,
            required int itemAlternativeId,
            required int itemOrder,
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemAlternativeTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemAlternativeId: itemAlternativeId,
            itemOrder: itemOrder,
            rowid: rowid,
          ),
        ));
}

class $$ItemAlternativeTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemAlternativeTableTable> {
  $$ItemAlternativeTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemAlternativeId => $state.composableBuilder(
      column: $state.table.itemAlternativeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemOrder => $state.composableBuilder(
      column: $state.table.itemOrder,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ItemAlternativeTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemAlternativeTableTable> {
  $$ItemAlternativeTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemAlternativeId => $state.composableBuilder(
      column: $state.table.itemAlternativeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemOrder => $state.composableBuilder(
      column: $state.table.itemOrder,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$ItemBarcodeTableTableCreateCompanionBuilder
    = ItemBarcodeTableCompanion Function({
  required int id,
  required int itemId,
  required String itemBarcode,
  Value<int> rowid,
});
typedef $$ItemBarcodeTableTableUpdateCompanionBuilder
    = ItemBarcodeTableCompanion Function({
  Value<int> id,
  Value<int> itemId,
  Value<String> itemBarcode,
  Value<int> rowid,
});

class $$ItemBarcodeTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemBarcodeTableTable,
    ItemBarcodeModel,
    $$ItemBarcodeTableTableFilterComposer,
    $$ItemBarcodeTableTableOrderingComposer,
    $$ItemBarcodeTableTableCreateCompanionBuilder,
    $$ItemBarcodeTableTableUpdateCompanionBuilder> {
  $$ItemBarcodeTableTableTableManager(
      _$AppDatabase db, $ItemBarcodeTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$ItemBarcodeTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$ItemBarcodeTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<String> itemBarcode = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemBarcodeTableCompanion(
            id: id,
            itemId: itemId,
            itemBarcode: itemBarcode,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int itemId,
            required String itemBarcode,
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemBarcodeTableCompanion.insert(
            id: id,
            itemId: itemId,
            itemBarcode: itemBarcode,
            rowid: rowid,
          ),
        ));
}

class $$ItemBarcodeTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $ItemBarcodeTableTable> {
  $$ItemBarcodeTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get itemBarcode => $state.composableBuilder(
      column: $state.table.itemBarcode,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ItemBarcodeTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $ItemBarcodeTableTable> {
  $$ItemBarcodeTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get itemBarcode => $state.composableBuilder(
      column: $state.table.itemBarcode,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$AccountsTableTableCreateCompanionBuilder = AccountsTableCompanion
    Function({
  required int id,
  required double accNumber,
  required String accName,
  required double accParent,
  required int accType,
  required int accLevel,
  required String note,
  required int accCatagory,
  required int accCatId,
  required String accPhone,
  required String address,
  required String email,
  required int accLimit,
  required int paymentType,
  required int branchId,
  required bool accStoped,
  required bool newData,
  Value<int> rowid,
});
typedef $$AccountsTableTableUpdateCompanionBuilder = AccountsTableCompanion
    Function({
  Value<int> id,
  Value<double> accNumber,
  Value<String> accName,
  Value<double> accParent,
  Value<int> accType,
  Value<int> accLevel,
  Value<String> note,
  Value<int> accCatagory,
  Value<int> accCatId,
  Value<String> accPhone,
  Value<String> address,
  Value<String> email,
  Value<int> accLimit,
  Value<int> paymentType,
  Value<int> branchId,
  Value<bool> accStoped,
  Value<bool> newData,
  Value<int> rowid,
});

class $$AccountsTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AccountsTableTable,
    AccountsModel,
    $$AccountsTableTableFilterComposer,
    $$AccountsTableTableOrderingComposer,
    $$AccountsTableTableCreateCompanionBuilder,
    $$AccountsTableTableUpdateCompanionBuilder> {
  $$AccountsTableTableTableManager(_$AppDatabase db, $AccountsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$AccountsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$AccountsTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<double> accNumber = const Value.absent(),
            Value<String> accName = const Value.absent(),
            Value<double> accParent = const Value.absent(),
            Value<int> accType = const Value.absent(),
            Value<int> accLevel = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<int> accCatagory = const Value.absent(),
            Value<int> accCatId = const Value.absent(),
            Value<String> accPhone = const Value.absent(),
            Value<String> address = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<int> accLimit = const Value.absent(),
            Value<int> paymentType = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<bool> accStoped = const Value.absent(),
            Value<bool> newData = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountsTableCompanion(
            id: id,
            accNumber: accNumber,
            accName: accName,
            accParent: accParent,
            accType: accType,
            accLevel: accLevel,
            note: note,
            accCatagory: accCatagory,
            accCatId: accCatId,
            accPhone: accPhone,
            address: address,
            email: email,
            accLimit: accLimit,
            paymentType: paymentType,
            branchId: branchId,
            accStoped: accStoped,
            newData: newData,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required double accNumber,
            required String accName,
            required double accParent,
            required int accType,
            required int accLevel,
            required String note,
            required int accCatagory,
            required int accCatId,
            required String accPhone,
            required String address,
            required String email,
            required int accLimit,
            required int paymentType,
            required int branchId,
            required bool accStoped,
            required bool newData,
            Value<int> rowid = const Value.absent(),
          }) =>
              AccountsTableCompanion.insert(
            id: id,
            accNumber: accNumber,
            accName: accName,
            accParent: accParent,
            accType: accType,
            accLevel: accLevel,
            note: note,
            accCatagory: accCatagory,
            accCatId: accCatId,
            accPhone: accPhone,
            address: address,
            email: email,
            accLimit: accLimit,
            paymentType: paymentType,
            branchId: branchId,
            accStoped: accStoped,
            newData: newData,
            rowid: rowid,
          ),
        ));
}

class $$AccountsTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $AccountsTableTable> {
  $$AccountsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get accNumber => $state.composableBuilder(
      column: $state.table.accNumber,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get accName => $state.composableBuilder(
      column: $state.table.accName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get accParent => $state.composableBuilder(
      column: $state.table.accParent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get accType => $state.composableBuilder(
      column: $state.table.accType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get accLevel => $state.composableBuilder(
      column: $state.table.accLevel,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get accCatagory => $state.composableBuilder(
      column: $state.table.accCatagory,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get accCatId => $state.composableBuilder(
      column: $state.table.accCatId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get accPhone => $state.composableBuilder(
      column: $state.table.accPhone,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get accLimit => $state.composableBuilder(
      column: $state.table.accLimit,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get paymentType => $state.composableBuilder(
      column: $state.table.paymentType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get accStoped => $state.composableBuilder(
      column: $state.table.accStoped,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AccountsTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $AccountsTableTable> {
  $$AccountsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get accNumber => $state.composableBuilder(
      column: $state.table.accNumber,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get accName => $state.composableBuilder(
      column: $state.table.accName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get accParent => $state.composableBuilder(
      column: $state.table.accParent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get accType => $state.composableBuilder(
      column: $state.table.accType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get accLevel => $state.composableBuilder(
      column: $state.table.accLevel,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get accCatagory => $state.composableBuilder(
      column: $state.table.accCatagory,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get accCatId => $state.composableBuilder(
      column: $state.table.accCatId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get accPhone => $state.composableBuilder(
      column: $state.table.accPhone,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get address => $state.composableBuilder(
      column: $state.table.address,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get accLimit => $state.composableBuilder(
      column: $state.table.accLimit,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get paymentType => $state.composableBuilder(
      column: $state.table.paymentType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get accStoped => $state.composableBuilder(
      column: $state.table.accStoped,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get newData => $state.composableBuilder(
      column: $state.table.newData,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$StoperationTableTableCreateCompanionBuilder
    = StoperationTableCompanion Function({
  required int id,
  required int operationId,
  required int operationType,
  required String operationDate,
  required bool operationIn,
  required int storeId,
  required int itemId,
  required int unitId,
  required int quantity,
  required double averageCost,
  required double unitCost,
  required double totalCost,
  required int unitFactor,
  required int qtyConvert,
  required String expirDate,
  required int addBranch,
  Value<int> rowid,
});
typedef $$StoperationTableTableUpdateCompanionBuilder
    = StoperationTableCompanion Function({
  Value<int> id,
  Value<int> operationId,
  Value<int> operationType,
  Value<String> operationDate,
  Value<bool> operationIn,
  Value<int> storeId,
  Value<int> itemId,
  Value<int> unitId,
  Value<int> quantity,
  Value<double> averageCost,
  Value<double> unitCost,
  Value<double> totalCost,
  Value<int> unitFactor,
  Value<int> qtyConvert,
  Value<String> expirDate,
  Value<int> addBranch,
  Value<int> rowid,
});

class $$StoperationTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StoperationTableTable,
    StoperationModel,
    $$StoperationTableTableFilterComposer,
    $$StoperationTableTableOrderingComposer,
    $$StoperationTableTableCreateCompanionBuilder,
    $$StoperationTableTableUpdateCompanionBuilder> {
  $$StoperationTableTableTableManager(
      _$AppDatabase db, $StoperationTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$StoperationTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$StoperationTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> operationId = const Value.absent(),
            Value<int> operationType = const Value.absent(),
            Value<String> operationDate = const Value.absent(),
            Value<bool> operationIn = const Value.absent(),
            Value<int> storeId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> unitId = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<double> averageCost = const Value.absent(),
            Value<double> unitCost = const Value.absent(),
            Value<double> totalCost = const Value.absent(),
            Value<int> unitFactor = const Value.absent(),
            Value<int> qtyConvert = const Value.absent(),
            Value<String> expirDate = const Value.absent(),
            Value<int> addBranch = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              StoperationTableCompanion(
            id: id,
            operationId: operationId,
            operationType: operationType,
            operationDate: operationDate,
            operationIn: operationIn,
            storeId: storeId,
            itemId: itemId,
            unitId: unitId,
            quantity: quantity,
            averageCost: averageCost,
            unitCost: unitCost,
            totalCost: totalCost,
            unitFactor: unitFactor,
            qtyConvert: qtyConvert,
            expirDate: expirDate,
            addBranch: addBranch,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int id,
            required int operationId,
            required int operationType,
            required String operationDate,
            required bool operationIn,
            required int storeId,
            required int itemId,
            required int unitId,
            required int quantity,
            required double averageCost,
            required double unitCost,
            required double totalCost,
            required int unitFactor,
            required int qtyConvert,
            required String expirDate,
            required int addBranch,
            Value<int> rowid = const Value.absent(),
          }) =>
              StoperationTableCompanion.insert(
            id: id,
            operationId: operationId,
            operationType: operationType,
            operationDate: operationDate,
            operationIn: operationIn,
            storeId: storeId,
            itemId: itemId,
            unitId: unitId,
            quantity: quantity,
            averageCost: averageCost,
            unitCost: unitCost,
            totalCost: totalCost,
            unitFactor: unitFactor,
            qtyConvert: qtyConvert,
            expirDate: expirDate,
            addBranch: addBranch,
            rowid: rowid,
          ),
        ));
}

class $$StoperationTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $StoperationTableTable> {
  $$StoperationTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get operationId => $state.composableBuilder(
      column: $state.table.operationId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get operationType => $state.composableBuilder(
      column: $state.table.operationType,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get operationDate => $state.composableBuilder(
      column: $state.table.operationDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get operationIn => $state.composableBuilder(
      column: $state.table.operationIn,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get storeId => $state.composableBuilder(
      column: $state.table.storeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unitId => $state.composableBuilder(
      column: $state.table.unitId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get averageCost => $state.composableBuilder(
      column: $state.table.averageCost,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get unitCost => $state.composableBuilder(
      column: $state.table.unitCost,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get totalCost => $state.composableBuilder(
      column: $state.table.totalCost,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unitFactor => $state.composableBuilder(
      column: $state.table.unitFactor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get qtyConvert => $state.composableBuilder(
      column: $state.table.qtyConvert,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get expirDate => $state.composableBuilder(
      column: $state.table.expirDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get addBranch => $state.composableBuilder(
      column: $state.table.addBranch,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$StoperationTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $StoperationTableTable> {
  $$StoperationTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get operationId => $state.composableBuilder(
      column: $state.table.operationId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get operationType => $state.composableBuilder(
      column: $state.table.operationType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get operationDate => $state.composableBuilder(
      column: $state.table.operationDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get operationIn => $state.composableBuilder(
      column: $state.table.operationIn,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get storeId => $state.composableBuilder(
      column: $state.table.storeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unitId => $state.composableBuilder(
      column: $state.table.unitId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get averageCost => $state.composableBuilder(
      column: $state.table.averageCost,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get unitCost => $state.composableBuilder(
      column: $state.table.unitCost,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get totalCost => $state.composableBuilder(
      column: $state.table.totalCost,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unitFactor => $state.composableBuilder(
      column: $state.table.unitFactor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get qtyConvert => $state.composableBuilder(
      column: $state.table.qtyConvert,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get expirDate => $state.composableBuilder(
      column: $state.table.expirDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get addBranch => $state.composableBuilder(
      column: $state.table.addBranch,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$DocTableTableCreateCompanionBuilder = DocTableCompanion Function({
  Value<int> docId,
  required String docDateTime,
  required int branchId,
  required int storeId,
  required String docNote,
  required String docLocation,
  required int userId,
  required int docStatus,
});
typedef $$DocTableTableUpdateCompanionBuilder = DocTableCompanion Function({
  Value<int> docId,
  Value<String> docDateTime,
  Value<int> branchId,
  Value<int> storeId,
  Value<String> docNote,
  Value<String> docLocation,
  Value<int> userId,
  Value<int> docStatus,
});

class $$DocTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $DocTableTable,
    DocModels,
    $$DocTableTableFilterComposer,
    $$DocTableTableOrderingComposer,
    $$DocTableTableCreateCompanionBuilder,
    $$DocTableTableUpdateCompanionBuilder> {
  $$DocTableTableTableManager(_$AppDatabase db, $DocTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DocTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DocTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> docId = const Value.absent(),
            Value<String> docDateTime = const Value.absent(),
            Value<int> branchId = const Value.absent(),
            Value<int> storeId = const Value.absent(),
            Value<String> docNote = const Value.absent(),
            Value<String> docLocation = const Value.absent(),
            Value<int> userId = const Value.absent(),
            Value<int> docStatus = const Value.absent(),
          }) =>
              DocTableCompanion(
            docId: docId,
            docDateTime: docDateTime,
            branchId: branchId,
            storeId: storeId,
            docNote: docNote,
            docLocation: docLocation,
            userId: userId,
            docStatus: docStatus,
          ),
          createCompanionCallback: ({
            Value<int> docId = const Value.absent(),
            required String docDateTime,
            required int branchId,
            required int storeId,
            required String docNote,
            required String docLocation,
            required int userId,
            required int docStatus,
          }) =>
              DocTableCompanion.insert(
            docId: docId,
            docDateTime: docDateTime,
            branchId: branchId,
            storeId: storeId,
            docNote: docNote,
            docLocation: docLocation,
            userId: userId,
            docStatus: docStatus,
          ),
        ));
}

class $$DocTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $DocTableTable> {
  $$DocTableTableFilterComposer(super.$state);
  ColumnFilters<int> get docId => $state.composableBuilder(
      column: $state.table.docId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get docDateTime => $state.composableBuilder(
      column: $state.table.docDateTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get storeId => $state.composableBuilder(
      column: $state.table.storeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get docNote => $state.composableBuilder(
      column: $state.table.docNote,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get docLocation => $state.composableBuilder(
      column: $state.table.docLocation,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get docStatus => $state.composableBuilder(
      column: $state.table.docStatus,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DocTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $DocTableTable> {
  $$DocTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get docId => $state.composableBuilder(
      column: $state.table.docId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get docDateTime => $state.composableBuilder(
      column: $state.table.docDateTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get branchId => $state.composableBuilder(
      column: $state.table.branchId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get storeId => $state.composableBuilder(
      column: $state.table.storeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get docNote => $state.composableBuilder(
      column: $state.table.docNote,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get docLocation => $state.composableBuilder(
      column: $state.table.docLocation,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get userId => $state.composableBuilder(
      column: $state.table.userId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get docStatus => $state.composableBuilder(
      column: $state.table.docStatus,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$InventoryDocDataTableTableCreateCompanionBuilder
    = InventoryDocDataTableCompanion Function({
  Value<int> id,
  required int docId,
  required int itemId,
  required int itemGroupeId,
  required int unitId,
  required int quantity,
  required String expirDate,
  required String note,
  required int number,
  required int difference,
  required int itemBarcodeId,
});
typedef $$InventoryDocDataTableTableUpdateCompanionBuilder
    = InventoryDocDataTableCompanion Function({
  Value<int> id,
  Value<int> docId,
  Value<int> itemId,
  Value<int> itemGroupeId,
  Value<int> unitId,
  Value<int> quantity,
  Value<String> expirDate,
  Value<String> note,
  Value<int> number,
  Value<int> difference,
  Value<int> itemBarcodeId,
});

class $$InventoryDocDataTableTableTableManager extends RootTableManager<
    _$AppDatabase,
    $InventoryDocDataTableTable,
    InventoryDocumentDataModel,
    $$InventoryDocDataTableTableFilterComposer,
    $$InventoryDocDataTableTableOrderingComposer,
    $$InventoryDocDataTableTableCreateCompanionBuilder,
    $$InventoryDocDataTableTableUpdateCompanionBuilder> {
  $$InventoryDocDataTableTableTableManager(
      _$AppDatabase db, $InventoryDocDataTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$InventoryDocDataTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$InventoryDocDataTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> docId = const Value.absent(),
            Value<int> itemId = const Value.absent(),
            Value<int> itemGroupeId = const Value.absent(),
            Value<int> unitId = const Value.absent(),
            Value<int> quantity = const Value.absent(),
            Value<String> expirDate = const Value.absent(),
            Value<String> note = const Value.absent(),
            Value<int> number = const Value.absent(),
            Value<int> difference = const Value.absent(),
            Value<int> itemBarcodeId = const Value.absent(),
          }) =>
              InventoryDocDataTableCompanion(
            id: id,
            docId: docId,
            itemId: itemId,
            itemGroupeId: itemGroupeId,
            unitId: unitId,
            quantity: quantity,
            expirDate: expirDate,
            note: note,
            number: number,
            difference: difference,
            itemBarcodeId: itemBarcodeId,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int docId,
            required int itemId,
            required int itemGroupeId,
            required int unitId,
            required int quantity,
            required String expirDate,
            required String note,
            required int number,
            required int difference,
            required int itemBarcodeId,
          }) =>
              InventoryDocDataTableCompanion.insert(
            id: id,
            docId: docId,
            itemId: itemId,
            itemGroupeId: itemGroupeId,
            unitId: unitId,
            quantity: quantity,
            expirDate: expirDate,
            note: note,
            number: number,
            difference: difference,
            itemBarcodeId: itemBarcodeId,
          ),
        ));
}

class $$InventoryDocDataTableTableFilterComposer
    extends FilterComposer<_$AppDatabase, $InventoryDocDataTableTable> {
  $$InventoryDocDataTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get docId => $state.composableBuilder(
      column: $state.table.docId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemGroupeId => $state.composableBuilder(
      column: $state.table.itemGroupeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get unitId => $state.composableBuilder(
      column: $state.table.unitId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get expirDate => $state.composableBuilder(
      column: $state.table.expirDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get difference => $state.composableBuilder(
      column: $state.table.difference,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get itemBarcodeId => $state.composableBuilder(
      column: $state.table.itemBarcodeId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$InventoryDocDataTableTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $InventoryDocDataTableTable> {
  $$InventoryDocDataTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get docId => $state.composableBuilder(
      column: $state.table.docId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemId => $state.composableBuilder(
      column: $state.table.itemId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemGroupeId => $state.composableBuilder(
      column: $state.table.itemGroupeId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get unitId => $state.composableBuilder(
      column: $state.table.unitId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantity => $state.composableBuilder(
      column: $state.table.quantity,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get expirDate => $state.composableBuilder(
      column: $state.table.expirDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get note => $state.composableBuilder(
      column: $state.table.note,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get number => $state.composableBuilder(
      column: $state.table.number,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get difference => $state.composableBuilder(
      column: $state.table.difference,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get itemBarcodeId => $state.composableBuilder(
      column: $state.table.itemBarcodeId,
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
  $$SystemDocsTableTableTableManager get systemDocsTable =>
      $$SystemDocsTableTableTableManager(_db, _db.systemDocsTable);
  $$SalesManSettingsTableTableTableManager get salesManSettingsTable =>
      $$SalesManSettingsTableTableTableManager(_db, _db.salesManSettingsTable);
  $$UserStoreTableTableTableManager get userStoreTable =>
      $$UserStoreTableTableTableManager(_db, _db.userStoreTable);
  $$UnitsTableTableTableManager get unitsTable =>
      $$UnitsTableTableTableManager(_db, _db.unitsTable);
  $$ItemGroupsTableTableTableManager get itemGroupsTable =>
      $$ItemGroupsTableTableTableManager(_db, _db.itemGroupsTable);
  $$ItemsTableTableTableManager get itemsTable =>
      $$ItemsTableTableTableManager(_db, _db.itemsTable);
  $$ItemUnitsTableTableTableManager get itemUnitsTable =>
      $$ItemUnitsTableTableTableManager(_db, _db.itemUnitsTable);
  $$ItemAlternativeTableTableTableManager get itemAlternativeTable =>
      $$ItemAlternativeTableTableTableManager(_db, _db.itemAlternativeTable);
  $$ItemBarcodeTableTableTableManager get itemBarcodeTable =>
      $$ItemBarcodeTableTableTableManager(_db, _db.itemBarcodeTable);
  $$AccountsTableTableTableManager get accountsTable =>
      $$AccountsTableTableTableManager(_db, _db.accountsTable);
  $$StoperationTableTableTableManager get stoperationTable =>
      $$StoperationTableTableTableManager(_db, _db.stoperationTable);
  $$DocTableTableTableManager get docTable =>
      $$DocTableTableTableManager(_db, _db.docTable);
  $$InventoryDocDataTableTableTableManager get inventoryDocDataTable =>
      $$InventoryDocDataTableTableTableManager(_db, _db.inventoryDocDataTable);
}
