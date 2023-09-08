class SpacinConfig {
  SpacinConfig({this.baseUnit = 6}) {
    this.xs = baseUnit / 2;
    this.sm = baseUnit / 1;
    this.md = baseUnit.toDouble();
    this.lg = baseUnit * 1;
    this.xl = baseUnit * 2;
    this.$2xl = baseUnit * 3;
    this.$3xl = baseUnit * 4;
    this.$4xl = baseUnit * 5;
    this.$5xl = baseUnit * 6;
    this.$6xl = baseUnit * 7;
    this.$7xl = baseUnit * 8;
    this.$8xl = baseUnit * 9;
  }

  final int baseUnit;
  late final double xs;
  late final double? sm;
  late final double md;
  late final double lg;
  late final double xl;
  late final double $2xl;
  late final double $3xl;
  late final double $4xl;
  late final double $5xl;
  late final double $6xl;
  late final double $7xl;
  late final double $8xl;
}
